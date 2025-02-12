class ReservaFAT {
    fun insertarReserva(usuarioId: Int, claseId: Int): Boolean {
        val reservasActuales = transaction {
            Reservas.select { Reservas.claseId eq claseId }.count()
        }

        val capacidadClase = transaction {
            Clases.select { Clases.id eq claseId }
                .map { it[Clases.capacidad] }
                .firstOrNull()
        } ?: return false

        return if (reservasActuales < capacidadClase) {
            transaction {
                Reservas.insert {
                    it[Reservas.usuarioId] = usuarioId
                    it[Reservas.claseId] = claseId
                }
            }
            true
        } else {
            false
        }
    }
}