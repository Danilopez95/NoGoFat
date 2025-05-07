package BBDD
import java.sql.*

class ConexionBBDD {
    val url = "jdbc:mysql://localhost/supermercado"
    val user = "root"
    val password = ""
   lateinit var conn: Connection



    fun conectar() {
        try {
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver")
            Class.forName("com.mysql.cj.jdbc.Driver")
            conn = DriverManager.getConnection(url, user, password)
        } catch (e: SQLException) {
            e.printStackTrace()
        } catch (e: ClassNotFoundException) {
            e.printStackTrace()
        }
    }

    fun desconectar() {
        try {
            conn.close()
        } catch (e: SQLException) {
            e.printStackTrace()
        }
    }

    fun getStatement(): Statement {
        return conn.createStatement()
    }

    fun getPreparedStatement(sql: String): PreparedStatement {
        return conn.prepareStatement(sql)
    }

}






