"""Testes unitários para a função get_product do módulo app_product."""
import requests

def get_product(product_id):
    """Obtém os detalhes de um produto pelo ID."""
    response = requests.get(f'http://localhost:8000/products/{product_id}', timeout=10)
    if response.status_code == 200:
        return response

def get_product_price(product_id):
    """Obtém o preço de um produto pelo ID."""
    response = requests.get(f'http://localhost:8000/products/{product_id}/price', timeout=10)
    if response.status_code == 200:
        product = response.json()
        return product.get('price')

getProduct = get_product(1)
if getProduct is not None:
    print(getProduct.status_code)
    print(getProduct.text)
else:
    print("Produto não encontrado.")

getPrice = get_product_price(1)
if getPrice is not None:
    print(getPrice)
else:
    print("Preço não disponível.")
    