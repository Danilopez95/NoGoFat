package Presentacion

import BBDD.TablaDAO
import BBDD.TablaDAOImple
import Negocio.Tabla
import javafx.collections.FXCollections
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.fxml.FXMLLoader
import javafx.scene.Parent
import javafx.scene.control.Button
import javafx.scene.control.ComboBox
import javafx.scene.control.TextArea
import javafx.stage.Stage
import javafx.scene.Scene


class VentanaPrincipalController {
    

    @FXML
    private lateinit var comboTablas: ComboBox<Tabla>

    @FXML
    private lateinit var fieldTabla: TextArea

    @FXML
    fun onClearPressed(event: ActionEvent) {
        comboTablas.selectionModel.clearSelection()
        fieldTabla.clear()
    }

    @FXML
    fun onSelectsPressed(event: ActionEvent) {
        try {
            val loader =
                FXMLLoader(
                    SelectsController::class.java.getResource
                        ("/org/example/desktopapp/selects-view.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "Selects alumnos"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun initialize() {
        cargarTablas()
        comboTablas.setOnAction {
            var seleccion = comboTablas.selectionModel.selectedItem
            if (seleccion != null){
                fieldTabla.text = TablaDAOImple.selectAllFrom(seleccion.toString()).joinToString("\n")
            }
        }
    }

    fun cargarTablas() {
        val lista = FXCollections.observableArrayList(TablaDAOImple.getAllTablas())
        comboTablas.items = lista

    }
}
