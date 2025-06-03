import requests
import src.app_product as app

def test_api_return():
    response = app.get_product(1)
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    assert "id" in response.json(), "Expected 'id' in response JSON"
    assert response.json()["id"] == 1, "Expected product ID to be 1"

def test_api_price_return():
    response = app.get_product_price(1)
    assert isinstance(response, (int, float)), "Expected price to be a number"
    assert response > 0, "Expected price to be greater than 0"

def test_get_product_http_error_handling():
    mocker.patch("scr.app_product.requests.get").return_value.status_code = 404
    response = app.get_product(999)
    assert response is None, "Expected response to be None for non-existent product"

def test_get_product_timeout_handling(mocker):
    mocker.patch("scr.app_product.requests.get", side_effect=requests.exceptions.Timeout)
    result = app.get_product(1)
    assert result is None, "Expected result to be None on timeout"