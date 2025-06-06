package Utilities

object SQL_Statements {
    const val SELECT_ALL_TABLES = "SHOW TABLES"


    /* SELECT DANI */

    const val SELECT_ALL_TELEFONOS = "SELECT * FROM TELEFONO"
    const val SELECT_ALL_USUARIOS_RUTINAS = "SELECT U.ID_USUARIO, P.NOMBRE, P.APELLIDO1, R.NOMBRE AS RUTINA      FROM USUARIO U      JOIN PERSONA P ON U.DNI = P.DNI      JOIN USUARIO_RUTINA UR ON U.ID_USUARIO = UR.ID_USUARIO      JOIN RUTINA R ON UR.ID_RUTINA = R.ID_RUTINA;  "

    /**
     * Select Alvaro
     */

    const val SELECT_EMPLEADO_INFO = "SELECT P.NOMBRE, P.APELLIDO1, P.APELLIDO2, P.EMAIL, E.SALARIO, E.FECHA_CONTRATACION  " +
            "    FROM EMPLEADO E " +
            "    JOIN PERSONA P ON E.DNI = P.DNI;  "
    // const val SELECT_ADRIAN = "SELECT"

    const val SELECT_ALL_MONITORES = "SELECT P.NOMBRE, P.APELLIDO1, P.APELLIDO2, M.ID_MONITOR  \n" +
            "    FROM MONITOR M  \n" +
            "    JOIN EMPLEADO E ON M.ID_EMPLEADO = E.ID_EMPLEADO  \n" +
            "    JOIN PERSONA P ON E.DNI = P.DNI; "

    const val SELECT_CLASE_MONITOR = "  SELECT C.NOMBRE AS CLASE, M.ID_MONITOR, P.NOMBRE AS MONITOR  \n" +
            "    FROM MONITOR_CLASE MC \n" +
            "    JOIN MONITOR M ON MC.ID_MONITOR = M.ID_MONITOR  \n" +
            "    JOIN EMPLEADO E ON M.ID_EMPLEADO = E.ID_EMPLEADO  \n" +
            "    JOIN PERSONA P ON E.DNI = P.DNI  \n" +
            "    JOIN CLASE C ON MC.ID_CLASE = C.ID_CLASE; "

    const val SELECT_EJERCICIO_RUTINA = "SELECT R.NOMBRE AS RUTINA, E.NOMBRE AS EJERCICIO, RE.SERIES, RE.REPETICIONES, RE.DIA_SEMANA  \n" +
            "    FROM RUTINA_EJERCICIO RE  \n" +
            "    JOIN RUTINA R ON RE.ID_RUTINA = R.ID_RUTINA  \n" +
            "    JOIN EJERCICIO E ON RE.ID_EJERCICIO = E.ID_EJERCICIO; "

}