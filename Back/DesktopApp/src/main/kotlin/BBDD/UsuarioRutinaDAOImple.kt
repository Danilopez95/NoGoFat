package BBDD

import Negocio.UsuarioRutina
import Utilities.SQL_Statements

object UsuarioRutinaDAOImple : UsuarioRutinaDAO {
    private var conexion = ConexionBBDD()

    override fun getAllUsuarioRutina(): List<UsuarioRutina> {
       conexion.conectar()
        var statement = conexion.getStatement()
        var preparedStatement = statement.executeQuery(SQL_Statements.SELECT_ALL_USUARIOS_RUTINAS)
        val listaUsuarios = mutableListOf<UsuarioRutina>()
        while (preparedStatement.next()) {
            listaUsuarios.add(
                UsuarioRutina(
                    preparedStatement.getString("APELLIDO1"),
                    preparedStatement.getInt("ID_USUARIO"),
                    preparedStatement.getString("NOMBRE"),
                    preparedStatement.getString("RUTINA")
                )
            )
        }
        statement.close()
        conexion.desconectar()
        return listaUsuarios
    }
}