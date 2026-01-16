#!/bin/bash

# 1. Validate Command Line Arguments
if [ $# -lt 1 ]; then
    echo "Usage: $0 <workload_name>"
    echo "Example: $0 movr"
    exit 1
fi

export WORKLOAD=$1
export CERTS=certs
export DB_USER=root
export PORT=26257
export TARGET=127.0.0.1

# 2. Validate WORKLOAD is an allowed Cockroach workload
ALLOWED_WORKLOADS=("bank" "movr" "kv" "tpcc" "ycsb" "intro" "startrek")
VALID=false
for wl in "${ALLOWED_WORKLOADS[@]}"; do
    if [ "$wl" == "$WORKLOAD" ]; then
        VALID=true
        break
    fi
done

if [ "$VALID" = false ]; then
    echo "❌ Error: '$WORKLOAD' is not a valid workload."
    echo "Allowed: ${ALLOWED_WORKLOADS[*]}"
    exit 1
fi

# 3. Setup Connection URL
export DB=${WORKLOAD}
export FULL_URL="postgresql://${DB_USER}@${TARGET}:${PORT}/${DB}?sslmode=verify-full&sslrootcert=${CERTS}/ca.crt&sslcert=${CERTS}/client.${DB_USER}.crt&sslkey=${CERTS}/client.${DB_USER}.key"

echo "🚀 Targeting Workload: ${WORKLOAD} on default port ${PORT}"

# 4. Execute Init (Catching failure if already initialized)
echo "📦 Initializing workload..."
if cockroach workload init ${WORKLOAD} "${FULL_URL}"; then
    echo "✅ Workload initialized successfully."
else
    echo "⚠️  Initialization failed or already exists. Continuing..."
fi

# 5. Execute Run (Background for 19m, skipped for static workloads)
if [[ "$WORKLOAD" != "intro" && "$WORKLOAD" != "startrek" ]]; then
    echo "🏃 Running workload '${WORKLOAD}' in the background..."
    nohup cockroach workload run ${WORKLOAD} --duration=19m "${FULL_URL}" > "${WORKLOAD}.out" 2>&1 &
    echo "📝 Background process started. Logs: ${WORKLOAD}.out"
else
    echo "⏹️  Workload '${WORKLOAD}' is static (init only). No background run triggered."
fi
