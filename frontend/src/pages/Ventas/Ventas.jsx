import React, { useEffect, useState } from 'react';
import { useUser } from '../../context/UserContext';

const Ventas = () => {
  const { user } = useUser();
  const [ventas, setVentas] = useState([]);

  useEffect(() => {
    const token = localStorage.getItem('token');

    if (token && user?.rol === 'EMPLEADO') {
      fetch('http://localhost:8080/api/ventas', {
        headers: {
          Authorization: `Bearer ${token}`
        }
      })
        .then(res => {
          if (!res.ok) throw new Error('Error al obtener las ventas');
          return res.json();
        })
        .then(data => setVentas(data))
        .catch(err => console.error('Error:', err));
    }
  }, [user]);

  return (
    <div className="container mt-4">
      <h2>Panel de Ventas - Empleado</h2>
      {ventas.length === 0 ? (
        <p>No hay ventas registradas.</p>
      ) : (
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>ID Venta</th>
              <th>Cliente</th>
              <th>Fecha</th>
              <th>Total</th>
            </tr>
          </thead>
          <tbody>
            {ventas.map((venta) => (
              <tr key={venta.id}>
                <td>{venta.id}</td>
                <td>{venta.cliente?.nombre || 'Sin nombre'}</td>
                <td>{new Date(venta.fecha).toLocaleString()}</td>
                <td>S/. {venta.total.toFixed(2)}</td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </div>
  );
};

export default Ventas;
