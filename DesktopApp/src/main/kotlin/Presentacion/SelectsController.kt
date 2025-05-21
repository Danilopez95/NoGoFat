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
    fun onPressedAdrian(event: ActionEvent) {
        try {
            val loader =
                FXMLLoader(
                    SelectsController::class.java.getResource
                        ("/org/example/desktopapp/monitor-view.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "Selects datos monitores"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    @FXML
    fun onPressedAguila(event: ActionEvent) {
        try {
            val loader =
                FXMLLoader(
                    SelectsController::class.java.getResource
                        ("/org/example/desktopapp/rutinaEjercicio-view.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "RUTINAS CON SUS EJERCICIOS"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    @FXML
    fun onPressedAlvaro(event: ActionEvent) {
        try {
            val loader =
                FXMLLoader(
                    SelectsController::class.java.getResource
                        ("/org/example/desktopapp/empleadoInfo-view.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "Selects información de los empleados"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
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
        try {
            val loader =
                FXMLLoader(
                    SelectsController::class.java.getResource
                        ("/org/example/desktopapp/claseMonitorInfo-view.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "Selects datos monitores"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }



}
