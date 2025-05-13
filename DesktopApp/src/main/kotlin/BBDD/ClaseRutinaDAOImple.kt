package BBDD

import Negocio.ClaseMonitor
import Negocio.UsuarioRutina
import Utilities.SQL_Statements

object ClaseMonitorDAOImple:ClaseMonitorDAO {
    private val conexion = ConexionBBDD()

    override fun getAllClaseMonitor(): List<ClaseMonitor> {
        conexion.conectar()
        var statement = conexion.getStatement()
        var preparedStatement = statement.executeQuery("")
        val listaMonitor = mutableListOf<ClaseMonitor>()
        while (preparedStatement.next()) {
            listaMonitor.add(
                ClaseMonitor(
                    preparedStatement.getString("CLASE"),
                    preparedStatement.getInt("ID_MONITOR"),
                    preparedStatement.getString("MONITOR"),
                )
            )
        }
        statement.close()
        conexion.desconectar()
        return listaMonitor
    }
}