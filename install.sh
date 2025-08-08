#!/bin/bash

# install.sh
# Script de instalación para ros2_aliases
# Autor: Efrain Reyes Araujo

ALIAS_SCRIPT="ros2_aliases.sh"
TARGET="$HOME/$ALIAS_SCRIPT"
BASHRC="$HOME/.bashrc"
SOURCE_LINE="source ~/$ALIAS_SCRIPT"

echo "Instalando ros2_aliases..."

# Copiar el script al home
if cp "$ALIAS_SCRIPT" "$TARGET"; then
    echo "Copiado $ALIAS_SCRIPT a $TARGET"
else
    echo "Error: No se pudo copiar $ALIAS_SCRIPT a $TARGET"
    exit 1
fi

# Revisar si ya está añadido el source en .bashrc
if grep -Fxq "$SOURCE_LINE" "$BASHRC"; then
    echo "La línea de source ya está en $BASHRC"
else
    echo "" >> "$BASHRC"
    echo "# Cargar alias y funciones ROS 2" >> "$BASHRC"
    echo "$SOURCE_LINE" >> "$BASHRC"
    echo "Añadida línea de source en $BASHRC"
fi

echo "Instalación completada."
echo "Para aplicar los cambios, ejecuta: source ~/.bashrc"
echo "Luego prueba por ejemplo: r2nl o rosbuild <paquete>"