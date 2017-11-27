from app import db

class MainTopic(db.Model):
    id = db.Column(db.Integer, primary_key=True)

class Topic(db.Model):
    id = db.Column(db.Integer, primary_key=True)

class SubTopic(db.Model):
    id = db.Column(db.Integer, primary_key=True)