from fastapi import APIRouter

from app.laboratorio.service import LaboratorioService
from app.laboratorio.dto import LaboratorioCadastrarDTO

router = APIRouter(
    prefix="/laboratorios",
    tags=["Laboratórios"]
)

service = LaboratorioService()


# Laboratório | Listagem
@router.get("/listagem")
def laboratorio_listagem():
    return service.listar()


# Laboratório | Buscar por id
@router.get("/buscar/{id_laboratorio}")
def laboratorio_buscar(id_laboratorio: int):
    return service.buscar_por_id(id_laboratorio)


# Laboratório | Cadastrar
@router.post("/cadastrar")
def laboratorio_cadastrar(
    laboratorio: LaboratorioCadastrarDTO
):
    return service.cadastrar(laboratorio)


# Laboratório | Atualizar
@router.put("/atualizar/{id_laboratorio}")
def laboratorio_atualizar(
    id_laboratorio: int,
    laboratorio: LaboratorioCadastrarDTO
):
    return service.atualizar(
        id_laboratorio,
        laboratorio
    )


# Laboratório | Excluir
@router.delete("/excluir/{id_laboratorio}")
def laboratorio_excluir(id_laboratorio: int):
    return service.excluir(id_laboratorio)