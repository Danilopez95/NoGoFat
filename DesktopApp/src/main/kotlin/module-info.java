module org.example.desktopapp {
    requires javafx.controls;
    requires javafx.fxml;
    requires kotlin.stdlib;
    requires java.sql;


    opens org.example.desktopapp to javafx.fxml;
    exports org.example.desktopapp;

    opens Presentacion to javafx.fxml;
    exports Presentacion;
}