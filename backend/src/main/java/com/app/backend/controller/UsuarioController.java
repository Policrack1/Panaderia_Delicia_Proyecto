package com.app.backend.controller;

import com.app.backend.model.Usuario;
import com.app.backend.repository.UsuarioRepository;
import com.app.backend.config.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JwtUtil jwtUtil;

    // REGISTRO DE USUARIO con contraseña cifrada
    @PostMapping("/registro")
    public ResponseEntity<Usuario> registrar(@RequestBody Usuario usuario) {
        usuario.setPassword(passwordEncoder.encode(usuario.getPassword()));
        Usuario nuevoUsuario = usuarioRepository.save(usuario);
        return ResponseEntity.ok(nuevoUsuario);
    }

    // LOGIN con validación y generación de token JWT
  @PostMapping("/login")
    public ResponseEntity<Map<String, String>> login(@RequestBody Usuario usuario) {
    Optional<Usuario> usuarioDb = usuarioRepository.findByEmail(usuario.getEmail());

    Map<String, String> response = new HashMap<>();

    if (usuarioDb.isPresent() && passwordEncoder.matches(usuario.getPassword(), usuarioDb.get().getPassword())) {
        String token = jwtUtil.generateToken(usuarioDb.get().getEmail(), usuarioDb.get().getRol());

        response.put("mensaje", "Login exitoso");
        response.put("email", usuarioDb.get().getEmail());
        response.put("rol", usuarioDb.get().getRol());
        response.put("token", token);

        return ResponseEntity.ok(response);
    } else {
        response.put("mensaje", "Credenciales incorrectas");
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(response);
    }
    }


    // OBTENER TODOS LOS USUARIOS (solo para pruebas o admin)
    @GetMapping
    public List<Usuario> obtenerUsuarios() {
        return usuarioRepository.findAll();
    }
}
