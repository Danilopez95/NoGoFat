package Presentacion

import BBDD.ClaseMonitorDAOImple
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.TextArea

class ClaseMonitorInfoController {

    @FXML
    private lateinit var btnGetClaseMonitor: Button

    @FXML
    private lateinit var txtClaseMonitorInfo: TextArea

    @FXML
    fun onPressedGetClaseMonitor(event: ActionEvent){
        try {
            var cadenaTexto = ClaseMonitorDAOImple.getAllClaseMonitor().joinToString("\n"){it.toString()}
            if (cadenaTexto.isNotBlank()){
                txtClaseMonitorInfo.text = cadenaTexto
            } else {
                txtClaseMonitorInfo.text = "No se han encontrado Resultado"
            }
        } catch (e: Exception){
            e.printStackTrace()
        }

    }
}