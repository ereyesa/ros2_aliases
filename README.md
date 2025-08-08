# ros2_aliases

Atajos y funciones útiles para trabajar con ROS 2 desde la terminal.

---

## Instalación

1. Clona este repositorio o descarga los archivos:

```bash
git clone https://github.com/ereyesa/ros2_aliases.git
cd ros2_aliases
source install.sh
```

## Alias 
| Alias/Función    | Comando completo                                              | Descripción                                    |
|------------------|--------------------------------------------------------------|------------------------------------------------|
| `r2nl`           | `ros2 node list`                                             | Lista todos los nodos ROS 2 activos             |
| `r2tl`           | `ros2 topic list`                                            | Lista todos los tópicos ROS 2 disponibles       |
| `r2sl`           | `ros2 service list`                                          | Lista servicios ROS 2                            |
| `r2al`           | `ros2 action list`                                           | Lista acciones ROS 2                             |
| `r2ni <nodo>`    | `ros2 node info <nodo>`                                      | Muestra información detallada del nodo          |
| `r2ti <topic>`   | `ros2 topic info <topic>`                                    | Información detallada de un tópico               |
| `r2si <srv>`     | `ros2 service info <srv>`                                    | Información detallada de un servicio             |
| `r2ai <acc>`     | `ros2 action info <acc>`                                     | Información detallada de una acción              |
| `r2te <topic>`   | `ros2 topic echo <topic>`                                    | Muestra los mensajes publicados en tópico       |
| `r2tp`           | `ros2 topic pub`                                             | Publica mensajes en un tópico                     |
| `r2sp`           | `ros2 service call`                                          | Llama un servicio ROS 2                           |
| `r2br`           | `ros2 bag record`                                            | Graba datos en un rosbag                          |
| `r2bi`           | `ros2 bag info`                                              | Muestra información de un rosbag                  |
| `r2bp <bag>`     | `ros2 bag play <bag>`                                        | Reproduce un archivo rosbag                        |
| `cdros`            | `cd ~/ros2_ws/src`                                           | Cambia al directorio raíz del workspace           |
| `rosbuild <pkg>` | `colcon build --packages-select <pkg> && source install/setup.bash` | Compila y fuentea un paquete específico          |
