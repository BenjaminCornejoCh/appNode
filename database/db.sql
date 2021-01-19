CREATE DATABASE database_links

CREATE TABLE users(
    id INT(11) auto_increment NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY(id)
);

CREATE TABLE links(
    id INT(11) auto_increment NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(11) NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT pk_links PRIMARY KEY(id),
    CONSTRAINT fk_links_users FOREIGN KEY(user_id) REFERENCES users(id)
);

--create table secciones(
--    id int(10) auto_increment not null,
--    seccion varchar(30) not null,
--    grado_id int(10),
--    constraint pk_secciones primary key(id),
--    constraint fk_seccion_grado foreign key(grado_id) references grados(id)
--)ENGINE=InnoDb;