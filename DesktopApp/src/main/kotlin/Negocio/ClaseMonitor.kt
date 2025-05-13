package Negocio

class ClaseMonitor {


    var nombreClase:String = ""
    var id_monitor:Int = 0
    var nombreMonitor:String = ""


    constructor()
    constructor(nombreClase: String, id_monitor: Int, nombreMonitor: String) {
        this.nombreClase = nombreClase
        this.id_monitor = id_monitor
        this.nombreMonitor = nombreMonitor
    }

    override fun toString(): String {
        return " La clase ${nombreClase}, la imparte el monitor:  ${id_monitor} -->, $nombreMonitor"
    }

}