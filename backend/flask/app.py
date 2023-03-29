from flask import Flask, request, jsonify
from flask_cors import CORS
import json
import fpcalc

app = Flask(__name__)
CORS(app)

@app.route('/recipe', methods=['GET','POST'])
def index():
    try:
        print(request.data)

        args = request.args
        
        usr_email = args['usr_email']

        recipes = fpcalc.return_recipes(usr_email)
        return recipes
    except:
        return {'status' : 'error'}

@app.route('/add', methods=['GET','POST'])
def add():
    try:

        args = request.args

        data = request.data
        
        usr_email = args['usr_email']

        recipes = fpcalc.add_recipe(usr_email, data)
        recipes = {}
        return recipes
    except Exception as e:
        print(e)
        return {'status' : 'error'}
    
if __name__ == "__main__":
    from waitress import serve
    serve(app, host="0.0.0.0", port=5001)