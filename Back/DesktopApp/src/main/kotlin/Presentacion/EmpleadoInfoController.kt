package Presentacion

import BBDD.EmpleadoDAOImple
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.TextArea

class EmpleadoInfoController {

    @FXML
    private lateinit var btnGetEmpleado: Button

    @FXML
    private lateinit var txtEmpleadoInfo: TextArea

    @FXML
    fun onPressedGetEmpleado(event: ActionEvent) {
        try {
            var texto = EmpleadoDAOImple.getAllEmpleadosInfo().joinToString("\n") { it.toString() }
            if (texto.isNotBlank()){
                txtEmpleadoInfo.text = texto
            }else{
                txtEmpleadoInfo.text = "No hay resultados"
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

}
