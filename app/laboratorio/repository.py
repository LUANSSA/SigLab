from app.database import get_connection


class LaboratorioRepository:

    def listar(self):

        conn = get_connection()
        cursor = conn.cursor(dictionary=True)

        cursor.execute("""
            SELECT *
            FROM laboratorio
        """)

        resultado = cursor.fetchall()

        cursor.close()
        conn.close()

        return resultado


    def buscar_por_id(self, id_laboratorio: int):

        conn = get_connection()
        cursor = conn.cursor(dictionary=True)

        cursor.execute("""
            SELECT *
            FROM laboratorio
            WHERE id_laboratorio = %s
        """, (id_laboratorio,))

        resultado = cursor.fetchone()

        cursor.close()
        conn.close()

        return resultado


    def cadastrar(self, laboratorio):

        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute("""
            INSERT INTO laboratorio(
                id_empresa,
                id_coordenador,
                codigo,
                nome,
                sala
            )
            VALUES(%s,%s,%s,%s,%s)
        """, (
            laboratorio.id_empresa,
            laboratorio.id_coordenador,
            laboratorio.codigo,
            laboratorio.nome,
            laboratorio.sala
        ))

        conn.commit()

        id_laboratorio = cursor.lastrowid

        cursor.close()
        conn.close()

        return id_laboratorio


    def excluir(self, id_laboratorio: int):

        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute("""
            DELETE FROM laboratorio
            WHERE id_laboratorio = %s
        """, (id_laboratorio,))

        conn.commit()

        cursor.close()
        conn.close()