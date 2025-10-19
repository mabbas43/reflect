# Use official Python slim image
FROM python:3.12-slim

# Install UV package manager
RUN pip install uv

# Set work directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies using UV
RUN uv sync --frozen

# Expose FastAPI port
EXPOSE 8000

# Run FastAPI with Uvicorn
CMD ["uv", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
