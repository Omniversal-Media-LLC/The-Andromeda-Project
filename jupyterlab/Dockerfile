FROM jupyter/base-notebook:latest

USER root

# Install additional packages
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set Python version
ENV PYTHON_VERSION=3.9

RUN conda install python=${PYTHON_VERSION} && conda clean -afy

# Switch back to the jovyan user
USER jovyan

# Set the working directory
WORKDIR /home/jovyan/work

# Copy requirements.txt and install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy notebooks to the working directory
COPY notebooks/ ./notebooks/

# Expose the default Jupyter port
EXPOSE 8888

# Command to run JupyterLab
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]