module org.example.desktopapp {
    requires javafx.controls;
    requires javafx.fxml;
    requires kotlin.stdlib;


    opens org.example.desktopapp to javafx.fxml;
    exports org.example.desktopapp;
}