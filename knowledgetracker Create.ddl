CREATE TABLE MainTopic (id int(10) NOT NULL AUTO_INCREMENT, title varchar(50) NOT NULL, total_percentage int(10), PRIMARY KEY (id)) ENGINE=InnoDB;
CREATE TABLE SubTopic (id int(10) NOT NULL AUTO_INCREMENT, title varchar(50) NOT NULL, complete_percentage int(10), topic_id int(10) NOT NULL, PRIMARY KEY (id)) ENGINE=InnoDB;
CREATE TABLE Topic (id int(10) NOT NULL AUTO_INCREMENT, title varchar(50) NOT NULL, total_percentage int(10), maintopic_id int(10) NOT NULL, PRIMARY KEY (id)) ENGINE=InnoDB;
ALTER TABLE SubTopic ADD INDEX FKSubTopic441973 (topic_id), ADD CONSTRAINT FKSubTopic441973 FOREIGN KEY (topic_id) REFERENCES Topic (id);
ALTER TABLE Topic ADD INDEX FKTopic704380 (maintopic_id), ADD CONSTRAINT FKTopic704380 FOREIGN KEY (maintopic_id) REFERENCES MainTopic (id);

