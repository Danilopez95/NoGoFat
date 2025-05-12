package BBDD

import Negocio.UsuarioRutina
import Utilities.SQL_Statements

object UsuarioRutinaDAOImple:UsuarioRutinaDAO {
    private var conexion = ConexionBBDD()
    override fun getAllUsuarioRutina(): List<UsuarioRutina> {
        var statement = conexion.getStatement()
        var preparedStatement = statement.executeQuery(SQL_Statements.SELECT_ALL_USUARIOS_RUTINAS)
        val listaUsuarios = mutableListOf<UsuarioRutina>()
        while (preparedStatement.next()){
            listaUsuarios.add(UsuarioRutina(
                preparedStatement.getInt(0),
                preparedStatement.getString("NOMBRE"),
                preparedStatement.getString("APELLIDO1"),
                preparedStatement.getString("RUTINA")
            ))
            return listaUsuarios
        }
        /**
         *  this.id_usuario = id_usuario
         *         this.nombrePersona = nombrePersona
         *         this.apellido1 = apellido1
         *         this.nombreRutina = nombreRutina
         *     }
         */
    }
}