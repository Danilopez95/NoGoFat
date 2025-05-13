package BBDD

import Negocio.Empleado


interface EmpleadoDAO {
    fun getAllEmpleadosInfo():List<Empleado>

}