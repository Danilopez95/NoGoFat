package Negocio

class EjercicioRutina {
    var rutina: String
    var ejercicio:String
    var series:Int
    var repeticiones:Int
    var dia_semana: String

    constructor(rutina: String, ejercicio: String, series: Int, repeticiones: Int, dia_semana: String) {
        this.rutina = rutina
        this.ejercicio = ejercicio
        this.series = series
        this.repeticiones = repeticiones
        this.dia_semana = dia_semana
    }

    override fun toString(): String {
        return "Tu rutina es:'$rutina', el ejercicio que te toca es:'$ejercicio', tienes que hacer $series series con $repeticiones repeticiones y el dia es '$dia_semana'"
    }


}