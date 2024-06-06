from flask import Flask, request
import logging
from datetime import datetime



app = Flask(__name__)

logging.basicConfig(level=logging.INFO, filename="log/py_log.log",filemode="w",
                    format="%(asctime)s %(levelname)s %(message)s")

@app.route('/')
def hello_world():
    user_ip = request.remote_addr
    access_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    logging.info(f'IP: {user_ip} accessed at {access_time}')
    return 'Hello, World!'



