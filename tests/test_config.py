from config import CHUNK_SIZE, LLM_MODEL

def test_config():
    assert CHUNK_SIZE == 500
    assert isinstance(LLM_MODEL, str)
