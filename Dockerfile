FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy all the contents from your local directory to the container
COPY . .

# Make sure all files in the directory are executable
RUN chmod +x /app/*  # Adjust this if you want to target specific files or directories

# Install required Python packages
RUN pip install -r requirements.txt

# Set the command to run your bot script
CMD ["python3", "sklate.py"]
