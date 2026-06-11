from app.laboratorio.repository import LaboratorioRepository


class LaboratorioService:

    def __init__(self):
        self.repository = LaboratorioRepository()


    def listar(self):
        return self.repository.listar()


    def buscar_por_id(self, id_laboratorio):
        return self.repository.buscar_por_id(id_laboratorio)


    def cadastrar(self, laboratorio):
        return self.repository.cadastrar(laboratorio)


    def excluir(self, id_laboratorio):
        self.repository.excluir(id_laboratorio)