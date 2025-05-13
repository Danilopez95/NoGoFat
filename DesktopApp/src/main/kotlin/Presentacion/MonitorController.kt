package Presentacion

import BBDD.MonitorDAOImple
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.TextArea

class MonitorController {

        @FXML
        private lateinit var btnGetMonitor: Button

        @FXML
        private lateinit var txtMonitorDatos: TextArea

        @FXML
        fun onPressedGetMonitor(event: ActionEvent) {
                var texto = ""
                try {
                        /* var listaUsuarios = UsuarioRutinaDAOImple.getAllUsuarioRutina()
                         listaUsuarios.forEach {
                             listaTexto.add("$it\n")
                         }*/
                        texto = MonitorDAOImple.getAllMonitor().joinToString ("\n"){ it.toString() }

                } catch (e: Exception) {
                        e.printStackTrace()
                }
                if (texto.isNotEmpty()) {
                        txtMonitorDatos.text = texto
                } else {
                       txtMonitorDatos.text  = "No hay ningún resultado"
                }
        }

}

