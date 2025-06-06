package org.example.desktopapp

import javafx.application.Application
import javafx.fxml.FXMLLoader
import javafx.scene.Scene
import javafx.stage.Stage
import Presentacion.*

class HelloApplication : Application() {
    override fun start(stage: Stage) {
        val fxmlLoader = FXMLLoader(HelloApplication::class.java.getResource("ventanaPrincipal-view.fxml"))
        val scene = Scene(fxmlLoader.load(), 600.0, 600.0)
        stage.title = "Tablas"
        stage.scene = scene
        stage.show()
    }
}

fun main() {
    Application.launch(HelloApplication::class.java)
}