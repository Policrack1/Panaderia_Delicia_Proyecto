// src/App.js
import React from 'react';
import { BrowserRouter as Router } from 'react-router-dom';

import { UserProvider } from './context/UserContext';
import { CartProvider } from './context/CartContext';

import Navbar from './components/Navbar';
import Footer from './components/Footer'; 
import SesionChecker from './protected/SesionChecker';

import AppRoutes from './routes/routes';



function App() {
  return (
    <Router>
      <UserProvider>
        <CartProvider>
          <SesionChecker />
          <Navbar />
          <AppRoutes />
           <Footer /> 
        </CartProvider>
      </UserProvider>
    </Router>
  );
}

export default App;
