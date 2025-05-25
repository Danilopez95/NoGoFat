package Presentacion

import BBDD.EjercicioRutinaDAOImple
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.TextArea

class EjercicioRutinaController {
    @FXML
    private lateinit var btnGetEjercicioRutina: Button

    @FXML
    private lateinit var txtEjercicioRutinaInfo: TextArea

    @FXML
    fun onPressedGetEjercicioRutina(event: ActionEvent){
        try {
            var cadenaTexto = EjercicioRutinaDAOImple.getAllEjercicioRutina().joinToString("\n"){it.toString()}
            if (cadenaTexto.isNotBlank()){
                txtEjercicioRutinaInfo.text = cadenaTexto
            } else {
                txtEjercicioRutinaInfo.text = "No se han encontrado Resultado"
            }
        } catch (e: Exception){
            e.printStackTrace()
        }

    }
}