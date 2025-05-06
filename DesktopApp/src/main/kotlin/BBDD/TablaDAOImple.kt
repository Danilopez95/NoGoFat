package BBDD

import Negocio.Tabla
import Utilities.*
object TablaDAOImple:TablaDAO {
    private val conexion = ConexionBD()

    override fun getAllTablas(): List<Tabla> {
        conexion.conectar()
        val ps = conexion.getPreparedStatement(SQL_Statements.SELECT_ALL_TABLES)
        val rs = ps?.executeQuery()
        var tabla: Tabla? = null
        var tablas = mutableListOf<Tabla>()
        if (rs?.next() == true) {
           tabla = Tabla(rs.getString("Nombre"))
        }
        ps?.close()
        conexion.desconectar()
        return tablas
    }
}