import React, { useEffect, useState } from "react";
import axios from "axios";
import { Table, Button, Container } from "react-bootstrap";

const UsuariosPage = () => {
  const [usuarios, setUsuarios] = useState([]);

  useEffect(() => {
    axios
      .get("http://localhost:8080/api/usuarios")
      .then((res) => {
        setUsuarios(res.data);
      })
      .catch((err) => console.error("Error al obtener usuarios:", err));
  }, []);

  return (
    <Container className="mt-4">
      <h2>Gestión de Usuarios</h2>
      {usuarios.length === 0 ? (
        <p>No hay usuarios registrados.</p>
      ) : (
        <Table striped bordered hover responsive>
          <thead>
            <tr>
              <th>ID</th>
              <th>Email</th>
              <th>Rol</th>
            </tr>
          </thead>
          <tbody>
            {usuarios.map((usuario) => (
              <tr key={usuario.id}>
                <td>{usuario.id}</td>
                <td>{usuario.email}</td>
                <td>{usuario.rol}</td>
              </tr>
            ))}
          </tbody>
        </Table>
      )}
    </Container>
  );
};

export default UsuariosPage;
