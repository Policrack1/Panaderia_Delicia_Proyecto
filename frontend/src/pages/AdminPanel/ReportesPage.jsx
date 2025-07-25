import React, { useEffect, useState } from "react";
import axios from "axios";
import { Table, Spinner, Alert, Container } from "react-bootstrap";

const ReportesPage = () => {
  const [ventas, setVentas] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    axios.get("http://localhost:8080/api/ventas")
      .then(res => setVentas(res.data))
      .catch(err => setError(err))
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <Spinner animation="border" className="mt-5" />;
  if (error) return <Alert variant="danger">Error al cargar reportes.</Alert>;

  return (
    <Container className="mt-4">
      <h3 className="mb-4">Reportes de Ventas</h3>
      <Table striped bordered hover>
        <thead>
          <tr>
            <th>ID</th>
            <th>Cliente</th>
            <th>Total</th>
            <th>Fecha</th>
          </tr>
        </thead>
        <tbody>
          {ventas.map(v => (
            <tr key={v.id}>
              <td>{v.id}</td>
              <td>{v.clienteId}</td>
              <td>S/ {v.total}</td>
              <td>{new Date(v.fecha).toLocaleDateString()}</td>
            </tr>
          ))}
        </tbody>
      </Table>
    </Container>
  );
};

export default ReportesPage;
