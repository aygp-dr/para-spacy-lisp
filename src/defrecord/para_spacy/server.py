#!/usr/bin/env python3
"""
WebSocket server that integrates with spaCy for NLP processing.
"""

import asyncio
import websockets
import json
import spacy
import logging
import argparse
import sys

# Set up logging
logging.basicConfig(
    format="%(asctime)s %(message)s",
    level=logging.INFO,
)

# Load spaCy model
nlp = spacy.load("en_core_web_sm")

# Store connected clients
connected = set()


async def register(websocket):
    """Register a new client connection."""
    connected.add(websocket)
    logging.info(f"Client connected. Total connections: {len(connected)}")


async def unregister(websocket):
    """Unregister a client connection."""
    connected.remove(websocket)
    logging.info(f"Client disconnected. Total connections: {len(connected)}")


async def process_text(websocket, message):
    """Process text with spaCy and return analysis."""
    try:
        data = json.loads(message)
        if "type" in data and data["type"] == "analyze":
            text = data.get("text", "")
            logging.info(f"Received text to analyze: '{text[:50]}...' ({len(text)} chars)")
            
            # Process with spaCy
            doc = nlp(text)
            
            # Extract entities
            entities = [
                {"text": ent.text, "label": ent.label_, "start": ent.start_char, "end": ent.end_char}
                for ent in doc.ents
            ]
            
            # Extract sentences
            sentences = [
                {"text": sent.text, "start": sent.start_char, "end": sent.end_char}
                for sent in doc.sents
            ]
            
            # Create response
            response = {
                "type": "analysis",
                "text": text,
                "entities": entities,
                "sentences": sentences,
                "tokens": len(doc)
            }
            
            await websocket.send(json.dumps(response))
    except json.JSONDecodeError:
        logging.error(f"Invalid JSON received: {message}")
    except Exception as e:
        logging.error(f"Error processing message: {e}")


async def handler(websocket):
    """Handle a connection and dispatch to the appropriate functions."""
    await register(websocket)
    try:
        async for message in websocket:
            await process_text(websocket, message)
    except websockets.exceptions.ConnectionClosed:
        pass
    finally:
        await unregister(websocket)


async def start_server(host="localhost", port=8765):
    """Start the websocket server."""
    logging.info(f"Starting NLP websocket server on {host}:{port}")
    async with websockets.serve(handler, host, port):
        await asyncio.Future()  # Run forever


def parse_args():
    """Parse command line arguments."""
    parser = argparse.ArgumentParser(description="Start the spaCy NLP websocket server")
    parser.add_argument("--host", default="localhost", help="Host to bind to")
    parser.add_argument("--port", type=int, default=8765, help="Port to bind to")
    parser.add_argument("--debug", action="store_true", help="Enable debug logging")
    return parser.parse_args()


def main():
    """Main entry point for the server."""
    args = parse_args()
    
    if args.debug:
        logging.getLogger().setLevel(logging.DEBUG)
    
    try:
        asyncio.run(start_server(args.host, args.port))
    except KeyboardInterrupt:
        logging.info("Server stopped by user")
        sys.exit(0)


if __name__ == "__main__":
    main()