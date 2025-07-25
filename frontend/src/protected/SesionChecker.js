import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { Modal, Button } from 'react-bootstrap';
import { useUser } from '../context/UserContext';

const SesionChecker = () => {
  const [mostrarModal, setMostrarModal] = useState(false);
  const { logout } = useUser();
  const navigate = useNavigate();

  useEffect(() => {
    const verificarSesion = () => {
      const token = localStorage.getItem('token');

      if (!token) {
        setMostrarModal(true);
        return;
      }

      fetch('http://localhost:8080/api/usuarios/validar-token', {
        method: 'GET',
        headers: {
          'Authorization': `Bearer ${token}`
        }
      })
        .then(res => {
          if (!res.ok) throw new Error('Sesión expirada');
        })
        .catch(() => setMostrarModal(true));
    };

    const intervalo = setInterval(verificarSesion, 10 * 60 * 1000); // cada 10 minutos

    verificarSesion(); // verificación inicial al cargar

    return () => clearInterval(intervalo);
  }, []);

  const cerrarSesion = () => {
    localStorage.removeItem('token');

    fetch("http://localhost:8080/api/usuarios/logout", {
      method: "POST"
    }).finally(() => {
      logout(); // actualiza estado global
      setMostrarModal(false);
      navigate("/");
    });
  };

  return (
    <Modal show={mostrarModal} backdrop="static" keyboard={false} centered>
      <Modal.Header>
        <Modal.Title>Sesión expirada</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        Tu sesión ha expirado por inactividad. Por favor, vuelve a iniciar sesión.
      </Modal.Body>
      <Modal.Footer>
        <Button variant="primary" onClick={cerrarSesion}>
          Ir al inicio
        </Button>
      </Modal.Footer>
    </Modal>
  );
};

export default SesionChecker;
