import Theme from "../../theme.js";  // Ajusta la ruta si es necesario

const $toggle = document.getElementById('mode-toggle');

export function modeWatcher() {
  if (!$toggle) return;

  $toggle.addEventListener('click', () => {
    Theme.flip();
  });
}

// Ejecuta el watcher automáticamente
modeWatcher();
