from src.app_soma import soma

def test_soma_positive_numbers():
    result = soma(2, 3)
    assert result == 5, f"Expected 5, got {result}"

def test_soma_negative_numbers():
    result = soma(-2, -3)
    assert result == -5, f"Expected -5, got {result}"

def test_soma_mixed_numbers():
    result = soma(-2, 3)
    assert result == 1, f"Expected 1, got {result}"

def test_soma_zero():
    result = soma(0, 0)
    assert result == 0, f"Expected 0, got {result}"

def test_soma_nan():
    result = soma('2', 3)
    assert result == 0, f"Expected 0, got {result}"