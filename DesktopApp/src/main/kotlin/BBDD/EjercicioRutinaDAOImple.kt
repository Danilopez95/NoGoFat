package BBDD

import Negocio.EjercicioRutina
import Utilities.SQL_Statements


object EjercicioRutinaDAOImple: EjercicioRutinaDAO {

    override fun getAllEjercicioRutina(): List<EjercicioRutina> {
        var conexion= ConexionBBDD()
        conexion.conectar()
        var statement=conexion.getStatement()
        var preparedStatement=statement.executeQuery(SQL_Statements.SELECT_EJERCICIO_RUTINA)
        var ejerciciosRutinas=mutableListOf<EjercicioRutina>()
        while (preparedStatement.next()){
            ejerciciosRutinas.add(EjercicioRutina(
                preparedStatement.getString("RUTINA"),
                preparedStatement.getString("EJERCICIO"),
                preparedStatement.getInt("SERIES"),
                preparedStatement.getInt("REPETICIONES"),
                preparedStatement.getString("DIA_SEMANA")
            ))
        }
        preparedStatement.close()
        statement.close()
        conexion.desconectar()
        return ejerciciosRutinas
    }
}