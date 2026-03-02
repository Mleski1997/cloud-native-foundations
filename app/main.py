from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

app = FastAPI(title="Cloud Native Foundations", description="Cloud Native Foundations API")

Instrumentator().instrument(app).expose(app)

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}

@app.get("/health")
def health_check():
    return {"status": "healthy", "version": "1.0.0"}

@app.get("/items")
def get_items():
    return [{
        "id": 1,
        "name": "Item 1",
        "description": "Item 1 description"
    }, {
        "id": 2,
        "name": "Item 2",
        "description": "Item 2 description"
    }, {
        "id": 3,
        "name": "Item 3",
        "description": "Item 3 description"
    }]