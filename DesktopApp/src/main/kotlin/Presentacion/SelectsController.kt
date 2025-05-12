package Presentacion

import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.fxml.FXMLLoader
import javafx.scene.Parent
import javafx.scene.Scene
import javafx.scene.control.Button
import javafx.scene.control.TextArea
import javafx.scene.control.TextField
import javafx.stage.Stage

class SelectsController {

    @FXML
    private lateinit var areaSelect: TextArea

    @FXML
    private lateinit var btnAdrian: Button

    @FXML
    private lateinit var btnAguila: Button

    @FXML
    private lateinit var btnAlvaro: Button

    @FXML
    private lateinit var btnDaniel: Button

    @FXML
    private lateinit var btnManuel: Button

    @FXML
    private lateinit var txtCodigo: TextField

    @FXML
    fun onPressedAdrian(event: ActionEvent) {

    }

    @FXML
    fun onPressedAguila(event: ActionEvent) {

    }

    @FXML
    fun onPressedAlvaro(event: ActionEvent) {

    }

    @FXML
    fun onPressedDaniel(event: ActionEvent) {
        try {
            val loader =
                FXMLLoader(
                    SelectsController::class.java.getResource
                        ("/org/example/desktopapp/usuarioRutina-view.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "Selects rutina de los usuarios"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }

    }

    @FXML
    fun onPressedManuel(event: ActionEvent) {

    }

}
