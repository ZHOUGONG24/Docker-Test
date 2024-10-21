FROM python:3.9.20-slim
WORKDIR /app 
COPY requirements.txt .  
COPY src/ ./src  
ENV PYTHONPATH="${PYTHONPATH}:src" 
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["uvicorn", "controller.memo:app","--port","5000","--reload"]