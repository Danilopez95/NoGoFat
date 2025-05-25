package Negocio

class Tabla(val nombre:String) {
    override fun toString(): String {
        return "${nombre.capitalize()}"
    }
}