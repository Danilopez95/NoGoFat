class ClaseFAT {
    fun getClases(): List<Map<String, Any>> {
        return transaction {
            Clases.selectAll().map {
                mapOf(
                    "id" to it[Clases.id],
                    "nombre" to it[Clases.nombre],
                    "hora" to it[Clases.hora],
                    "fecha" to it[Clases.fecha].toString(),
                    "capacidad" to it[Clases.capacidad]
                )
            }
        }
    }
}