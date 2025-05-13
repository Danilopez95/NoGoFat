/*
package BBDD

import Negocio.Tabla
import Negocio.Telefono
import Utilities.*

object TelefonoDAOImple : TelefonoDAO {
    private val conexion = ConexionBBDD()

    override fun getAllTelefonos(): List<Telefono> {
        conexion.conectar()
        val ps = conexion.getPreparedStatement(SQL_Statements.SELECT_ALL_TELEFONOS)
        val rs = ps.executeQuery()
        var telefono: Telefono? = null
        var telefonos = mutableListOf<Telefono>()


        while (rs?.next() == true) {
            val idtlf = rs.getInt(1, "id_telefono")
            val dni = rs.getString(2, "dni")
            val numero = rs.getInt(3, "numero")
            val tipo = rs.getString(4, "tipo")
            telefonos.add(Telefono(idtlf, dni, numero, tipo))
        }
        ps.close()
        conexion.desconectar()
        return telefonos
    }
}

*/
