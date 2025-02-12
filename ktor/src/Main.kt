import io.ktor.application.*
import io.ktor.features.*
import io.ktor.http.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.server.engine.embeddedServer
import io.ktor.server.netty.Netty
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.transactions.transaction
import org.mindrot.jbcrypt.BCrypt

fun main() {
    Database.connect(
        "jdbc:oracle:thin:@localhost:1521:xe",
        driver = "oracle.jdbc.OracleDriver",
        user = "tu_usuario",
        password = "tu_contraseña"
    )

    val usuarioFAT = UsuarioFAT()
    val claseFAT = ClaseFAT()
    val reservaFAT = ReservaFAT()

    embeddedServer(Netty, port = 8080) {
        install(ContentNegotiation)
        install(CallLogging)
        routing {
            post("/register") {
                val params = call.receiveParameters()
                val nombre = params["nombre"] ?: return@post call.respond(HttpStatusCode.BadRequest)
                val email = params["email"] ?: return@post call.respond(HttpStatusCode.BadRequest)
                val contraseña = BCrypt.hashpw(params["contraseña"], BCrypt.gensalt())

                usuarioFAT.insertUsuario(nombre, email, contraseña)
                call.respond(HttpStatusCode.Created, "Usuario registrado correctamente")
            }

            post("/login") {
                val params = call.receiveParameters()
                val email = params["email"] ?: return@post call.respond(HttpStatusCode.BadRequest)
                val contraseña = params["contraseña"] ?: return@post call.respond(HttpStatusCode.BadRequest)

                val user = usuarioFAT.getUsuario(email)

                if (user != null && BCrypt.checkpw(contraseña, user.second)) {
                    call.respond(hashMapOf("message" to "Login exitoso"))
                } else {
                    call.respond(HttpStatusCode.Unauthorized, "Credenciales incorrectas")
                }
            }

            get("/clases") {
                call.respond(claseFAT.getClases())
            }

            post("/reservar") {
                val params = call.receiveParameters()
                val usuarioId = params["usuario_id"]?.toIntOrNull() ?: return@post call.respond(HttpStatusCode.BadRequest)
                val claseId = params["clase_id"]?.toIntOrNull() ?: return@post call.respond(HttpStatusCode.BadRequest)

                if (reservaFAT.insertarReserva(usuarioId, claseId)) {
                    call.respond(HttpStatusCode.OK, "Reserva confirmada")
                } else {
                    call.respond(HttpStatusCode.BadRequest, "Clase llena")
                }
            }
        }
    }.start(wait = true)
}
