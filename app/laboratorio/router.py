from fastapi import APIRouter

router = APIRouter(
    prefix="/laboratorios",
    tags=["Laboratórios"]
)


# Laboratório | Listagem
@router.get("/listagem")
def laboratorio_listagem():
    return {
        "mensagem": "Listagem de laboratórios"
    }

# Laboratório | Buscar por id
@router.get("/buscar/{id}")
def laboratorio_buscar(id: int):
    return {
        "mensagem": "Listagem de laboratório"
    }

# Laboratório | Cadastrar
@router.post("/cadastrar")
def laboratorio_cadastrar():
    return {
        "mensagem": "Cadastro de laboratório"
    }

# Laboratório | Atualizar
@router.put("/atualizar/{id}")
def laboratorio_atualizar(id: int):
    return {
        "mensagem": "Atualização de laboratório"
    }

# Laboratório | Excluir
@router.delete("/excluir/{id}")
def laboratorio_excluir(id: int):
    return {
        "mensagem": "Excluir laboratório"
    }