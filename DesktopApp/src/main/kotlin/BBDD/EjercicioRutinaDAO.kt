package BBDD

import Negocio.EjercicioRutina

interface EjercicioRutinaDAO {

    fun getAllEjercicioRutina(): List<EjercicioRutina>
}