package com.app.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Table(name = "usuarios_login")
@Getter
@Setter
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String email;
    private String password;

    @Column(name = "fecha_registro")
    private LocalDateTime fechaRegistro;

    private String rol;  // NUEVO campo agregado

    // Puedes agregar un constructor si deseas
    public Usuario() {
        this.fechaRegistro = LocalDateTime.now(); // inicializa al registrar
    }

    // Opcional: Constructor con parámetros
    public Usuario(String email, String password, String rol) {
        this.email = email;
        this.password = password;
        this.rol = rol;
        this.fechaRegistro = LocalDateTime.now();
    }
}
