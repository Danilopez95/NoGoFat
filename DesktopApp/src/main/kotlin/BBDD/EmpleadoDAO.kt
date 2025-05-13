package BBDD

import Negocio.Empleado

import Negocio.Tabla


interface EmpleadoDAO {
    fun getAllEmpleadosInfo():List<Empleado>

}