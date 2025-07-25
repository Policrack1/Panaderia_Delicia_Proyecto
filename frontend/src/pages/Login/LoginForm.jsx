import React, { useState } from 'react';
import { useUser } from '../../context/UserContext';


const LoginForm = ({ onRegisterSwitch, onSuccess }) => {
  const { login } = useUser();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');
    setLoading(true);

    try {
      console.log("Enviando credenciales:", { email, password });

      const res = await fetch(`http://localhost:8080/api/usuarios/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password }),
      });

      console.log("Código de estado:", res.status);

      const text = await res.text();
      console.log("Texto plano recibido:", text);

      if (!res.ok) {
        throw new Error(text || 'Error al iniciar sesión');
      }

      const data = JSON.parse(text);
      console.log("JSON parseado:", data);

      if (!data.token || !data.email || !data.rol) {
        throw new Error("Datos incompletos recibidos del servidor");
      }

      // Guardar en localStorage
      localStorage.setItem("token", data.token);
      localStorage.setItem("email", data.email);
      localStorage.setItem("rol", data.rol);

      // Actualizar el contexto global
      login({
        email: data.email,
        rol: data.rol,
        token: data.token,
      });

      // Acción tras login exitoso
      onSuccess();

    } catch (err) {
      console.error("Error en login:", err);
      setError("Credenciales incorrectas o error de servidor");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="modal-login">
      <h2 style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
        <span role="img" aria-label="lock">🔐</span> Iniciar Sesión
      </h2>

      <form onSubmit={handleSubmit}>
        <input
          type="email"
          placeholder="Correo electrónico"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        /><br />
        <input
          type="password"
          placeholder="Contraseña"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
        /><br />
        {error && <div style={{ color: 'red', marginTop: '0.5rem' }}>{error}</div>}
        <button type="submit" disabled={loading}>
          {loading ? 'Ingresando...' : 'Ingresar'}
        </button>
      </form>

      <p style={{ marginTop: '1rem' }}>
        ¿No tienes cuenta?{' '}
        <button type="button" onClick={onRegisterSwitch}>Registrarse</button>
      </p>
    </div>
  );
};

export default LoginForm;
