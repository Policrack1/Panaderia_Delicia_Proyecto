import { createContext, useContext, useState, useEffect } from 'react';

// Crear el contexto
const UserContext = createContext();

// Hook para consumir el contexto
export const useUser = () => useContext(UserContext);

// Proveedor del contexto
export const UserProvider = ({ children }) => {
  const [user, setUser] = useState(null); // Estado del usuario: { email, rol, token }

  // Al montar la app, recuperar usuario del localStorage
  useEffect(() => {
    const token = localStorage.getItem("token");
    const email = localStorage.getItem("email");
    const rol = localStorage.getItem("rol");

    if (token && email && rol) {
      setUser({ email, rol, token });
    }
  }, []);

  // Función login: guarda datos en estado
  const login = ({ email, rol, token }) => {
    setUser({ email, rol, token });
    localStorage.setItem("token", token);
    localStorage.setItem("email", email);
    localStorage.setItem("rol", rol);
  };

  // Función logout: limpia todo
  const logout = () => {
    setUser(null);
    localStorage.removeItem("token");
    localStorage.removeItem("email");
    localStorage.removeItem("rol");
  };

  return (
    <UserContext.Provider value={{ user, login, logout }}>
      {children}
    </UserContext.Provider>
  );
};
