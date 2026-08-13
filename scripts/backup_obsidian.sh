#!/bin/bash
# Automatización de copias de seguridad de Obsidian
# Fecha de creación: Agosto 2026

# 1. Defino las rutas (Ahora apuntan a carpetas de prueba locales)
# NOTA: Cambiar estas rutas cuando el disco duro esté conectado.
DIRECTORIO_ORIGEN="/home/iker/Documentos/Obsidian Vault/"
DIRECTORIO_DESTINO="/home/iker/Backups/Disco_Externo/Obsidian_Backup/"

# 2. Compruebo si el directorio destino NO existe (! -d)
if [ ! -d "$DIRECTORIO_DESTINO" ]; then
    echo "❌ ERROR: El disco de destino no está conectado o la ruta no existe."
    echo "Ruta no encontrada: $DIRECTORIO_DESTINO"
    echo "Cancelando la copia de seguridad para evitar errores."
    exit 1 # Salgo del script
fi

# 3. Ejecución de la copia de seguridad
echo "✅ Disco detectado. Iniciando sincronización con rsync..."

# Ejecuto rsync
rsync -av --delete "$DIRECTORIO_ORIGEN" "$DIRECTORIO_DESTINO"

echo "🎉 ¡Copia de seguridad completada con éxito!"
exit 0 # Salgo del script
