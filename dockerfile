FROM python:3.9-slim
# Set the working directory inside the container
WORKDIR /app
# Copy the Python script into the container
COPY script.py .
# Copy the data files into the container
COPY data/ /home/data/

CMD ["python", "script.py"]
