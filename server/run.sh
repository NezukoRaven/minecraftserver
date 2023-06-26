#!/bin/bash

# Obtener el ID de ejecución del proceso que utiliza el puerto 25565
PID=$(lsof -t -i:25565)

# Verificar si el proceso está en ejecución y detenerlo si es necesario
if [ -n "$PID" ]; then
    echo "Deteniendo el servidor de Minecraft..."
    kill $PID
    sleep 5  # Esperar unos segundos para asegurarse de que el proceso se detenga por completo
fi

# Ejecutar el servidor de Minecraft
echo "Iniciando el servidor de Minecraft..."
java -Xmx4G -Xms4G -jar server.jar nogui

