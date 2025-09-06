# use official python image
FROM python:3.9-slim

# set working directory inside container
WORKDIR /app

# copy requirements first (for caching)
COPY requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy app code
COPY app/ ./app

# expose port
EXPOSE 5000

# run the app
CMD ["python", "app/main.py"]

