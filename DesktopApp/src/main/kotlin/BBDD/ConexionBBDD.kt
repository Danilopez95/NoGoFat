package BBDD
import java.sql.*

class ConexionBBDD {
    val user = "root"
    val url = "jbcc:mysql://localhost/supermercadi"
    val pass = ""
    var conn: Connection? = null

    fun conectar(){
        Class.forName("com.mysql.cj.jdbc.Driver")
        conn = DriverManager.getConnection(url,user,pass)
    }
}