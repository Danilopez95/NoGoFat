package BBDD

import Negocio.ClaseMonitor
import Utilities.SQL_Statements

object ClaseMonitorDAOImple:ClaseMonitorDAO {
    private var conexion = ConexionBBDD()

    override fun getAllClaseMonitor(): List<ClaseMonitor> {
        conexion.conectar()
        var statement = conexion.getStatement()
        var preparedStatement = statement.executeQuery(SQL_Statements.SELECT_CLASE_MONITOR)
        var listaClaseMonitor = mutableListOf<ClaseMonitor>()
        while (preparedStatement.next()) {
            listaClaseMonitor.add(
                ClaseMonitor(
                    preparedStatement.getString("CLASE"),
                    preparedStatement.getInt("ID_MONITOR"),
                    preparedStatement.getString("MONITOR")
                )
            )
        }
        statement.close()
        conexion.desconectar()
        return listaClaseMonitor
    }
}