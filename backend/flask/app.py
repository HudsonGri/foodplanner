from flask import Flask, request, jsonify
from flask_cors import CORS
import json

app = Flask(__name__)
CORS(app)

@app.route('/', methods=['GET','POST'])
def index():
    return jsonify({'status': 'good'})
    
if __name__ == "__main__":
    from waitress import serve
    serve(app, host="0.0.0.0", port=5000)