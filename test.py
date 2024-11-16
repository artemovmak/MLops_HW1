import gini

def test_gini_index():
    result = gini.gini_index([1, 2, 3, 4, 5])
    assert result == 0.2, f"Expected 0.2, but got {result}"

if __name__ == "__main__":
    test_gini_index()
    print("All tests passed!")