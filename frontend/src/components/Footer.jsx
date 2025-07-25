// src/components/Footer.jsx
import React from 'react';

const Footer = () => {
  return (
    <footer className="bg-gray-900 text-white py-8 mt-10">
      <div className="max-w-7xl mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8">
        {/* Sección izquierda: Sobre la panadería */}
        <div>
          <h3 className="text-xl font-semibold mb-2">Panadería y Pastelería Delicia</h3>
          <p className="text-sm">
            Deliciosos productos horneados con amor. Ingredientes frescos, recetas caseras
            y atención personalizada.
          </p>
        </div>

        {/* Sección central: Enlaces */}
        <div>
          <h4 className="text-lg font-semibold mb-2">Enlaces rápidos</h4>
          <ul className="space-y-2 text-sm">
            <li><a href="/" className="hover:underline">Inicio</a></li>
            <li><a href="/cart" className="hover:underline">Carrito</a></li>
            <li><a href="/login" className="hover:underline">Iniciar sesión</a></li>
            <li><a href="/register" className="hover:underline">Registrarse</a></li>
          </ul>
        </div>

        {/* Sección derecha: Contacto */}
        <div>
          <h4 className="text-lg font-semibold mb-2">Contáctanos</h4>
          <p className="text-sm">Jr. Las Rosas 123 - Huancayo, Perú</p>
          <p className="text-sm">+51 987 654 321</p>
          <p className="text-sm">✉️ contacto@delicia.com</p>
        </div>
      </div>

      <div className="text-center text-sm text-gray-400 mt-8 border-t border-gray-700 pt-4">
        &copy; {new Date().getFullYear()} Delicia. Todos los derechos reservados.
      </div>
    </footer>
  );
};

export default Footer;
