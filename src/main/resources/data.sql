INSERT INTO film(id, title, filmlength, director, genre, trailer, coverimg) VALUES (1, 'Harry Potter', 152, 'Chris Columbus', 'ADVENTURE', 'https://www.youtube.com/embed/L8-e_VdwAME', 'http://www.iwannawatch.to/wp-content/uploads/2011/04/Harry-Potter-and-the-Sorcerers-Stone-2001.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (1, 'He is Harry Potter', 'Daniel', 'MALE', 'Radcliffe', 'http://ia.media-imdb.com/images/M/MV5BMTg4NTExODc3Nl5BMl5BanBnXkFtZTgwODUyMDEzMDE@._V1_UY317_CR11,0,214,317_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (2, 'He is Ron Weasley', 'Rupert', 'MALE', 'Grint', 'http://ia.media-imdb.com/images/M/MV5BMjI3MDA3NjA1N15BMl5BanBnXkFtZTcwMDcyMDYzNw@@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (3, 'She is Hermione Granger', 'Emma', 'FEMALE', 'Watson', 'http://ia.media-imdb.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_UY317_CR21,0,214,317_AL_.jpg');
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (1, 'Harry Potter', 1, 1);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (2, 'Ron Weasley', 1, 2);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (3, 'Hermione Granger', 1, 3);

INSERT INTO film(id, title, filmlength, director, genre, trailer, coverimg) VALUES (2, 'Iron Man', 126, 'Jon Favreau', 'ACTION', 'https://www.youtube.com/embed/8hYlB38asDY', 'http://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SX214_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (4, 'He is Tony Stark', 'Robert', 'MALE', 'Downey Jr.', 'http://ia.media-imdb.com/images/M/MV5BMTAwNjk2NTUyMzleQTJeQWpwZ15BbWU3MDQ2NzQzMTc@._V1_UY317_CR2,0,214,317_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (5, 'He is Jarvis', 'Paul', 'MALE', 'Bettany', 'http://ia.media-imdb.com/images/M/MV5BMjEwODg1MTA5Ml5BMl5BanBnXkFtZTcwNDQwMTQxMw@@._V1_UY317_CR11,0,214,317_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (6, 'She is Petter Potts', 'Gwyneth', 'FEMALE', 'Paltrow', 'http://ia.media-imdb.com/images/M/MV5BNzIxOTQ1NTU1OV5BMl5BanBnXkFtZTcwMTQ4MDY0Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (4, 'Iron Man', 2, 4);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (5, 'Pepper Potts', 2, 5);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (6, 'Pepper', 2, 6);

INSERT INTO film(id, title, filmlength, director, genre, trailer, coverimg) VALUES (3, 'The Purge', 85, 'James DeMonaco', 'HORROR', 'https://www.youtube.com/embed/K0LLaybEuzA', 'http://cdn.bloody-disgusting.com/wp-content/uploads/2013/04/Purge_Quad_4_3_13.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (7, 'He is James Sandin', 'Ethan', 'MALE', 'Hawke', 'http://ia.media-imdb.com/images/M/MV5BMTk4NDMxMTI0MF5BMl5BanBnXkFtZTYwMjE3ODE0._V1_UY317_CR5,0,214,317_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (8, 'He is Charlie Sandin', 'Max', 'MALE', 'Burkholder', 'http://ia.media-imdb.com/images/M/MV5BMTk3MzE2ODA5Ml5BMl5BanBnXkFtZTgwOTUxNTE2NTE@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO actor (id, bio, firstname, gender, lastname, actorimg) VALUES (9, 'She is Mary Sandin', 'Lena', 'FEMALE', 'Headey', 'http://ia.media-imdb.com/images/M/MV5BMzIwMjIwNjg0M15BMl5BanBnXkFtZTgwOTI3MDEzMDE@._V1_UY317_CR14,0,214,317_AL_.jpg');
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (7, 'Iron Man', 3, 7);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (8, 'Pepper Potts', 3, 8);
INSERT INTO film_character (id, name, film_id, actor_id) VALUES (9, 'Pepper', 3, 9);
