#!/bin/bash

# -------- CONFIGURATION --------
MEM_MIN="2G"
MEM_MAX="8G"
JAR_FILE="paper.jar"   # change to your actual Paper JAR
SESSION_NAME="Minecraft Server Data Hackdays"   # for optional screen/tmux support
# --------------------------------

# Check Java installation
if ! command -v java &> /dev/null; then
    echo "Java not found. Please install Java 17 or higher."
    exit 1
fi

# Warn if the JAR file is missing
if [ ! -f "$JAR_FILE" ]; then
    echo "ERROR: JAR file '$JAR_FILE' not found!"
    exit 1
fi

echo "Starting Paper Minecraft Server..."
echo "Using $MEM_MIN - $MEM_MAX of memory"

# Start the server
java -Xms$MEM_MIN -Xmx$MEM_MAX -jar $JAR_FILE nogui
