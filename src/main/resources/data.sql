INSERT INTO film(id, title, filmlength, director, genre, trailer, coverimg) VALUES (1, 'Harry Potter', 98, 'Lars', 'SCIFI', 'https://www.youtube.com/embed/L8-e_VdwAME', 'http://www.iwannawatch.to/wp-content/uploads/2011/04/Harry-Potter-and-the-Sorcerers-Stone-2001.jpg');
INSERT INTO film(id, title, filmlength, director, genre) VALUES (2, 'Iron Man', 87, 'Tony Stark', 'ACTION');
INSERT INTO film(id, title, filmlength, director, genre) VALUES (3, 'The Purge', 103, 'Stijn', 'HORROR');
INSERT INTO actor (id, bio, firstname, gender, lastname) VALUES (1, 'He is just awesome', 'Tony', 'MALE', 'Stark');
INSERT INTO actor (id, bio, firstname, gender, lastname) VALUES (2, 'nah', 'This', 'FEMALE', 'Girl');
INSERT INTO actor (id, bio, firstname, gender, lastname) VALUES (3, 'You shall not pass', 'Gandalf', 'MALE', 'The Grey');
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (1, 'Iron Man', 2, 1);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (2, 'Pepper', 2, 3);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (3, 'Harry Potter', 1, 1);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (4, 'Snape', 1, 2);
