"""Testes unitários para a função get_product_images do módulo app_image."""
import re
import src.app_image as app

def test_get_product_images_returns_list():
    """Verifica se a função retorna uma lista de imagens."""
    images = app.get_product_images(1)
    assert isinstance(images, list), "O retorno não é uma lista."
    assert len(images) >= 1, "Deve retornar no mínimo uma imagem."

def test_get_product_images_format():
    """Verifica se as imagens retornadas estão em formatos válidos."""
    images = app.get_product_images(1)
    for img in images:
        assert img.endswith(('.jpg', '.png', '.webp')), f"Formato inválido: {img}"

def test_get_product_images_filename_format():
    """Verifica se os nomes das imagens seguem o padrão esperado."""
    images = app.get_product_images(1)
    pattern = re.compile(r'.*/(\d+)\.(jpg|png|webp)$', re.IGNORECASE)
    for img in images:
        match = pattern.match(img)
        assert match is not None, f"Nome da imagem inválido: {img}"
