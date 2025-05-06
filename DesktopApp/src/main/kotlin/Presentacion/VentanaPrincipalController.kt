package Presentacion

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
    private lateinit var btnClear: Button

    @FXML
    private lateinit var btnSelects: Button

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
                FXMLLoader(SelectsController::class.java.getResource
                    ("/org/example/desktopapp/selects-view.fxml"))
            val root:Parent = loader.load()
            val stage = Stage()
            stage.title = "Selects alumnos"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }
    fun inicializar(){

    }
<<<<<<< HEAD
    fun cargarTablas(){
            val lista = FXCollections.observableArrayList(TablaDAOImple.getAllTablas())
            comboTablas.items = lista
=======

    fun cargarTablas(){

>>>>>>> 023474607f6e6b9a743418c5c48cd64a9cf5cab8
    }
}
