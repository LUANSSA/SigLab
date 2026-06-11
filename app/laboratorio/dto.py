from pydantic import BaseModel
from typing import Optional


class LaboratorioCadastrarDTO(BaseModel):
    id_empresa: int
    id_coordenador: int

    id_tipo: Optional[int] = None
    id_status: Optional[int] = None
    id_area: Optional[int] = None
    id_bloco: Optional[int] = None
    id_andar: Optional[int] = None

    codigo: str
    nome: str

    sala: str

    ramal: Optional[str] = None
    capacidade: Optional[int] = None

    resumo: Optional[str] = None
    descricao: Optional[str] = None
    observacao: Optional[str] = None

    imagem_capa: Optional[str] = None
    imagem_interna: Optional[str] = None