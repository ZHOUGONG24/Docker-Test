FROM python:3.9.20-slim
WORKDIR /app 
COPY requirements.txt .  
COPY src ./src/
ENV PYTHONPATH="${PYTHONPATH}:/app/src" 
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080", "--reload"] 
