import requests

def get_product(id):
    try:
        response = requests.get(f"https://dummyjson.com/products/{id}")
        if response.status_code == 200:
            return response
        else:
            return None
    except requests.exceptions.RequestException:
        return None

def get_product_price(id):
    response = get_product(id)
    if response:
        return response.json().get("price")
    return None

def get_product_images(id):
    response = get_product(id)
    if response:
        data = response.json()
        return data.get("images", [])
    return []