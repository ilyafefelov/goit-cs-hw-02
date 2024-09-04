FROM python:3.9-slim

# Створення робочої директорії
WORKDIR /app

# Копіювання вимог для встановлення залежностей
COPY requirements.txt requirements.txt

# Встановлення залежностей
RUN pip install --no-cache-dir -r requirements.txt

# Копіювання всіх файлів проекту
COPY . .

# Виставлення порту, на якому запускається FastAPI
EXPOSE 8000

# Запуск сервера FastAPI через uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
