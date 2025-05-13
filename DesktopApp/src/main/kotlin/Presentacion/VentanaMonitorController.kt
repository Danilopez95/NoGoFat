package org.example.desktopapp

import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.Button
import javafx.scene.control.ListView

class VentanaMonitorController {

        @FXML
        private lateinit var btnMonitor: Button

        @FXML
        private lateinit var txtMonitor: ListView<Any>

        @FXML
        fun onPressedMonitor(event: ActionEvent) {

        }

}