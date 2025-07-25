import React from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '../../context/UserContext';
import { Button, Container, Row, Col, Card } from 'react-bootstrap';

const AdminPanel = () => {
  const { user, logout } = useUser();
  const navigate = useNavigate();

  const handleLogout = () => {
    localStorage.removeItem('token');
    logout();
    navigate('/');
  };

  return (
    <Container className="mt-5">
      <h2 className="mb-4 text-center">Panel de Administración</h2>
      <p className="text-center">Bienvenido, {user?.email} ({user?.rol})</p>

      <Row className="g-4">
        <Col md={4}>
          <Card className="text-center">
            <Card.Body>
              <Card.Title>Gestión de Productos</Card.Title>
              <Button variant="primary" onClick={() => navigate('/admin/productos')}>Ir</Button>
            </Card.Body>
          </Card>
        </Col>

        <Col md={4}>
          <Card className="text-center">
            <Card.Body>
              <Card.Title>Gestión de Empleados</Card.Title>
              <Button variant="warning" onClick={() => navigate('/admin/empleados')}>Ir</Button>
            </Card.Body>
          </Card>
        </Col>

        <Col md={4}>
          <Card className="text-center">
            <Card.Body>
              <Card.Title>Reportes y Ventas</Card.Title>
              <Button variant="success" onClick={() => navigate('/admin/reportes')}>Ir</Button>
            </Card.Body>
          </Card>
        </Col>
      </Row>

      <div className="text-center mt-4">
        <Button variant="danger" onClick={handleLogout}>Cerrar sesión</Button>
      </div>
    </Container>
  );
};

export default AdminPanel;
