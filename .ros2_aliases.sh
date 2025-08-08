#!/bin/bash
#
# ros2_aliases.sh
# Atajos y funciones para ROS 2 — listo para source
# Guardar como ~/ros2_aliases.sh y luego: source ~/ros2_aliases.shEfrain
# Elaborado por Efrain Reyes Araujo 
# GitHub ereyesa 

###########
# Config  #
###########
export ROSWS="/home/orintracer1/ros2_ws"

##################
# Alias simples  #
##################
# Listados
alias r2nl='ros2 node list'
alias r2tl='ros2 topic list'
alias r2sl='ros2 service list'
alias r2al='ros2 action list'

# Publicar / Llamadas rápidas (estos aceptan argumentos tras el alias)
alias r2tp='ros2 topic pub'
alias r2sp='ros2 service call'

# Bags (comandos que no validan por estar pensados para pasar args tras el alias)
alias r2br='ros2 bag record'
alias r2bi='ros2 bag info'

# Navegación rápida
alias cdros='cd $ROSWS/src'

#####################
# Funciones con arg #
#####################

# ros2 node info <node>
r2ni() {
    if [ -z "$1" ]; then
        echo "Uso: r2ni <nombre_nodo>"
        return 1
    fi
    ros2 node info "$@"
}

# ros2 topic info <topic>  (antes alias, ahora función con check)
r2ti() {
    if [ -z "$1" ]; then
        echo "Uso: r2ti <nombre_topico>"
        return 1
    fi
    ros2 topic info "$@"
}

# ros2 service info <service>
r2si() {
    if [ -z "$1" ]; then
        echo "Uso: r2si <nombre_servicio>"
        return 1
    fi
    ros2 service info "$@"
}

# ros2 action info <action>
r2ai() {
    if [ -z "$1" ]; then
        echo "Uso: r2ai <nombre_accion>"
        return 1
    fi
    ros2 action info "$@"
}

# ros2 topic echo <topic>
r2te() {
    if [ -z "$1" ]; then
        echo "Uso: r2te <nombre_topico> [opciones]"
        return 1
    fi
    ros2 topic echo "$@"
}

# ros2 bag play <bag>
r2bp() {
    if [ -z "$1" ]; then
        echo "Uso: r2bp <archivo_rosbag> [opciones]"
        return 1
    fi
    ros2 bag play "$@"
}

# Build rápido de un paquete (colcon build + source)
rosbuild() {
    if [ -z "$1" ]; then
        echo "Uso: rosbuild <nombre_paquete>"
        return 1
    fi
    if [ ! -d "$ROSWS" ]; then
        echo "ERROR: ROSWS no existe: $ROSWS"
        return 1
    fi
    cd "$ROSWS" || return 1
    colcon build --packages-select "$1"
    if [ $? -ne 0 ]; then
        echo "Build falló para paquete: $1"
        return 1
    fi
    # source solo si existe el setup
    if [ -f "$ROSWS/install/setup.bash" ]; then
        # shellcheck disable=SC1090
        source "$ROSWS/install/setup.bash"
        echo "Build y source completados para $1"
    else
        echo "Build completado pero no se encontró $ROSWS/install/setup.bash"
    fi
}

###################
# Mensaje final   #
###################
echo "[ROS2 aliases] Atajos cargados. Workspace: $ROSWS"