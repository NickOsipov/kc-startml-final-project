"""
FastAPI app for the final project.
"""

from typing import Dict

from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def healthcheck() -> Dict[str, str]:
    """Healthcheck endpoint"""
    return {"status": "ok"}
