package Negocio

class Monitor {

    var nombre:String = ""
    var apellido1:String = ""
    var apellido2:String = ""
    var id_monitor:Int = 0

    constructor(apellido1: String, apellido2: String, id_monitor: Int, nombre: String) {
        this.apellido1 = apellido1
        this.apellido2 = apellido2
        this.id_monitor = id_monitor
        this.nombre = nombre
    }

    override fun toString(): String {
        return "Monitor(apellido1='$apellido1', nombre='$nombre', apellido2='$apellido2', id_monitor=$id_monitor)"
    }


}