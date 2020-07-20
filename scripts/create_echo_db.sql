create extension if not exists "uuid-ossp";
create table launch
(
    launch_id     uuid default uuid_generate_v4() not null
        constraint launch_pk
            primary key,
    name          char(15)                        not null,
    description   text,
    launch_delay  integer,
    launch_method text[],
    poke_warning  integer                         not null,
    poke_critical integer                         not null
);

alter table launch
    owner to ben;

create table user_roles
(
    role_id     serial not null
        constraint user_roles_pk
            primary key,
    name        text   not null,
    permissions integer[]
);

alter table user_roles
    owner to ben;

create table "user"
(
    user_id               uuid default uuid_generate_v4() not null
        constraint user_pk
            primary key,
    first_name            text,
    last_name             text,
    username              char(15),
    email                 text,
    last_lifesign         text,
    avg_lifesign_interval text,
    role_id               integer
        constraint role_id
            references user_roles,
    password              text                            not null
);

alter table "user"
    owner to ben;

create unique index user_email_uindex
    on "user" (lower(email));

create table poke_job
(
    poke_id       uuid default uuid_generate_v4() not null
        constraint poke_job_pk
            primary key,
    user_id       uuid
        constraint user_id
            references "user",
    type          text,
    status        text,
    creation_date text,
    lifesign_date text
);

alter table poke_job
    owner to ben;

create table archive
(
    archive_id  uuid default uuid_generate_v4() not null
        constraint archive_pk
            primary key,
    name        text                            not null,
    type        text                            not null,
    hash_md5    char(32)                        not null,
    hash_sha1   char(40)                        not null,
    hash_sha256 char(64)                        not null,
    user_id     uuid                            not null
        constraint user_id
            references "user",
    launch_id   uuid                            not null
        constraint launch_id
            references launch,
    source_path text
);

alter table archive
    owner to ben;

create table permissions
(
    permission_id serial not null
        constraint permissions_pk
            primary key,
    name          text,
    description   text
);

alter table permissions
    owner to ben;

