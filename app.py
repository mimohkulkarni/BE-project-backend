import os
from urllib import response
from flask import Flask, jsonify, request
from genarate import generatequery
from flask_cors import CORS
# from werkzeug import secure_filename

app = Flask(__name__)
# CORS(app)
CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.config['UPLOAD_FOLDER'] = ""

@app.route('/', methods = ['POST'])
def home():
    query = request.form.get("query")
    file = request.files['file']
    if query and file:
        try:
            file.save(file.filename)
            data = generatequery(query,file.filename)
            print("results loaded")
            return jsonify({'data': data})
        except Exception as e:
            print(str(e))
            return jsonify({'data': None})
    return jsonify({'data': None})
    

# driver function
if __name__ == '__main__':
    app.run(debug = True)