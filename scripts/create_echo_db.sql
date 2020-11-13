create extension if not exists "uuid-ossp";
create extension if not exists "pgcrypto";

create table if not exists users
(
    user_id uuid default uuid_generate_v4() not null
        constraint user_pk
            primary key,
    first_name text,
    last_name text,
    username char(15),
    email text,
    last_lifesign text,
    avg_lifesign_interval text,
    password text not null,
    roles integer[]
);

alter table users owner to echo;

create unique index if not exists user_email_uindex
    on users (lower(email));

create unique index if not exists users_username_uindex
    on users (username);

create table if not exists poke_job
(
    poke_id uuid default uuid_generate_v4() not null
        constraint poke_job_pk
            primary key,
    user_id uuid
        constraint user_id
            references users,
    type text,
    status text,
    creation_date text,
    lifesign_date text
);

alter table poke_job owner to echo;

create table if not exists launch
(
    launch_id uuid default uuid_generate_v4() not null
        constraint launch_pk
            primary key,
    name char(15) not null,
    description text,
    launch_delay integer,
    launch_method text[],
    poke_warning integer not null,
    poke_critical integer not null
);

alter table launch owner to echo;

create table if not exists archive
(
    archive_id uuid default uuid_generate_v4() not null
        constraint archive_pk
            primary key,
    name text not null,
    type text not null,
    hash_md5 char(32) not null,
    hash_sha1 char(40) not null,
    hash_sha256 char(64) not null,
    user_id uuid not null
        constraint user_id
            references users,
    launch_id uuid not null
        constraint launch_id
            references launch,
    source_path text
);

alter table archive owner to echo;

create table if not exists user_roles
(
    role_id serial not null
        constraint user_roles_pk
            primary key,
    name text not null,
    permissions integer[]
);

alter table user_roles owner to echo;

create table if not exists permissions
(
    permission_id serial not null
        constraint permissions_pk
            primary key,
    name text,
    description text
);

alter table permissions owner to echo;