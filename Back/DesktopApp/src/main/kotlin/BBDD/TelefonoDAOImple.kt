
package BBDD

import Negocio.Tabla
import Negocio.Telefono
import Utilities.*
import java.sql.*

object TelefonoDAOImple : TelefonoDAO {
    private val conexion = ConexionBBDD()

    override fun getAllTelefonos(): List<Telefono> {
        conexion.conectar()
        val ps = conexion.getPreparedStatement(SQL_Statements.SELECT_ALL_TELEFONOS)
        val rs = ps.executeQuery()
        var telefono: Telefono? = null
        var telefonos = mutableListOf<Telefono>()


        while (rs.next()) {
            val idtlf = rs.getInt(1)
            val dni = rs.getString(2)
            val numero = rs.getInt(3)
            val tipo = rs.getString(4)
            telefonos.add(Telefono(idtlf, dni, numero, tipo))
        }
        ps.close()
        conexion.desconectar()
        return telefonos
    }

    override fun selectAllFrom(Telefono: String): List<String> {
        TODO("Not yet implemented")
    }
}


