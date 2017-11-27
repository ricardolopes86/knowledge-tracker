from flask import Flask, render_template, flash, redirect, url_for, session, logging
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config.from_pyfile('config.py')

db = SQLAlchemy(app)

from views import *

if __name__ == '__main__':
    app.run(debug=True)