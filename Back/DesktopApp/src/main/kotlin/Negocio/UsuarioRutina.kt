package Negocio

class UsuarioRutina {
    var id_usuario:Int
    var nombre:String
    var apellido1:String
    var rutina:String

    constructor(apellido1: String, id_usuario: Int, nombre: String, rutina: String) {
        this.apellido1 = apellido1
        this.id_usuario = id_usuario
        this.nombre = nombre
        this.rutina = rutina
    }

    override fun toString(): String {
        return "$id_usuario, $apellido1, $nombre, rutina:$rutina"
    }


    /**
     * UsuarioRutina(
     *                     preparedStatement.getInt("ID_USUARIO"),
     *                     preparedStatement.getString("NOMBRE"),
     *                     preparedStatement.getString("APELLIDO1"),
     *                     preparedStatement.getString("RUTINA")
     */
}