// src/routes/routes.jsx
import React from 'react';
import { Routes, Route } from 'react-router-dom';

// Importaciones de páginas
import Home from '../pages/Home/Home';
import CheckoutForm from '../pages/Checkout/CheckoutForm';
import LoginForm from '../pages/Login/LoginForm';
import RegisterForm from '../pages/Register/RegisterForm';
import Cart from '../components/Cart';
import HistorialCompras from '../pages/HistorialCompras/HistorialCompras';
import CompraExitosaModal from '../components/CompraExitosaModal';
import AdminPanel from '../pages/AdminPanel/AdminPanel';
import Ventas from '../pages/Ventas/Ventas';

// Nuevas páginas de administración
import ProductosPage from '../pages/AdminPanel/ProductosPage';
import EmpleadosPage from '../pages/AdminPanel/EmpleadosPage';
import ReportesPage from '../pages/AdminPanel/ReportesPage';

import PrivateRoute from '../protected/PrivateRoute';

const AppRoutes = () => (
  <Routes>
    {/* Rutas públicas */}
    <Route path="/" element={<Home />} />
    <Route path="/checkout" element={<CheckoutForm />} />
    <Route path="/login" element={<LoginForm />} />
    <Route path="/register" element={<RegisterForm />} />
    <Route path="/cart" element={<Cart />} />
    <Route path="/historial" element={<HistorialCompras />} />
    <Route path="/compra-exitosa" element={<CompraExitosaModal />} />

    {/* Rutas privadas */}
    <Route
      path="/admin"
      element={
        <PrivateRoute allowedRoles={['ADMIN']}>
          <AdminPanel />
        </PrivateRoute>
      }
    />

    {/* Subrutas del panel de administración */}
    <Route
      path="/admin/productos"
      element={
        <PrivateRoute allowedRoles={['ADMIN']}>
          <ProductosPage />
        </PrivateRoute>
      }
    />
    <Route
      path="/admin/empleados"
      element={
        <PrivateRoute allowedRoles={['ADMIN']}>
          <EmpleadosPage />
        </PrivateRoute>
      }
    />
    <Route
      path="/admin/reportes"
      element={
        <PrivateRoute allowedRoles={['ADMIN']}>
          <ReportesPage />
        </PrivateRoute>
      }
    />

    <Route
      path="/ventas"
      element={
        <PrivateRoute allowedRoles={['EMPLEADO']}>
          <Ventas />
        </PrivateRoute>
      }
    />
  </Routes>
);

export default AppRoutes;
