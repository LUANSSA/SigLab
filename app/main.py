from fastapi import FastAPI
from app.laboratorio.router import router as laboratorio_rotas

app = FastAPI()

# Rotas de laboratórios
app.include_router(laboratorio_rotas)