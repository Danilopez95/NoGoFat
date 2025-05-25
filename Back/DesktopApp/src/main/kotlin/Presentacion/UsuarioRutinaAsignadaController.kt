package Presentacion

import BBDD.MonitorDAOImple
import BBDD.UsuarioRutinaDAOImple
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.TextArea

class UsuarioRutinaAsignadaController {

    @FXML
    private lateinit var areaUsuarioRutinaAsignada: TextArea



    @FXML
    fun onPressedVerUsuario(event: ActionEvent) {
        var texto = ""
        try {
           /* var listaUsuarios = UsuarioRutinaDAOImple.getAllUsuarioRutina()
            listaUsuarios.forEach {
                listaTexto.add("$it\n")
            }*/
             texto = UsuarioRutinaDAOImple.getAllUsuarioRutina().joinToString ("\n"){ it.toString() }

        } catch (e: Exception) {
            e.printStackTrace()
        }
        if (texto.isNotBlank()) {
            areaUsuarioRutinaAsignada.text = texto
        } else {
            areaUsuarioRutinaAsignada.text = "No hay ningún resultado"
        }
    }


}
