"""API test."""
from fastapi.testclient import TestClient
from app.main import app


def test_get_item():
    """Test for get item endpoint."""
    with TestClient(app=app, base_url="http://test") as client:
        response = client.get("/items/5678")
    assert response.status_code == 200
