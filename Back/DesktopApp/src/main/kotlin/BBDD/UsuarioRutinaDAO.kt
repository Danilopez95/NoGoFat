package BBDD

import Negocio.Telefono
import Negocio.UsuarioRutina

interface UsuarioRutinaDAO {

    fun getAllUsuarioRutina(): List<UsuarioRutina>

}