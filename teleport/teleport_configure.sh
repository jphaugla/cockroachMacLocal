docker run --hostname localhost --rm \
  --entrypoint=/usr/local/bin/teleport \
  public.ecr.aws/gravitational/teleport-distroless:15.0.1 configure --roles=proxy,auth > ./teleport/config/teleport.yaml
