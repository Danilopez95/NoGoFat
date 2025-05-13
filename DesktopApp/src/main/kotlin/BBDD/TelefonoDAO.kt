package BBDD

import Negocio.Telefono

interface TelefonoDAO {


    fun getAllTelefonos(): List<Telefono>
    fun selectAllFrom(Telefono: String): List<String>

}