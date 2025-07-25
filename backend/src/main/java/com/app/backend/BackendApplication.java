package com.app.backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.sql.DataSource;
import java.sql.Connection;

@SpringBootApplication
@RestController
public class BackendApplication {

    private final DataSource dataSource;

    public BackendApplication(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public static void main(String[] args) {
        SpringApplication.run(BackendApplication.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "Hola mundo desde Spring Boot sin base de datos ni JWT";
    }

    @GetMapping("/test/conexion")
    public String testConexion() {
        try (Connection conn = dataSource.getConnection()) {
            return "✅ Conectado a la base de datos: " + conn.getCatalog();
        } catch (Exception e) {
            return "❌ Error de conexión: " + e.getMessage();
        }
    }
}
