package BBDD

import Negocio.Tabla
import Utilities.*
object TablaDAOImple:TablaDAO {
    private val conexion = ConexionBBDD()

    override fun getAllTablas(): List<Tabla> {
        conexion.conectar()
        val ps = conexion.getPreparedStatement(SQL_Statements.SELECT_ALL_TABLES)
        val rs = ps.executeQuery()
        var tabla: Tabla? = null
        var tablas = mutableListOf<Tabla>()


       while (rs?.next() == true) {
            val nombreTabla = rs.getString(1)
            tablas.add(Tabla(nombreTabla))
        }
        ps.close()
        conexion.desconectar()
        return tablas
    }

    override fun selectAllFrom(tabla: String): List<String> {
        conexion.conectar()
        val query = "SELECT * FROM $tabla"
        var preparedStatement = conexion.getPreparedStatement(query)
        var readyStatement = preparedStatement.executeQuery()

        val metaData = readyStatement.metaData
        val columnCount = metaData.columnCount
        var datos = mutableListOf<String>()
        // Construir encabezados de columnas, sacado del deepseek porque no habia manera
        val headers = (1..columnCount).joinToString(" | ") { metaData.getColumnName(it) }

        datos.add(headers)

        while (readyStatement.next()){
            val row = (1..columnCount).joinToString(" | ") { col ->
                readyStatement.getString(col) ?: "NULL"
            }
            datos.add(row)
        }
        preparedStatement.close()
        readyStatement.close()
        conexion.desconectar()
        return datos
    }
}