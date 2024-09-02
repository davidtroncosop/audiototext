# Usar una imagen base oficial de Python con versión 3.9
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de requerimientos y el código de la app en el contenedor
COPY requirements.txt .
COPY . .

# Instalar las dependencias especificadas en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que Streamlit va a correr (8501 por defecto)
EXPOSE 8501

# Ejecutar la aplicación Streamlit
CMD ["streamlit", "run", "app.py"]
