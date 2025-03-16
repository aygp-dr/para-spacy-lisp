"""
Tests for the NLP server functionality.
"""

import json
import pytest
import asyncio
from unittest.mock import MagicMock, patch
import websockets

# Import the server module
from server.nlp_server import process_text, register, unregister


@pytest.mark.asyncio
async def test_register_client():
    """Test registering a client connection."""
    websocket = MagicMock()
    connected = set()
    
    # Mock the global connected set
    with patch('server.nlp_server.connected', connected):
        await register(websocket)
        assert websocket in connected
        assert len(connected) == 1


@pytest.mark.asyncio
async def test_unregister_client():
    """Test unregistering a client connection."""
    websocket = MagicMock()
    connected = {websocket}
    
    # Mock the global connected set
    with patch('server.nlp_server.connected', connected):
        await unregister(websocket)
        assert websocket not in connected
        assert len(connected) == 0


@pytest.mark.asyncio
async def test_process_text():
    """Test processing text with spaCy."""
    websocket = MagicMock()
    websocket.send = MagicMock(return_value=asyncio.Future())
    websocket.send.return_value.set_result(None)
    
    # Sample message
    message = json.dumps({
        "type": "analyze",
        "text": "John Smith works at Google. He lives in New York."
    })
    
    # Call the function
    await process_text(websocket, message)
    
    # Check that websocket.send was called
    assert websocket.send.called
    
    # Get the sent message
    sent_message = json.loads(websocket.send.call_args[0][0])
    
    # Verify the structure of the response
    assert sent_message["type"] == "analysis"
    assert "text" in sent_message
    assert "entities" in sent_message
    assert "sentences" in sent_message
    assert "tokens" in sent_message
    assert isinstance(sent_message["tokens"], int)


@pytest.mark.asyncio
async def test_process_invalid_json():
    """Test handling invalid JSON."""
    websocket = MagicMock()
    
    # Invalid JSON
    message = "This is not JSON"
    
    # Call the function
    with patch('server.nlp_server.logging.error') as mock_error:
        await process_text(websocket, message)
        
        # Check that error was logged
        assert mock_error.called
        assert "Invalid JSON" in mock_error.call_args[0][0]


@pytest.mark.asyncio
async def test_process_wrong_message_type():
    """Test handling message with wrong type."""
    websocket = MagicMock()
    
    # Message with wrong type
    message = json.dumps({
        "type": "not_analyze",
        "text": "Some text"
    })
    
    # Call the function
    await process_text(websocket, message)
    
    # Check that websocket.send was not called
    assert not websocket.send.called


if __name__ == "__main__":
    pytest.main(["-v", __file__])