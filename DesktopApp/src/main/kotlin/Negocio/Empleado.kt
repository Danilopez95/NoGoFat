package Negocio

import java.util.Date

class Empleado {
    var nombre:String
    var apellidos:String
    var email:String
    var salario:Double
    var fechaContratacion:Date

    constructor(
        apellidos: String,
        email: String,
        fechaContratacion: Date,
        nombre: String,
        salario: Double
    ) {
        this.apellidos = apellidos
        this.email = email
        this.fechaContratacion = fechaContratacion
        this.nombre = nombre
        this.salario = salario
    }

    override fun toString(): String {
        return "$apellidos, $nombre', $email, salario:$salario, " +
                "fecha de contratacion: $fechaContratacion"
    }


}