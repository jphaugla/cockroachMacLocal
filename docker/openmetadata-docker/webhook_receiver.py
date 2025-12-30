from flask import Flask, request, jsonify
import json
import logging

app = Flask(__name__)

# Configure logging to show timestamps and useful info
logging.basicConfig(level=logging.INFO, 
                    format='%(asctime)s - %(levelname)s - %(message)s',
                    datefmt='%Y-%m-%d %H:%M:%S')

@app.route('/webhook/om_alert', methods=['POST'])
def receive_webhook():
    """
    Receives and logs the OpenMetadata Alert payload.
    This function is the demonstration target for the OpenMetadata event bus.
    """
    try:
        # Flask is configured to automatically parse the incoming JSON data
        payload = request.get_json(force=True)
        
        logging.info("--- Received OpenMetadata Alert ---")
        
        # Extract key information from the payload for concise logging
        entity_type = payload.get('entityType', 'N/A')
        entity_name = payload.get('entityFullyQualifiedName', 'N/A')
        event_type = payload.get('eventType', 'N/A')
        
        logging.info(f"Entity Type: {entity_type}")
        logging.info(f"Entity Name: {entity_name}")
        logging.info(f"Event Type: {event_type}")
        
        # Log the full payload. This is what you monitor in the console.
        logging.info("Full Payload:\n" + json.dumps(payload, indent=2))
        logging.info("-----------------------------------")
        
        # A successful webhook receiver must return a 200 OK status
        return jsonify({"status": "success", "message": "Alert received and logged."}), 200

    except Exception as e:
        logging.error(f"Error processing webhook: {e}")
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == '__main__':
    # Flask will run on 0.0.0.0, accessible within the Docker network at port 5000
    app.run(host='0.0.0.0', port=5000, debug=False)
