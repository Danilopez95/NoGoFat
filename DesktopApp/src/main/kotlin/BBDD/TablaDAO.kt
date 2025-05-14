package BBDD
import Negocio.Tabla
interface TablaDAO {
        fun getAllTablas(): List<Tabla>
        fun selectAllFrom(tabla:String): List<String>
}