import React from 'react';
import { useUser } from '../context/UserContext';
import { Navigate } from 'react-router-dom';

const PrivateRoute = ({ children, allowedRoles }) => {
  const { user } = useUser();

  if (!user || !allowedRoles.includes(user.rol)) {
    return <Navigate to="/" />;
  }

  return children;
};

export default PrivateRoute;
