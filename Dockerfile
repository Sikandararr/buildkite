# Use official Python 3.10 image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy only requirements first (for caching layers)
COPY requirements.txt .

# Install required Python packages (using --no-cache-dir to reduce image size)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# (Optional) Ensure necessary scripts have execution permissions
RUN chmod +x sklate.py  # Only if needed

# Default command to run the bot script
CMD ["python3", "sklate.py"]
