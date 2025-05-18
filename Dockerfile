FROM python:3.10-slim

WORKDIR /app

# Install dependencies
RUN apt update && apt install -y git ffmpeg libgl1

# Clone repo (optional if deploying from repo directly)
COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose port
EXPOSE 8188

CMD ["python", "main.py", "--port", "8188", "--listen"]
