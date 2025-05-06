package BBDD
import java.sql.*

<<<<<<< HEAD
import java.sql.*
=======
class ConexionBBDD {
    val user = "root"
    val url = "jbcc:mysql://localhost/supermercado"
    val pass = ""
    var conn: Connection? = null
>>>>>>> 023474607f6e6b9a743418c5c48cd64a9cf5cab8

class ConexionBD {
    val url = "jdbc:mysql://localhost/supermercado"
    val user = "root"
    val password = ""
    var  conn: Connection? = null



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
            conn?.close()
        } catch (e: SQLException) {
            e.printStackTrace()
        }
    }

    fun getStatement(): Statement? {
        return conn?.createStatement()
    }

    fun getPreparedStatement(sql: String): PreparedStatement? {
        return conn?.prepareStatement(sql)
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> 023474607f6e6b9a743418c5c48cd64a9cf5cab8
