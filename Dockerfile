# Use the official Alpine Linux as a base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /streamlit-demo


# Copy only the dependency files to leverage Docker cache
COPY requirements.txt /streamlit-demo/


SHELL ["/bin/bash", "-c"]
# # Install project dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt


# # Copy the whole project
COPY . /streamlit-demo/

# Expose the default Streamlit port
EXPOSE 8501

# # Command to run your application
CMD ["streamlit", "run", "app/Hello.py"]

