class UsuarioFAT {
    fun insertUsuario(nombre: String, email: String, contraseña: String) {
        transaction {
            Usuarios.insert {
                it[Usuarios.nombre] = nombre
                it[Usuarios.email] = email
                it[Usuarios.contraseña] = contraseña
            }
        }
    }

    fun getUsuario(email: String): Pair<Int, String>? {
        return transaction {
            Usuarios.select { Usuarios.email eq email }
                .map { it[Usuarios.id] to it[Usuarios.contraseña] }
                .firstOrNull()
        }
    }
}