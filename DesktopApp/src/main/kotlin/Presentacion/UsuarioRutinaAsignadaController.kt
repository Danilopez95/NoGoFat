package Presentacion

import BBDD.UsuarioRutinaDAOImple
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.TextArea

class UsuarioRutinaAsignadaController {

    @FXML
    private lateinit var areaUsuarioRutinaAsignada: TextArea

    @FXML
    private lateinit var buttonVerUsuarios: Button

    @FXML
    fun onPressedVerUsuario(event: ActionEvent) {

        var listaUsuarios = UsuarioRutinaDAOImple.getAllUsuarioRutina()


    }

}