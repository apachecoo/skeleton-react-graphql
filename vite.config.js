import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()],
  server: {
    host: true, // Habilita que el servidor escuche en todas las interfaces
    port: 3000, // El puerto en el que se ejecutará Vite
  },
});
