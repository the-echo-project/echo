create database echo
	with owner echo;

create table archive
(
	archive_id serial not null
		constraint archive_pk
			primary key,
	name text,
	type text not null,
	hash_md5 char(32) not null,
	hash_sha1 char(40),
	hash_sha256 char(64),
	description text
);