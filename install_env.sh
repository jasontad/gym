# Create an env
conda create --name gym python=3.8

# Active the environment
source ~/anaconda3/etc/profile.d/conda.sh
conda activate gym

# Install dependencies
sudo apt-get install python3-dev python3-pip python3-venv build-essential swig
pip install box2d
pip install gym[box2d]
pip install --no-binary :all: box2d-py
pip install -r requirements.txt