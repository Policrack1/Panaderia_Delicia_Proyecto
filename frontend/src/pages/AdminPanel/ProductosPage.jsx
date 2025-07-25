import React, { useEffect, useState } from "react";
import axios from "axios";
import { Table, Spinner, Alert, Container } from "react-bootstrap";

const ProductosPage = () => {
  const [productos, setProductos] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    axios.get("http://localhost:8080/api/productos") // tu endpoint backend
      .then(res => setProductos(res.data))
      .catch(err => setError(err))
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <Spinner animation="border" className="mt-5" />;
  if (error) return <Alert variant="danger">Error al cargar productos.</Alert>;

  return (
    <Container className="mt-4">
      <h3 className="mb-4">Lista de Productos</h3>
      <Table striped bordered hover>
        <thead>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Stock</th>
          </tr>
        </thead>
        <tbody>
          {productos.map(prod => (
            <tr key={prod.id}>
              <td>{prod.id}</td>
              <td>{prod.nombre}</td>
              <td>S/ {prod.precio}</td>
              <td>{prod.stock}</td>
            </tr>
          ))}
        </tbody>
      </Table>
    </Container>
  );
};

export default ProductosPage;
