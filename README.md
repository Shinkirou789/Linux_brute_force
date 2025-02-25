# Linux_brute_force-bash

Este script en **bash** está diseñado para realizar un ataque de fuerza a la contraseña de un usuario de linux.

## Instalación

Para usar este script, primero debes clonar o descargar el repositorio y darle permisos al script:

```bash
git clone https://github.com/Shinkirou789/Linux_brute_force.git ; cd Linux_brute_force ; chmod 0700 linux_fuerza_bruta.sh
```

No es necesario realizar ninguna instalación adicional.

## Uso

1. **Ejecutar el script**: Debes proporcionar el nombre del usuario al cual quieres hacer el ataque y el diccionario.
   Ejemplo:

   ```bash
   linux_fuerza_bruta.sh shinki /usr/share/seclists/Passwords/Leaked-Databases/rockyou.txt
   ```
