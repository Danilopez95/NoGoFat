package Negocio

import java.util.Date

class Empleado {
    var nombre:String
    var apellido1:String
    var apellido2:String
    var email:String
    var salario:Double
    var fechaContratacion:Date

    constructor(
        apellido1: String,
        apellido2: String,
        email: String,
        fechaContratacion: Date,
        nombre: String,
        salario: Double
    ) {
        this.apellido1 = apellido1
        this.apellido2 = apellido2
        this.email = email
        this.fechaContratacion = fechaContratacion
        this.nombre = nombre
        this.salario = salario
    }


    override fun toString(): String {
        return "$apellido1, $apellido2, $nombre', $email, salario:$salario, " +
                "fecha de contratacion: $fechaContratacion"
    }


}