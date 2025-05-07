package Negocio

import java.sql.Date

class Empleado() {
   var idEmpleado: Int= 0
   var dni: String= ""
   var salario: Double=0.0
  lateinit var fechaContratacion: Date
    override fun toString(): String {
        return ("$idEmpleado, $dni, $salario, $fechaContratacion")
    }
}