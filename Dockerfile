# Шаг 1: Используем базовый образ Python
FROM python:3.8-slim

# Шаг 2: Установка необходимых зависимостей для сборки
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    && apt-get clean

# Шаг 3: Установка pybind11 и необходимых Python-зависимостей
RUN pip install --no-cache-dir setuptools wheel build pybind11

# Шаг 4: Копирование проекта в контейнер
WORKDIR /app
COPY . .

# Шаг 5: Сборка wheel файла
RUN python3 -m build

# Шаг 6: Установка собранного wheel файла
RUN pip install dist/*.whl

# Шаг 7: Установка pytest для выполнения тестов
RUN pip install numpy

# Шаг 8: Выполнение тестов после установки пакета
RUN python test.py

# Шаг 9: Тестируем написанную функцию
CMD ["python", "test.py"]
