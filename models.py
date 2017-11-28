from app import db

class MainTopic(db.Model):
    __tablename__ = 'maintopic'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(30))
    total_percentage = db.Column(db.Integer)
    topics = db.relationship('Topic', backref='maintopic', lazy='dynamic')

class Topic(db.Model):
    __tablename__ = 'topic'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(30))
    total_percentage = db.Column(db.Integer)
    maintopic_id = db.Column(db.Integer, db.ForeignKey('maintopic.id'))
    subtopics = db.relationship('SubTopic', backref='topic', lazy='dynamic')

class SubTopic(db.Model):
    __tablename__ = 'subtopic'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(30))
    complete_percentage = db.Column(db.Integer)
    topic_id = db.Column(db.Integer, db.ForeignKey('topic.id'))