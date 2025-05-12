package Negocio

class UsuarioRutina{

    var id_usuario:Int = 0
    var nombrePersona:String = ""
    var apellido1:String = ""
    var nombreRutina:String = ""

    constructor(id_usuario: Int, nombrePersona: String, apellido1: String, nombreRutina: String) {
        this.id_usuario = id_usuario
        this.nombrePersona = nombrePersona
        this.apellido1 = apellido1
        this.nombreRutina = nombreRutina
    }

    override fun toString(): String {
        return "$id_usuario $nombrePersona $apellido1 con $nombreRutina"
    }


}