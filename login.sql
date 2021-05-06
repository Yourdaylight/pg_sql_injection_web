CREATE TABLE users(
    name            varchar(20)     NOT NULL,
    pwd             varchar(20)     NOT NULL,
    permissions     varchar(20),
    CONSTRAINT pk_users PRIMARY KEY (name)
);
insert into users values ('johndoe', 'pa55word', 'read');
insert into users values ('admin', 'hArd2gu3ss', 'read,write');
insert into users values ('janedoe', 'top5ecret', 'read');

CREATE USER "158.247-app" WITH PASSWORD 'foobar';
GRANT USAGE ON SCHEMA public TO "158.247-app";
GRANT SELECT ON TABLE users TO "158.247-app";
