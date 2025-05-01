package BBDD
import java.sql.*

class ConexionBBDD {
    val user = "root"
    val url = "jbcc:mysql://localhost/supermercado"
    val pass = ""
    var conn: Connection? = null

    fun conectar(){
        Class.forName("com.mysql.cj.jdbc.Driver")
        conn = DriverManager.getConnection(url,user,pass)
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
}