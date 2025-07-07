
#!/bin/bash
sudo apt update -y
sudo apt install python3-pip python3-venv -y
sudo apt install nodejs npm -y

# Flask backend
cd ~/backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
nohup python3 app.py &

# Express frontend
cd ~/frontend
npm install
nohup node server.js &
