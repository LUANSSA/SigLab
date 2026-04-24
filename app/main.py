from fastapi import FastAPI
from fastapi.responses import HTMLResponse

app = FastAPI()

@app.get("/", response_class=HTMLResponse)
def home():
     return  """
            <html>
                <head>
                    <title>SENAI</title>
                </head>
                <body>
                    <h1>Olá, mundo 👋</h1>
                    <p>Meu sistema está rodando! API SENAI rodando 🚀</p>
                </body>
            </html>
    """