package org.example.desktopapp

import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.ComboBox
import javafx.scene.control.TextArea

class HelloController {

    @FXML
    private lateinit var btnClear: Button

    @FXML
    private lateinit var btnSelects: Button

    @FXML
    private lateinit var comboTablas: ComboBox<Any>

    @FXML
    private lateinit var fieldTabla: TextArea

}
