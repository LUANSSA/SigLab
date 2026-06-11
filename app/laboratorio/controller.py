from app.laboratorio.service import LaboratorioService


class LaboratorioController:

    def __init__(self):
        self.service = LaboratorioService()


    def listar(self):
        return self.service.listar()


    def buscar_por_id(self, id_laboratorio):
        return self.service.buscar_por_id(id_laboratorio)


    def cadastrar(self, laboratorio):
        return self.service.cadastrar(laboratorio)


    def excluir(self, id_laboratorio):
        self.service.excluir(id_laboratorio)