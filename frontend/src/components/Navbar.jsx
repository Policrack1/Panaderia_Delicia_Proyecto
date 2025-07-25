import React from 'react';
import { useUser } from '../context/UserContext';
import { Link } from 'react-router-dom';

const Navbar = () => {
  const { user, logout } = useUser();

  return (
    <nav style={{ background: '#d2691e', padding: '10px', color: 'white' }}>
      <span style={{ marginRight: '10px' }}>Bienvenido: {user?.email}</span>

      {user?.rol === 'ADMIN' && (
        <Link to="/admin" style={{ marginRight: '10px', color: 'white' }}>
          Panel Admin
        </Link>
      )}

      {user?.rol === 'EMPLEADO' && (
        <Link to="/ventas" style={{ marginRight: '10px', color: 'white' }}>
          Ventas
        </Link>
      )}

      <button onClick={logout} style={{ marginLeft: '20px' }}>
        Cerrar Sesión
      </button>
    </nav>
  );
};

export default Navbar;
