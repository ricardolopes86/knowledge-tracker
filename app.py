from flask import Flask, render_template, flash, redirect, url_for, session, logging
from flask_mysqldb import MySQL
from wtforms import Form, StringField, TextAreaField, PasswordField, validators

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')

@app.route('/add/maintopic', methods=['GET'])
def add_maintopic():
    return render_template('add_maintopic.html')

@app.route('/add/topic', methods=['GET'])
def add_topic():
    return render_template('add_topic.html')

@app.route('/add/subtopic', methods=['GET'])
def add_subtopic():
    return render_template('add_subtopic.html')

@app.route('/show/progress', methods=['GET'])
def show_progress():
    return render_template('show_progress.html')

if __name__ == '__main__':
    app.run(debug=True)