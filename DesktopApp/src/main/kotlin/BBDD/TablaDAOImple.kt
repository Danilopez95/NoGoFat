package BBDD

import Negocio.Tabla
import Utilities.*
object TablaDAOImple:TablaDAO {
    private val conexion = ConexionBBDD()

    override fun getAllTablas(): List<Tabla> {
        conexion.conectar()
        val ps = conexion.getPreparedStatement(SQL_Statements.SELECT_ALL_TABLES)
        val rs = ps?.executeQuery()
        var tabla: Tabla? = null
        var tablas = mutableListOf<Tabla>()
       while (rs?.next() == true) {
            val nombreTabla = rs.getString(1)
            tablas.add(Tabla(nombreTabla))
        }
        ps?.close()
        conexion.desconectar()
        return tablas
    }
}