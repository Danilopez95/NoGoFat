package BBDD

import Negocio.Monitor
import Utilities.SQL_Statements

object MonitorDAOImple: MonitorDAO {
    private var conexion = ConexionBBDD()

    override fun getAllMonitor(): List<Monitor> {
        conexion.conectar()
        var statement = conexion.getStatement()
        var preparedStatement = statement.executeQuery(SQL_Statements.SELECT_ALL_MONITORES)
        val listaMonitor = mutableListOf<Monitor>()
        while (preparedStatement.next()) {
            listaMonitor.add(
                Monitor(
                    preparedStatement.getString("APELLIDO1"),
                    preparedStatement.getString("APELLIDO2"),
                    preparedStatement.getInt("ID_MONITOR"),
                    preparedStatement.getString("NOMBRE")

                )
            )
        }
        statement.close()
        conexion.desconectar()
        return listaMonitor
    }
}