package Negocio

class Telefono(
    val id_telefono:Int, val dni:String, val numero:Int, val tipo:String){

    override fun toString(): String {
        return "$id_telefono, $dni, $numero, $tipo"
    }
}