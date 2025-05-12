package BBDD

import Negocio.Empleado
import Utilities.SQL_Statements

object EmpleadoDAOImple : EmpleadoDAO {
    private var conexion = ConexionBBDD()
    override fun getAllEmpleadosInfo(): List<Empleado> {
        conexion.conectar()
        var statement = conexion.getStatement()
        var preparedStatement = statement.executeQuery(SQL_Statements.SELECT_EMPLEADO_INFO)
        var listaEmpleado = mutableListOf<Empleado>()

        while (preparedStatement.next()) {
            var apellido = mutableListOf(
                preparedStatement.getString("APELLIDO1"),
                preparedStatement.getString("APELLIDO2")
            )
            var apellidos = apellido.joinToString { "\t" }

            listaEmpleado.add(
                Empleado(
                    apellidos,
                    preparedStatement.getString("EMAIL"),
                    preparedStatement.getDate("FECHA_CONTRATACION"),
                    preparedStatement.getString("NOMBRE"),
                    preparedStatement.getDouble("SALARIO")
                )
            )
        }
        statement.close()
        preparedStatement.close()
        conexion.desconectar()
        return listaEmpleado
    }
}