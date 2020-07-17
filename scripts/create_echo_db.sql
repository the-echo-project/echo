create database echo
	with owner echo;

-- Unknown how to generate base type type

comment on type pg_catalog.aclitem is 'access control list';

-- Unknown how to generate base type type

comment on type pg_catalog.bit is 'fixed-length bit string';

-- Unknown how to generate base type type

comment on type pg_catalog.bool is 'boolean, ''true''/''false''';

-- Unknown how to generate base type type

comment on type pg_catalog.box is 'geometric box ''(lower left,upper right)''';

-- Unknown how to generate base type type

comment on type pg_catalog.bpchar is 'char(length), blank-padded string, fixed storage length';

-- Unknown how to generate base type type

comment on type pg_catalog.bytea is 'variable-length string, binary values escaped';

create domain information_schema.cardinal_number as integer
	constraint cardinal_number_domain_check check (VALUE >= 0);

-- Unknown how to generate base type type

comment on type pg_catalog.char is 'single character';

create domain information_schema.character_data as varchar;

-- Unknown how to generate base type type

comment on type pg_catalog.cid is 'command identifier type, sequence in transaction id';

-- Unknown how to generate base type type

comment on type pg_catalog.cidr is 'network IP address/netmask, network address';

-- Unknown how to generate base type type

comment on type pg_catalog.circle is 'geometric circle ''(center,radius)''';

-- Unknown how to generate base type type

comment on type pg_catalog.date is 'date';

-- Unknown how to generate base type type

comment on type pg_catalog.float4 is 'single-precision floating point number, 4-byte storage';

-- Unknown how to generate base type type

comment on type pg_catalog.float8 is 'double-precision floating point number, 8-byte storage';

-- Unknown how to generate base type type

comment on type pg_catalog.gtsvector is 'GiST index internal text representation for text search';

-- Unknown how to generate base type type

comment on type pg_catalog.inet is 'IP address/netmask, host address, netmask optional';

-- Unknown how to generate base type type

comment on type pg_catalog.int2 is '-32 thousand to 32 thousand, 2-byte storage';

-- Unknown how to generate base type type

comment on type pg_catalog.int4 is '-2 billion to 2 billion integer, 4-byte storage';

-- Unknown how to generate base type type

comment on type pg_catalog.int8 is '~18 digit integer, 8-byte storage';

-- Unknown how to generate base type type

comment on type pg_catalog.interval is '@ <number> <units>, time interval';

-- Unknown how to generate base type type

comment on type pg_catalog.json is 'JSON stored as text';

-- Unknown how to generate base type type

comment on type pg_catalog.jsonb is 'Binary JSON';

-- Unknown how to generate base type type

comment on type pg_catalog.jsonpath is 'JSON path';

-- Unknown how to generate base type type

comment on type pg_catalog.line is 'geometric line';

-- Unknown how to generate base type type

comment on type pg_catalog.lseg is 'geometric line segment ''(pt1,pt2)''';

-- Unknown how to generate base type type

comment on type pg_catalog.macaddr is 'XX:XX:XX:XX:XX:XX, MAC address';

-- Unknown how to generate base type type

comment on type pg_catalog.macaddr8 is 'XX:XX:XX:XX:XX:XX:XX:XX, MAC address';

-- Unknown how to generate base type type

comment on type pg_catalog.money is 'monetary amounts, $d,ddd.cc';

-- Unknown how to generate base type type

comment on type pg_catalog.name is '63-byte type for storing system identifiers';

-- Unknown how to generate base type type

comment on type pg_catalog.numeric is 'numeric(precision, decimal), arbitrary precision number';

-- Unknown how to generate base type type

comment on type pg_catalog.oid is 'object identifier(oid), maximum 4 billion';

-- Unknown how to generate base type type

comment on type pg_catalog.path is 'geometric path ''(pt1,...)''';

-- Unknown how to generate base type type

comment on type pg_catalog.pg_dependencies is 'multivariate dependencies';

-- Unknown how to generate base type type

comment on type pg_catalog.pg_lsn is 'PostgreSQL LSN datatype';

-- Unknown how to generate base type type

comment on type pg_catalog.pg_mcv_list is 'multivariate MCV list';

-- Unknown how to generate base type type

comment on type pg_catalog.pg_ndistinct is 'multivariate ndistinct coefficients';

-- Unknown how to generate base type type

comment on type pg_catalog.pg_node_tree is 'string representing an internal node tree';

-- Unknown how to generate base type type

comment on type pg_catalog.point is 'geometric point ''(x, y)''';

-- Unknown how to generate base type type

comment on type pg_catalog.polygon is 'geometric polygon ''(pt1,...)''';

-- Unknown how to generate base type type

comment on type pg_catalog.refcursor is 'reference to cursor (portal name)';

-- Unknown how to generate base type type

comment on type pg_catalog.regclass is 'registered class';

-- Unknown how to generate base type type

comment on type pg_catalog.regconfig is 'registered text search configuration';

-- Unknown how to generate base type type

comment on type pg_catalog.regdictionary is 'registered text search dictionary';

-- Unknown how to generate base type type

comment on type pg_catalog.regnamespace is 'registered namespace';

-- Unknown how to generate base type type

comment on type pg_catalog.regoper is 'registered operator';

-- Unknown how to generate base type type

comment on type pg_catalog.regoperator is 'registered operator (with args)';

-- Unknown how to generate base type type

comment on type pg_catalog.regproc is 'registered procedure';

-- Unknown how to generate base type type

comment on type pg_catalog.regprocedure is 'registered procedure (with args)';

-- Unknown how to generate base type type

comment on type pg_catalog.regrole is 'registered role';

-- Unknown how to generate base type type

comment on type pg_catalog.regtype is 'registered type';

create domain information_schema.sql_identifier as name;

-- Unknown how to generate base type type

comment on type pg_catalog.text is 'variable-length string, no limit specified';

-- Unknown how to generate base type type

comment on type pg_catalog.tid is '(block, offset), physical location of tuple';

-- Unknown how to generate base type type

comment on type pg_catalog.time is 'time of day';

create domain information_schema.time_stamp as timestamp(2) with time zone
	default CURRENT_TIMESTAMP(2);

-- Unknown how to generate base type type

comment on type pg_catalog.timestamp is 'date and time';

-- Unknown how to generate base type type

comment on type pg_catalog.timestamptz is 'date and time with time zone';

-- Unknown how to generate base type type

comment on type pg_catalog.timetz is 'time of day with time zone';

-- Unknown how to generate base type type

comment on type pg_catalog.tsquery is 'query representation for text search';

-- Unknown how to generate base type type

comment on type pg_catalog.tsvector is 'text representation for text search';

-- Unknown how to generate base type type

comment on type pg_catalog.txid_snapshot is 'txid snapshot';

-- Unknown how to generate base type type

comment on type pg_catalog.uuid is 'UUID datatype';

-- Unknown how to generate base type type

comment on type pg_catalog.varbit is 'variable-length bit string';

-- Unknown how to generate base type type

comment on type pg_catalog.varchar is 'varchar(length), non-blank-padded string, variable storage length';

-- Unknown how to generate base type type

comment on type pg_catalog.xid is 'transaction id';

-- Unknown how to generate base type type

comment on type pg_catalog.xml is 'XML content';

create domain information_schema.yes_or_no as varchar(3)
	constraint yes_or_no_check check ((VALUE)::text = ANY ((ARRAY['YES'::character varying, 'NO'::character varying])::text[]));

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

comment on table archive is 'information for data archives';

alter table archive owner to ben;

create unique index archive_archive_id_uindex
	on archive (archive_id);

create table pg_catalog.pg_aggregate
(
	aggcombinefn regproc not null,
	aggdeserialfn regproc not null,
	aggfinalextra boolean not null,
	aggfinalfn regproc not null,
	aggfinalmodify "char" not null,
	aggfnoid regproc not null,
	agginitval text,
	aggkind "char" not null,
	aggmfinalextra boolean not null,
	aggmfinalfn regproc not null,
	aggmfinalmodify "char" not null,
	aggminitval text,
	aggminvtransfn regproc not null,
	aggmtransfn regproc not null,
	aggmtransspace integer not null,
	aggmtranstype oid not null,
	aggnumdirectargs smallint not null,
	aggserialfn regproc not null,
	aggsortop oid not null,
	aggtransfn regproc not null,
	aggtransspace integer not null,
	aggtranstype oid not null
);

create unique index pg_aggregate_fnoid_index
	on pg_catalog.pg_aggregate (aggfnoid);

create table pg_catalog.pg_am
(
	amhandler regproc not null,
	amname information_schema.sql_identifier not null,
	amtype "char" not null,
	oid oid not null
);

create unique index pg_am_name_index
	on pg_catalog.pg_am (amname);

create unique index pg_am_oid_index
	on pg_catalog.pg_am (oid);

create table pg_catalog.pg_amop
(
	amopfamily oid not null,
	amoplefttype oid not null,
	amopmethod oid not null,
	amopopr oid not null,
	amoppurpose "char" not null,
	amoprighttype oid not null,
	amopsortfamily oid not null,
	amopstrategy smallint not null,
	oid oid not null
);

create unique index pg_amop_fam_strat_index
	on pg_catalog.pg_amop (amopfamily, amoplefttype, amoprighttype, amopstrategy);

create unique index pg_amop_oid_index
	on pg_catalog.pg_amop (oid);

create unique index pg_amop_opr_fam_index
	on pg_catalog.pg_amop (amopopr, amoppurpose, amopfamily);

create table pg_catalog.pg_amproc
(
	amproc regproc not null,
	amprocfamily oid not null,
	amproclefttype oid not null,
	amprocnum smallint not null,
	amprocrighttype oid not null,
	oid oid not null
);

create unique index pg_amproc_fam_proc_index
	on pg_catalog.pg_amproc (amprocfamily, amproclefttype, amprocrighttype, amprocnum);

create unique index pg_amproc_oid_index
	on pg_catalog.pg_amproc (oid);

create table pg_catalog.pg_attrdef
(
	adbin pg_node_tree not null,
	adnum smallint not null,
	adrelid oid not null,
	oid oid not null
);

create unique index pg_attrdef_adrelid_adnum_index
	on pg_catalog.pg_attrdef (adrelid, adnum);

create unique index pg_attrdef_oid_index
	on pg_catalog.pg_attrdef (oid);

create table pg_catalog.pg_attribute
(
	attacl aclitem[],
	attalign "char" not null,
	attbyval boolean not null,
	attcacheoff integer not null,
	attcollation oid not null,
	attfdwoptions text[],
	attgenerated "char" not null,
	atthasdef boolean not null,
	atthasmissing boolean not null,
	attidentity "char" not null,
	attinhcount integer not null,
	attisdropped boolean not null,
	attislocal boolean not null,
	attlen smallint not null,
	attmissingval anyarray,
	attname information_schema.sql_identifier not null,
	attndims integer not null,
	attnotnull boolean not null,
	attnum smallint not null,
	attoptions text[],
	attrelid oid not null,
	attstattarget integer not null,
	attstorage "char" not null,
	atttypid oid not null,
	atttypmod integer not null
);

create unique index pg_attribute_relid_attnam_index
	on pg_catalog.pg_attribute (attrelid, attname);

create unique index pg_attribute_relid_attnum_index
	on pg_catalog.pg_attribute (attrelid, attnum);

create table pg_catalog.pg_auth_members
(
	admin_option boolean not null,
	grantor oid not null,
	member oid not null,
	roleid oid not null
);

create unique index pg_auth_members_member_role_index
	on pg_catalog.pg_auth_members (member, roleid);

create unique index pg_auth_members_role_member_index
	on pg_catalog.pg_auth_members (roleid, member);

create table pg_catalog.pg_authid
(
	oid oid not null,
	rolbypassrls boolean not null,
	rolcanlogin boolean not null,
	rolconnlimit integer not null,
	rolcreatedb boolean not null,
	rolcreaterole boolean not null,
	rolinherit boolean not null,
	rolname information_schema.sql_identifier not null,
	rolpassword text,
	rolreplication boolean not null,
	rolsuper boolean not null,
	rolvaliduntil timestamp with time zone
);

create unique index pg_authid_oid_index
	on pg_catalog.pg_authid (oid);

create unique index pg_authid_rolname_index
	on pg_catalog.pg_authid (rolname);

create table pg_catalog.pg_cast
(
	castcontext "char" not null,
	castfunc oid not null,
	castmethod "char" not null,
	castsource oid not null,
	casttarget oid not null,
	oid oid not null
);

create unique index pg_cast_oid_index
	on pg_catalog.pg_cast (oid);

create unique index pg_cast_source_target_index
	on pg_catalog.pg_cast (castsource, casttarget);

create table pg_catalog.pg_class
(
	oid oid not null,
	relacl aclitem[],
	relallvisible integer not null,
	relam oid not null,
	relchecks smallint not null,
	relfilenode oid not null,
	relforcerowsecurity boolean not null,
	relfrozenxid xid not null,
	relhasindex boolean not null,
	relhasrules boolean not null,
	relhassubclass boolean not null,
	relhastriggers boolean not null,
	relispartition boolean not null,
	relispopulated boolean not null,
	relisshared boolean not null,
	relkind "char" not null,
	relminmxid xid not null,
	relname information_schema.sql_identifier not null,
	relnamespace oid not null,
	relnatts smallint not null,
	reloftype oid not null,
	reloptions text[],
	relowner oid not null,
	relpages integer not null,
	relpartbound pg_node_tree,
	relpersistence "char" not null,
	relreplident "char" not null,
	relrewrite oid not null,
	relrowsecurity boolean not null,
	reltablespace oid not null,
	reltoastrelid oid not null,
	reltuples real not null,
	reltype oid not null
);

create unique index pg_class_oid_index
	on pg_catalog.pg_class (oid);

create unique index pg_class_relname_nsp_index
	on pg_catalog.pg_class (relname, relnamespace);

create index pg_class_tblspc_relfilenode_index
	on pg_catalog.pg_class (reltablespace, relfilenode);

create table pg_catalog.pg_collation
(
	collcollate information_schema.sql_identifier not null,
	collctype information_schema.sql_identifier not null,
	collencoding integer not null,
	collisdeterministic boolean not null,
	collname information_schema.sql_identifier not null,
	collnamespace oid not null,
	collowner oid not null,
	collprovider "char" not null,
	collversion text,
	oid oid not null
);

create unique index pg_collation_name_enc_nsp_index
	on pg_catalog.pg_collation (collname, collencoding, collnamespace);

create unique index pg_collation_oid_index
	on pg_catalog.pg_collation (oid);

create table pg_catalog.pg_constraint
(
	conbin pg_node_tree,
	condeferrable boolean not null,
	condeferred boolean not null,
	conexclop oid[],
	confdeltype "char" not null,
	conffeqop oid[],
	confkey smallint[],
	confmatchtype "char" not null,
	confrelid oid not null,
	confupdtype "char" not null,
	conindid oid not null,
	coninhcount integer not null,
	conislocal boolean not null,
	conkey smallint[],
	conname information_schema.sql_identifier not null,
	connamespace oid not null,
	connoinherit boolean not null,
	conparentid oid not null,
	conpfeqop oid[],
	conppeqop oid[],
	conrelid oid not null,
	contype "char" not null,
	contypid oid not null,
	convalidated boolean not null,
	oid oid not null
);

create index pg_constraint_conname_nsp_index
	on pg_catalog.pg_constraint (conname, connamespace);

create index pg_constraint_conparentid_index
	on pg_catalog.pg_constraint (conparentid);

create unique index pg_constraint_conrelid_contypid_conname_index
	on pg_catalog.pg_constraint (conrelid, contypid, conname);

create index pg_constraint_contypid_index
	on pg_catalog.pg_constraint (contypid);

create unique index pg_constraint_oid_index
	on pg_catalog.pg_constraint (oid);

create table pg_catalog.pg_conversion
(
	condefault boolean not null,
	conforencoding integer not null,
	conname information_schema.sql_identifier not null,
	connamespace oid not null,
	conowner oid not null,
	conproc regproc not null,
	contoencoding integer not null,
	oid oid not null
);

create unique index pg_conversion_default_index
	on pg_catalog.pg_conversion (connamespace, conforencoding, contoencoding, oid);

create unique index pg_conversion_name_nsp_index
	on pg_catalog.pg_conversion (conname, connamespace);

create unique index pg_conversion_oid_index
	on pg_catalog.pg_conversion (oid);

create table pg_catalog.pg_database
(
	datacl aclitem[],
	datallowconn boolean not null,
	datcollate information_schema.sql_identifier not null,
	datconnlimit integer not null,
	datctype information_schema.sql_identifier not null,
	datdba oid not null,
	datfrozenxid xid not null,
	datistemplate boolean not null,
	datlastsysoid oid not null,
	datminmxid xid not null,
	datname information_schema.sql_identifier not null,
	dattablespace oid not null,
	encoding integer not null,
	oid oid not null
);

create unique index pg_database_datname_index
	on pg_catalog.pg_database (datname);

create unique index pg_database_oid_index
	on pg_catalog.pg_database (oid);

create table pg_catalog.pg_db_role_setting
(
	setconfig text[],
	setdatabase oid not null,
	setrole oid not null
);

create unique index pg_db_role_setting_databaseid_rol_index
	on pg_catalog.pg_db_role_setting (setdatabase, setrole);

create table pg_catalog.pg_default_acl
(
	defaclacl aclitem[] not null,
	defaclnamespace oid not null,
	defaclobjtype "char" not null,
	defaclrole oid not null,
	oid oid not null
);

create unique index pg_default_acl_oid_index
	on pg_catalog.pg_default_acl (oid);

create unique index pg_default_acl_role_nsp_obj_index
	on pg_catalog.pg_default_acl (defaclrole, defaclnamespace, defaclobjtype);

create table pg_catalog.pg_depend
(
	classid oid not null,
	deptype "char" not null,
	objid oid not null,
	objsubid integer not null,
	refclassid oid not null,
	refobjid oid not null,
	refobjsubid integer not null
);

create index pg_depend_depender_index
	on pg_catalog.pg_depend (classid, objid, objsubid);

create index pg_depend_reference_index
	on pg_catalog.pg_depend (refclassid, refobjid, refobjsubid);

create table pg_catalog.pg_description
(
	classoid oid not null,
	description text not null,
	objoid oid not null,
	objsubid integer not null
);

create unique index pg_description_o_c_o_index
	on pg_catalog.pg_description (objoid, classoid, objsubid);

create table pg_catalog.pg_enum
(
	enumlabel information_schema.sql_identifier not null,
	enumsortorder real not null,
	enumtypid oid not null,
	oid oid not null
);

create unique index pg_enum_oid_index
	on pg_catalog.pg_enum (oid);

create unique index pg_enum_typid_label_index
	on pg_catalog.pg_enum (enumtypid, enumlabel);

create unique index pg_enum_typid_sortorder_index
	on pg_catalog.pg_enum (enumtypid, enumsortorder);

create table pg_catalog.pg_event_trigger
(
	evtenabled "char" not null,
	evtevent information_schema.sql_identifier not null,
	evtfoid oid not null,
	evtname information_schema.sql_identifier not null,
	evtowner oid not null,
	evttags text[],
	oid oid not null
);

create unique index pg_event_trigger_evtname_index
	on pg_catalog.pg_event_trigger (evtname);

create unique index pg_event_trigger_oid_index
	on pg_catalog.pg_event_trigger (oid);

create table pg_catalog.pg_extension
(
	extcondition text[],
	extconfig oid[],
	extname information_schema.sql_identifier not null,
	extnamespace oid not null,
	extowner oid not null,
	extrelocatable boolean not null,
	extversion text not null,
	oid oid not null
);

create unique index pg_extension_name_index
	on pg_catalog.pg_extension (extname);

create unique index pg_extension_oid_index
	on pg_catalog.pg_extension (oid);

create table pg_catalog.pg_foreign_data_wrapper
(
	fdwacl aclitem[],
	fdwhandler oid not null,
	fdwname information_schema.sql_identifier not null,
	fdwoptions text[],
	fdwowner oid not null,
	fdwvalidator oid not null,
	oid oid not null
);

create unique index pg_foreign_data_wrapper_name_index
	on pg_catalog.pg_foreign_data_wrapper (fdwname);

create unique index pg_foreign_data_wrapper_oid_index
	on pg_catalog.pg_foreign_data_wrapper (oid);

create table pg_catalog.pg_foreign_server
(
	oid oid not null,
	srvacl aclitem[],
	srvfdw oid not null,
	srvname information_schema.sql_identifier not null,
	srvoptions text[],
	srvowner oid not null,
	srvtype text,
	srvversion text
);

create unique index pg_foreign_server_name_index
	on pg_catalog.pg_foreign_server (srvname);

create unique index pg_foreign_server_oid_index
	on pg_catalog.pg_foreign_server (oid);

create table pg_catalog.pg_foreign_table
(
	ftoptions text[],
	ftrelid oid not null,
	ftserver oid not null
);

create unique index pg_foreign_table_relid_index
	on pg_catalog.pg_foreign_table (ftrelid);

create table pg_catalog.pg_index
(
	indcheckxmin boolean not null,
	indclass oidvector not null,
	indcollation oidvector not null,
	indexprs pg_node_tree,
	indexrelid oid not null,
	indimmediate boolean not null,
	indisclustered boolean not null,
	indisexclusion boolean not null,
	indislive boolean not null,
	indisprimary boolean not null,
	indisready boolean not null,
	indisreplident boolean not null,
	indisunique boolean not null,
	indisvalid boolean not null,
	indkey int2vector not null,
	indnatts smallint not null,
	indnkeyatts smallint not null,
	indoption int2vector not null,
	indpred pg_node_tree,
	indrelid oid not null
);

create unique index pg_index_indexrelid_index
	on pg_catalog.pg_index (indexrelid);

create index pg_index_indrelid_index
	on pg_catalog.pg_index (indrelid);

create table pg_catalog.pg_inherits
(
	inhparent oid not null,
	inhrelid oid not null,
	inhseqno integer not null
);

create index pg_inherits_parent_index
	on pg_catalog.pg_inherits (inhparent);

create unique index pg_inherits_relid_seqno_index
	on pg_catalog.pg_inherits (inhrelid, inhseqno);

create table pg_catalog.pg_init_privs
(
	classoid oid not null,
	initprivs aclitem[] not null,
	objoid oid not null,
	objsubid integer not null,
	privtype "char" not null
);

create unique index pg_init_privs_o_c_o_index
	on pg_catalog.pg_init_privs (objoid, classoid, objsubid);

create table pg_catalog.pg_language
(
	lanacl aclitem[],
	laninline oid not null,
	lanispl boolean not null,
	lanname information_schema.sql_identifier not null,
	lanowner oid not null,
	lanplcallfoid oid not null,
	lanpltrusted boolean not null,
	lanvalidator oid not null,
	oid oid not null
);

create unique index pg_language_name_index
	on pg_catalog.pg_language (lanname);

create unique index pg_language_oid_index
	on pg_catalog.pg_language (oid);

create table pg_catalog.pg_largeobject
(
	data bytea not null,
	loid oid not null,
	pageno integer not null
);

create unique index pg_largeobject_loid_pn_index
	on pg_catalog.pg_largeobject (loid, pageno);

create table pg_catalog.pg_largeobject_metadata
(
	lomacl aclitem[],
	lomowner oid not null,
	oid oid not null
);

create unique index pg_largeobject_metadata_oid_index
	on pg_catalog.pg_largeobject_metadata (oid);

create table pg_catalog.pg_namespace
(
	nspacl aclitem[],
	nspname information_schema.sql_identifier not null,
	nspowner oid not null,
	oid oid not null
);

create unique index pg_namespace_nspname_index
	on pg_catalog.pg_namespace (nspname);

create unique index pg_namespace_oid_index
	on pg_catalog.pg_namespace (oid);

create table pg_catalog.pg_opclass
(
	oid oid not null,
	opcdefault boolean not null,
	opcfamily oid not null,
	opcintype oid not null,
	opckeytype oid not null,
	opcmethod oid not null,
	opcname information_schema.sql_identifier not null,
	opcnamespace oid not null,
	opcowner oid not null
);

create unique index pg_opclass_am_name_nsp_index
	on pg_catalog.pg_opclass (opcmethod, opcname, opcnamespace);

create unique index pg_opclass_oid_index
	on pg_catalog.pg_opclass (oid);

create table pg_catalog.pg_operator
(
	oid oid not null,
	oprcanhash boolean not null,
	oprcanmerge boolean not null,
	oprcode regproc not null,
	oprcom oid not null,
	oprjoin regproc not null,
	oprkind "char" not null,
	oprleft oid not null,
	oprname information_schema.sql_identifier not null,
	oprnamespace oid not null,
	oprnegate oid not null,
	oprowner oid not null,
	oprrest regproc not null,
	oprresult oid not null,
	oprright oid not null
);

create unique index pg_operator_oid_index
	on pg_catalog.pg_operator (oid);

create unique index pg_operator_oprname_l_r_n_index
	on pg_catalog.pg_operator (oprname, oprleft, oprright, oprnamespace);

create table pg_catalog.pg_opfamily
(
	oid oid not null,
	opfmethod oid not null,
	opfname information_schema.sql_identifier not null,
	opfnamespace oid not null,
	opfowner oid not null
);

create unique index pg_opfamily_am_name_nsp_index
	on pg_catalog.pg_opfamily (opfmethod, opfname, opfnamespace);

create unique index pg_opfamily_oid_index
	on pg_catalog.pg_opfamily (oid);

create table pg_catalog.pg_partitioned_table
(
	partattrs int2vector not null,
	partclass oidvector not null,
	partcollation oidvector not null,
	partdefid oid not null,
	partexprs pg_node_tree,
	partnatts smallint not null,
	partrelid oid not null,
	partstrat "char" not null
);

create unique index pg_partitioned_table_partrelid_index
	on pg_catalog.pg_partitioned_table (partrelid);

create table pg_catalog.pg_pltemplate
(
	tmplacl aclitem[],
	tmpldbacreate boolean not null,
	tmplhandler text not null,
	tmplinline text,
	tmpllibrary text not null,
	tmplname information_schema.sql_identifier not null,
	tmpltrusted boolean not null,
	tmplvalidator text
);

create unique index pg_pltemplate_name_index
	on pg_catalog.pg_pltemplate (tmplname);

create table pg_catalog.pg_policy
(
	oid oid not null,
	polcmd "char" not null,
	polname information_schema.sql_identifier not null,
	polpermissive boolean not null,
	polqual pg_node_tree,
	polrelid oid not null,
	polroles oid[] not null,
	polwithcheck pg_node_tree
);

create unique index pg_policy_oid_index
	on pg_catalog.pg_policy (oid);

create unique index pg_policy_polrelid_polname_index
	on pg_catalog.pg_policy (polrelid, polname);

create table pg_catalog.pg_proc
(
	oid oid not null,
	proacl aclitem[],
	proallargtypes oid[],
	proargdefaults pg_node_tree,
	proargmodes "char"[],
	proargnames text[],
	proargtypes oidvector not null,
	probin text,
	proconfig text[],
	procost real not null,
	proisstrict boolean not null,
	prokind "char" not null,
	prolang oid not null,
	proleakproof boolean not null,
	proname information_schema.sql_identifier not null,
	pronamespace oid not null,
	pronargdefaults smallint not null,
	pronargs smallint not null,
	proowner oid not null,
	proparallel "char" not null,
	proretset boolean not null,
	prorettype oid not null,
	prorows real not null,
	prosecdef boolean not null,
	prosrc text not null,
	prosupport regproc not null,
	protrftypes oid[],
	provariadic oid not null,
	provolatile "char" not null
);

create unique index pg_proc_oid_index
	on pg_catalog.pg_proc (oid);

create unique index pg_proc_proname_args_nsp_index
	on pg_catalog.pg_proc (proname, proargtypes, pronamespace);

create table pg_catalog.pg_publication
(
	oid oid not null,
	puballtables boolean not null,
	pubdelete boolean not null,
	pubinsert boolean not null,
	pubname information_schema.sql_identifier not null,
	pubowner oid not null,
	pubtruncate boolean not null,
	pubupdate boolean not null
);

create unique index pg_publication_oid_index
	on pg_catalog.pg_publication (oid);

create unique index pg_publication_pubname_index
	on pg_catalog.pg_publication (pubname);

create table pg_catalog.pg_publication_rel
(
	oid oid not null,
	prpubid oid not null,
	prrelid oid not null
);

create unique index pg_publication_rel_oid_index
	on pg_catalog.pg_publication_rel (oid);

create unique index pg_publication_rel_prrelid_prpubid_index
	on pg_catalog.pg_publication_rel (prrelid, prpubid);

create table pg_catalog.pg_range
(
	rngcanonical regproc not null,
	rngcollation oid not null,
	rngsubdiff regproc not null,
	rngsubopc oid not null,
	rngsubtype oid not null,
	rngtypid oid not null
);

create unique index pg_range_rngtypid_index
	on pg_catalog.pg_range (rngtypid);

create table pg_catalog.pg_replication_origin
(
	roident oid not null,
	roname text not null
);

create unique index pg_replication_origin_roiident_index
	on pg_catalog.pg_replication_origin (roident);

create unique index pg_replication_origin_roname_index
	on pg_catalog.pg_replication_origin (roname);

create table pg_catalog.pg_rewrite
(
	ev_action pg_node_tree not null,
	ev_class oid not null,
	ev_enabled "char" not null,
	ev_qual pg_node_tree not null,
	ev_type "char" not null,
	is_instead boolean not null,
	oid oid not null,
	rulename information_schema.sql_identifier not null
);

create unique index pg_rewrite_oid_index
	on pg_catalog.pg_rewrite (oid);

create unique index pg_rewrite_rel_rulename_index
	on pg_catalog.pg_rewrite (ev_class, rulename);

create table pg_catalog.pg_seclabel
(
	classoid oid not null,
	label text not null,
	objoid oid not null,
	objsubid integer not null,
	provider text not null
);

create unique index pg_seclabel_object_index
	on pg_catalog.pg_seclabel (objoid, classoid, objsubid, provider);

create table pg_catalog.pg_sequence
(
	seqcache bigint not null,
	seqcycle boolean not null,
	seqincrement bigint not null,
	seqmax bigint not null,
	seqmin bigint not null,
	seqrelid oid not null,
	seqstart bigint not null,
	seqtypid oid not null
);

create unique index pg_sequence_seqrelid_index
	on pg_catalog.pg_sequence (seqrelid);

create table pg_catalog.pg_shdepend
(
	classid oid not null,
	dbid oid not null,
	deptype "char" not null,
	objid oid not null,
	objsubid integer not null,
	refclassid oid not null,
	refobjid oid not null
);

create index pg_shdepend_depender_index
	on pg_catalog.pg_shdepend (dbid, classid, objid, objsubid);

create index pg_shdepend_reference_index
	on pg_catalog.pg_shdepend (refclassid, refobjid);

create table pg_catalog.pg_shdescription
(
	classoid oid not null,
	description text not null,
	objoid oid not null
);

create unique index pg_shdescription_o_c_index
	on pg_catalog.pg_shdescription (objoid, classoid);

create table pg_catalog.pg_shseclabel
(
	classoid oid not null,
	label text not null,
	objoid oid not null,
	provider text not null
);

create unique index pg_shseclabel_object_index
	on pg_catalog.pg_shseclabel (objoid, classoid, provider);

create table pg_catalog.pg_statistic
(
	staattnum smallint not null,
	stacoll1 oid not null,
	stacoll2 oid not null,
	stacoll3 oid not null,
	stacoll4 oid not null,
	stacoll5 oid not null,
	stadistinct real not null,
	stainherit boolean not null,
	stakind1 smallint not null,
	stakind2 smallint not null,
	stakind3 smallint not null,
	stakind4 smallint not null,
	stakind5 smallint not null,
	stanullfrac real not null,
	stanumbers1 real[],
	stanumbers2 real[],
	stanumbers3 real[],
	stanumbers4 real[],
	stanumbers5 real[],
	staop1 oid not null,
	staop2 oid not null,
	staop3 oid not null,
	staop4 oid not null,
	staop5 oid not null,
	starelid oid not null,
	stavalues1 anyarray,
	stavalues2 anyarray,
	stavalues3 anyarray,
	stavalues4 anyarray,
	stavalues5 anyarray,
	stawidth integer not null
);

create unique index pg_statistic_relid_att_inh_index
	on pg_catalog.pg_statistic (starelid, staattnum, stainherit);

create table pg_catalog.pg_statistic_ext
(
	oid oid not null,
	stxkeys int2vector not null,
	stxkind "char"[] not null,
	stxname information_schema.sql_identifier not null,
	stxnamespace oid not null,
	stxowner oid not null,
	stxrelid oid not null
);

create unique index pg_statistic_ext_name_index
	on pg_catalog.pg_statistic_ext (stxname, stxnamespace);

create unique index pg_statistic_ext_oid_index
	on pg_catalog.pg_statistic_ext (oid);

create index pg_statistic_ext_relid_index
	on pg_catalog.pg_statistic_ext (stxrelid);

create table pg_catalog.pg_statistic_ext_data
(
	stxddependencies pg_dependencies,
	stxdmcv pg_mcv_list,
	stxdndistinct pg_ndistinct,
	stxoid oid not null
);

create unique index pg_statistic_ext_data_stxoid_index
	on pg_catalog.pg_statistic_ext_data (stxoid);

create table pg_catalog.pg_subscription
(
	oid oid not null,
	subconninfo text not null,
	subdbid oid not null,
	subenabled boolean not null,
	subname information_schema.sql_identifier not null,
	subowner oid not null,
	subpublications text[] not null,
	subslotname information_schema.sql_identifier not null,
	subsynccommit text not null
);

create unique index pg_subscription_oid_index
	on pg_catalog.pg_subscription (oid);

create unique index pg_subscription_subname_index
	on pg_catalog.pg_subscription (subdbid, subname);

create table pg_catalog.pg_subscription_rel
(
	srrelid oid not null,
	srsubid oid not null,
	srsublsn pg_lsn not null,
	srsubstate "char" not null
);

create unique index pg_subscription_rel_srrelid_srsubid_index
	on pg_catalog.pg_subscription_rel (srrelid, srsubid);

create table pg_catalog.pg_tablespace
(
	oid oid not null,
	spcacl aclitem[],
	spcname information_schema.sql_identifier not null,
	spcoptions text[],
	spcowner oid not null
);

create unique index pg_tablespace_oid_index
	on pg_catalog.pg_tablespace (oid);

create unique index pg_tablespace_spcname_index
	on pg_catalog.pg_tablespace (spcname);

create table pg_catalog.pg_transform
(
	oid oid not null,
	trffromsql regproc not null,
	trflang oid not null,
	trftosql regproc not null,
	trftype oid not null
);

create unique index pg_transform_oid_index
	on pg_catalog.pg_transform (oid);

create unique index pg_transform_type_lang_index
	on pg_catalog.pg_transform (trftype, trflang);

create table pg_catalog.pg_trigger
(
	oid oid not null,
	tgargs bytea not null,
	tgattr int2vector not null,
	tgconstraint oid not null,
	tgconstrindid oid not null,
	tgconstrrelid oid not null,
	tgdeferrable boolean not null,
	tgenabled "char" not null,
	tgfoid oid not null,
	tginitdeferred boolean not null,
	tgisinternal boolean not null,
	tgname information_schema.sql_identifier not null,
	tgnargs smallint not null,
	tgnewtable information_schema.sql_identifier,
	tgoldtable information_schema.sql_identifier,
	tgqual pg_node_tree,
	tgrelid oid not null,
	tgtype smallint not null
);

create unique index pg_trigger_oid_index
	on pg_catalog.pg_trigger (oid);

create index pg_trigger_tgconstraint_index
	on pg_catalog.pg_trigger (tgconstraint);

create unique index pg_trigger_tgrelid_tgname_index
	on pg_catalog.pg_trigger (tgrelid, tgname);

create table pg_catalog.pg_ts_config
(
	cfgname information_schema.sql_identifier not null,
	cfgnamespace oid not null,
	cfgowner oid not null,
	cfgparser oid not null,
	oid oid not null
);

create unique index pg_ts_config_cfgname_index
	on pg_catalog.pg_ts_config (cfgname, cfgnamespace);

create unique index pg_ts_config_oid_index
	on pg_catalog.pg_ts_config (oid);

create table pg_catalog.pg_ts_config_map
(
	mapcfg oid not null,
	mapdict oid not null,
	mapseqno integer not null,
	maptokentype integer not null
);

create unique index pg_ts_config_map_index
	on pg_catalog.pg_ts_config_map (mapcfg, maptokentype, mapseqno);

create table pg_catalog.pg_ts_dict
(
	dictinitoption text,
	dictname information_schema.sql_identifier not null,
	dictnamespace oid not null,
	dictowner oid not null,
	dicttemplate oid not null,
	oid oid not null
);

create unique index pg_ts_dict_dictname_index
	on pg_catalog.pg_ts_dict (dictname, dictnamespace);

create unique index pg_ts_dict_oid_index
	on pg_catalog.pg_ts_dict (oid);

create table pg_catalog.pg_ts_parser
(
	oid oid not null,
	prsend regproc not null,
	prsheadline regproc not null,
	prslextype regproc not null,
	prsname information_schema.sql_identifier not null,
	prsnamespace oid not null,
	prsstart regproc not null,
	prstoken regproc not null
);

create unique index pg_ts_parser_oid_index
	on pg_catalog.pg_ts_parser (oid);

create unique index pg_ts_parser_prsname_index
	on pg_catalog.pg_ts_parser (prsname, prsnamespace);

create table pg_catalog.pg_ts_template
(
	oid oid not null,
	tmplinit regproc not null,
	tmpllexize regproc not null,
	tmplname information_schema.sql_identifier not null,
	tmplnamespace oid not null
);

create unique index pg_ts_template_oid_index
	on pg_catalog.pg_ts_template (oid);

create unique index pg_ts_template_tmplname_index
	on pg_catalog.pg_ts_template (tmplname, tmplnamespace);

create table pg_catalog.pg_type
(
	oid oid not null,
	typacl aclitem[],
	typalign "char" not null,
	typanalyze regproc not null,
	typarray oid not null,
	typbasetype oid not null,
	typbyval boolean not null,
	typcategory "char" not null,
	typcollation oid not null,
	typdefault text,
	typdefaultbin pg_node_tree,
	typdelim "char" not null,
	typelem oid not null,
	typinput regproc not null,
	typisdefined boolean not null,
	typispreferred boolean not null,
	typlen smallint not null,
	typmodin regproc not null,
	typmodout regproc not null,
	typname information_schema.sql_identifier not null,
	typnamespace oid not null,
	typndims integer not null,
	typnotnull boolean not null,
	typoutput regproc not null,
	typowner oid not null,
	typreceive regproc not null,
	typrelid oid not null,
	typsend regproc not null,
	typstorage "char" not null,
	typtype "char" not null,
	typtypmod integer not null
);

create unique index pg_type_oid_index
	on pg_catalog.pg_type (oid);

create unique index pg_type_typname_nsp_index
	on pg_catalog.pg_type (typname, typnamespace);

create table pg_catalog.pg_user_mapping
(
	oid oid not null,
	umoptions text[],
	umserver oid not null,
	umuser oid not null
);

create unique index pg_user_mapping_oid_index
	on pg_catalog.pg_user_mapping (oid);

create unique index pg_user_mapping_user_server_index
	on pg_catalog.pg_user_mapping (umuser, umserver);

create table information_schema.sql_features
(
	comments information_schema.character_data,
	feature_id information_schema.character_data,
	feature_name information_schema.character_data,
	is_supported information_schema.yes_or_no,
	is_verified_by information_schema.character_data,
	sub_feature_id information_schema.character_data,
	sub_feature_name information_schema.character_data
);

create table information_schema.sql_implementation_info
(
	character_value information_schema.character_data,
	comments information_schema.character_data,
	implementation_info_id information_schema.character_data,
	implementation_info_name information_schema.character_data,
	integer_value information_schema.cardinal_number
);

create table information_schema.sql_languages
(
	sql_language_binding_style information_schema.character_data,
	sql_language_conformance information_schema.character_data,
	sql_language_implementation information_schema.character_data,
	sql_language_integrity information_schema.character_data,
	sql_language_programming_language information_schema.character_data,
	sql_language_source information_schema.character_data,
	sql_language_year information_schema.character_data
);

create table information_schema.sql_packages
(
	comments information_schema.character_data,
	feature_id information_schema.character_data,
	feature_name information_schema.character_data,
	is_supported information_schema.yes_or_no,
	is_verified_by information_schema.character_data
);

create table information_schema.sql_parts
(
	comments information_schema.character_data,
	feature_id information_schema.character_data,
	feature_name information_schema.character_data,
	is_supported information_schema.yes_or_no,
	is_verified_by information_schema.character_data
);

create table information_schema.sql_sizing
(
	comments information_schema.character_data,
	sizing_id information_schema.cardinal_number,
	sizing_name information_schema.character_data,
	supported_value information_schema.cardinal_number
);

create table information_schema.sql_sizing_profiles
(
	comments information_schema.character_data,
	profile_id information_schema.character_data,
	required_value information_schema.cardinal_number,
	sizing_id information_schema.cardinal_number,
	sizing_name information_schema.character_data
);

create view information_schema._pg_foreign_data_wrappers(authorization_identifier, fdwoptions, fdwowner, foreign_data_wrapper_catalog, foreign_data_wrapper_language, foreign_data_wrapper_name, oid) as
-- missing source code
;

create view information_schema._pg_foreign_servers(authorization_identifier, foreign_data_wrapper_catalog, foreign_data_wrapper_name, foreign_server_catalog, foreign_server_name, foreign_server_type, foreign_server_version, oid, srvoptions) as
-- missing source code
;

create view information_schema._pg_foreign_table_columns(attfdwoptions, attname, nspname, relname) as
-- missing source code
;

create view information_schema._pg_foreign_tables(authorization_identifier, foreign_server_catalog, foreign_server_name, foreign_table_catalog, foreign_table_name, foreign_table_schema, ftoptions) as
-- missing source code
;

create view information_schema._pg_user_mappings(authorization_identifier, foreign_server_catalog, foreign_server_name, oid, srvowner, umoptions, umuser) as
-- missing source code
;

create view information_schema.administrable_role_authorizations(grantee, is_grantable, role_name) as
-- missing source code
;

create view information_schema.applicable_roles(grantee, is_grantable, role_name) as
-- missing source code
;

create view information_schema.attributes(attribute_default, attribute_name, attribute_udt_catalog, attribute_udt_name, attribute_udt_schema, character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, data_type, datetime_precision, dtd_identifier, interval_precision, interval_type, is_derived_reference_attribute, is_nullable, maximum_cardinality, numeric_precision, numeric_precision_radix, numeric_scale, ordinal_position, scope_catalog, scope_name, scope_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.character_sets(character_repertoire, character_set_catalog, character_set_name, character_set_schema, default_collate_catalog, default_collate_name, default_collate_schema, form_of_use) as
-- missing source code
;

create view information_schema.check_constraint_routine_usage(constraint_catalog, constraint_name, constraint_schema, specific_catalog, specific_name, specific_schema) as
-- missing source code
;

create view information_schema.check_constraints(check_clause, constraint_catalog, constraint_name, constraint_schema) as
-- missing source code
;

create view information_schema.collation_character_set_applicability(character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema) as
-- missing source code
;

create view information_schema.collations(collation_catalog, collation_name, collation_schema, pad_attribute) as
-- missing source code
;

create view information_schema.column_column_usage(column_name, dependent_column, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.column_domain_usage(column_name, domain_catalog, domain_name, domain_schema, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.column_options(column_name, option_name, option_value, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.column_privileges(column_name, grantee, grantor, is_grantable, privilege_type, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.column_udt_usage(column_name, table_catalog, table_name, table_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.columns(character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, column_default, column_name, data_type, datetime_precision, domain_catalog, domain_name, domain_schema, dtd_identifier, generation_expression, identity_cycle, identity_generation, identity_increment, identity_maximum, identity_minimum, identity_start, interval_precision, interval_type, is_generated, is_identity, is_nullable, is_self_referencing, is_updatable, maximum_cardinality, numeric_precision, numeric_precision_radix, numeric_scale, ordinal_position, scope_catalog, scope_name, scope_schema, table_catalog, table_name, table_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.constraint_column_usage(column_name, constraint_catalog, constraint_name, constraint_schema, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.constraint_table_usage(constraint_catalog, constraint_name, constraint_schema, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.data_type_privileges(dtd_identifier, object_catalog, object_name, object_schema, object_type) as
-- missing source code
;

create view information_schema.domain_constraints(constraint_catalog, constraint_name, constraint_schema, domain_catalog, domain_name, domain_schema, initially_deferred, is_deferrable) as
-- missing source code
;

create view information_schema.domain_udt_usage(domain_catalog, domain_name, domain_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.domains(character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, data_type, datetime_precision, domain_catalog, domain_default, domain_name, domain_schema, dtd_identifier, interval_precision, interval_type, maximum_cardinality, numeric_precision, numeric_precision_radix, numeric_scale, scope_catalog, scope_name, scope_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.element_types(character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, collection_type_identifier, data_type, datetime_precision, domain_default, dtd_identifier, interval_precision, interval_type, maximum_cardinality, numeric_precision, numeric_precision_radix, numeric_scale, object_catalog, object_name, object_schema, object_type, scope_catalog, scope_name, scope_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.enabled_roles(role_name) as
-- missing source code
;

create view information_schema.foreign_data_wrapper_options(foreign_data_wrapper_catalog, foreign_data_wrapper_name, option_name, option_value) as
-- missing source code
;

create view information_schema.foreign_data_wrappers(authorization_identifier, foreign_data_wrapper_catalog, foreign_data_wrapper_language, foreign_data_wrapper_name, library_name) as
-- missing source code
;

create view information_schema.foreign_server_options(foreign_server_catalog, foreign_server_name, option_name, option_value) as
-- missing source code
;

create view information_schema.foreign_servers(authorization_identifier, foreign_data_wrapper_catalog, foreign_data_wrapper_name, foreign_server_catalog, foreign_server_name, foreign_server_type, foreign_server_version) as
-- missing source code
;

create view information_schema.foreign_table_options(foreign_table_catalog, foreign_table_name, foreign_table_schema, option_name, option_value) as
-- missing source code
;

create view information_schema.foreign_tables(foreign_server_catalog, foreign_server_name, foreign_table_catalog, foreign_table_name, foreign_table_schema) as
-- missing source code
;

create view information_schema.information_schema_catalog_name(catalog_name) as
-- missing source code
;

create view information_schema.key_column_usage(column_name, constraint_catalog, constraint_name, constraint_schema, ordinal_position, position_in_unique_constraint, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.parameters(as_locator, character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, data_type, datetime_precision, dtd_identifier, interval_precision, interval_type, is_result, maximum_cardinality, numeric_precision, numeric_precision_radix, numeric_scale, ordinal_position, parameter_default, parameter_mode, parameter_name, scope_catalog, scope_name, scope_schema, specific_catalog, specific_name, specific_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view pg_catalog.pg_available_extension_versions(comment, installed, name, relocatable, requires, schema, superuser, version) as
-- missing source code
;

create view pg_catalog.pg_available_extensions(comment, default_version, installed_version, name) as
-- missing source code
;

create view pg_catalog.pg_config(name, setting) as
-- missing source code
;

create view pg_catalog.pg_cursors(creation_time, is_binary, is_holdable, is_scrollable, name, statement) as
-- missing source code
;

create view pg_catalog.pg_file_settings(applied, error, name, seqno, setting, sourcefile, sourceline) as
-- missing source code
;

create view pg_catalog.pg_group(grolist, groname, grosysid) as
-- missing source code
;

create view pg_catalog.pg_hba_file_rules(address, auth_method, database, error, line_number, netmask, options, type, user_name) as
-- missing source code
;

create view pg_catalog.pg_indexes(indexdef, indexname, schemaname, tablename, tablespace) as
-- missing source code
;

create view pg_catalog.pg_locks(classid, database, fastpath, granted, locktype, mode, objid, objsubid, page, pid, relation, transactionid, tuple, virtualtransaction, virtualxid) as
-- missing source code
;

create view pg_catalog.pg_matviews(definition, hasindexes, ispopulated, matviewname, matviewowner, schemaname, tablespace) as
-- missing source code
;

create view pg_catalog.pg_policies(cmd, permissive, policyname, qual, roles, schemaname, tablename, with_check) as
-- missing source code
;

create view pg_catalog.pg_prepared_statements(from_sql, name, parameter_types, prepare_time, statement) as
-- missing source code
;

create view pg_catalog.pg_prepared_xacts(database, gid, owner, prepared, transaction) as
-- missing source code
;

create view pg_catalog.pg_publication_tables(pubname, schemaname, tablename) as
-- missing source code
;

create view pg_catalog.pg_replication_origin_status(external_id, local_id, local_lsn, remote_lsn) as
-- missing source code
;

create view pg_catalog.pg_replication_slots(active, active_pid, catalog_xmin, confirmed_flush_lsn, database, datoid, plugin, restart_lsn, slot_name, slot_type, temporary, xmin) as
-- missing source code
;

create view pg_catalog.pg_roles(oid, rolbypassrls, rolcanlogin, rolconfig, rolconnlimit, rolcreatedb, rolcreaterole, rolinherit, rolname, rolpassword, rolreplication, rolsuper, rolvaliduntil) as
-- missing source code
;

create view pg_catalog.pg_rules(definition, rulename, schemaname, tablename) as
-- missing source code
;

create view pg_catalog.pg_seclabels(classoid, label, objname, objnamespace, objoid, objsubid, objtype, provider) as
-- missing source code
;

create view pg_catalog.pg_sequences(cache_size, cycle, data_type, increment_by, last_value, max_value, min_value, schemaname, sequencename, sequenceowner, start_value) as
-- missing source code
;

create view pg_catalog.pg_settings(boot_val, category, context, enumvals, extra_desc, max_val, min_val, name, pending_restart, reset_val, setting, short_desc, source, sourcefile, sourceline, unit, vartype) as
-- missing source code
;

create rule pg_catalog.pg_settings_n as
	on update to pg_catalog.pg_settings
	do instead -- missing source code
;

create rule pg_catalog.pg_settings_u as
	on update to pg_catalog.pg_settings
	do also -- missing source code
;

create view pg_catalog.pg_shadow(passwd, usebypassrls, useconfig, usecreatedb, usename, userepl, usesuper, usesysid, valuntil) as
-- missing source code
;

create view pg_catalog.pg_stat_activity(application_name, backend_start, backend_type, backend_xid, backend_xmin, client_addr, client_hostname, client_port, datid, datname, pid, query, query_start, state, state_change, usename, usesysid, wait_event, wait_event_type, xact_start) as
-- missing source code
;

create view pg_catalog.pg_stat_all_indexes(idx_scan, idx_tup_fetch, idx_tup_read, indexrelid, indexrelname, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_stat_all_tables(analyze_count, autoanalyze_count, autovacuum_count, idx_scan, idx_tup_fetch, last_analyze, last_autoanalyze, last_autovacuum, last_vacuum, n_dead_tup, n_live_tup, n_mod_since_analyze, n_tup_del, n_tup_hot_upd, n_tup_ins, n_tup_upd, relid, relname, schemaname, seq_scan, seq_tup_read, vacuum_count) as
-- missing source code
;

create view pg_catalog.pg_stat_archiver(archived_count, failed_count, last_archived_time, last_archived_wal, last_failed_time, last_failed_wal, stats_reset) as
-- missing source code
;

create view pg_catalog.pg_stat_bgwriter(buffers_alloc, buffers_backend, buffers_backend_fsync, buffers_checkpoint, buffers_clean, checkpoint_sync_time, checkpoint_write_time, checkpoints_req, checkpoints_timed, maxwritten_clean, stats_reset) as
-- missing source code
;

create view pg_catalog.pg_stat_database(blk_read_time, blk_write_time, blks_hit, blks_read, checksum_failures, checksum_last_failure, conflicts, datid, datname, deadlocks, numbackends, stats_reset, temp_bytes, temp_files, tup_deleted, tup_fetched, tup_inserted, tup_returned, tup_updated, xact_commit, xact_rollback) as
-- missing source code
;

create view pg_catalog.pg_stat_database_conflicts(confl_bufferpin, confl_deadlock, confl_lock, confl_snapshot, confl_tablespace, datid, datname) as
-- missing source code
;

create view pg_catalog.pg_stat_gssapi(encrypted, gss_authenticated, pid, principal) as
-- missing source code
;

create view pg_catalog.pg_stat_progress_cluster(cluster_index_relid, command, datid, datname, heap_blks_scanned, heap_blks_total, heap_tuples_scanned, heap_tuples_written, index_rebuild_count, phase, pid, relid) as
-- missing source code
;

create view pg_catalog.pg_stat_progress_create_index(blocks_done, blocks_total, command, current_locker_pid, datid, datname, index_relid, lockers_done, lockers_total, partitions_done, partitions_total, phase, pid, relid, tuples_done, tuples_total) as
-- missing source code
;

create view pg_catalog.pg_stat_progress_vacuum(datid, datname, heap_blks_scanned, heap_blks_total, heap_blks_vacuumed, index_vacuum_count, max_dead_tuples, num_dead_tuples, phase, pid, relid) as
-- missing source code
;

create view pg_catalog.pg_stat_replication(application_name, backend_start, backend_xmin, client_addr, client_hostname, client_port, flush_lag, flush_lsn, pid, replay_lag, replay_lsn, reply_time, sent_lsn, state, sync_priority, sync_state, usename, usesysid, write_lag, write_lsn) as
-- missing source code
;

create view pg_catalog.pg_stat_ssl(bits, cipher, client_dn, client_serial, compression, issuer_dn, pid, ssl, version) as
-- missing source code
;

create view pg_catalog.pg_stat_subscription(last_msg_receipt_time, last_msg_send_time, latest_end_lsn, latest_end_time, pid, received_lsn, relid, subid, subname) as
-- missing source code
;

create view pg_catalog.pg_stat_sys_indexes(idx_scan, idx_tup_fetch, idx_tup_read, indexrelid, indexrelname, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_stat_sys_tables(analyze_count, autoanalyze_count, autovacuum_count, idx_scan, idx_tup_fetch, last_analyze, last_autoanalyze, last_autovacuum, last_vacuum, n_dead_tup, n_live_tup, n_mod_since_analyze, n_tup_del, n_tup_hot_upd, n_tup_ins, n_tup_upd, relid, relname, schemaname, seq_scan, seq_tup_read, vacuum_count) as
-- missing source code
;

create view pg_catalog.pg_stat_user_functions(calls, funcid, funcname, schemaname, self_time, total_time) as
-- missing source code
;

create view pg_catalog.pg_stat_user_indexes(idx_scan, idx_tup_fetch, idx_tup_read, indexrelid, indexrelname, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_stat_user_tables(analyze_count, autoanalyze_count, autovacuum_count, idx_scan, idx_tup_fetch, last_analyze, last_autoanalyze, last_autovacuum, last_vacuum, n_dead_tup, n_live_tup, n_mod_since_analyze, n_tup_del, n_tup_hot_upd, n_tup_ins, n_tup_upd, relid, relname, schemaname, seq_scan, seq_tup_read, vacuum_count) as
-- missing source code
;

create view pg_catalog.pg_stat_wal_receiver(conninfo, last_msg_receipt_time, last_msg_send_time, latest_end_lsn, latest_end_time, pid, receive_start_lsn, receive_start_tli, received_lsn, received_tli, sender_host, sender_port, slot_name, status) as
-- missing source code
;

create view pg_catalog.pg_stat_xact_all_tables(idx_scan, idx_tup_fetch, n_tup_del, n_tup_hot_upd, n_tup_ins, n_tup_upd, relid, relname, schemaname, seq_scan, seq_tup_read) as
-- missing source code
;

create view pg_catalog.pg_stat_xact_sys_tables(idx_scan, idx_tup_fetch, n_tup_del, n_tup_hot_upd, n_tup_ins, n_tup_upd, relid, relname, schemaname, seq_scan, seq_tup_read) as
-- missing source code
;

create view pg_catalog.pg_stat_xact_user_functions(calls, funcid, funcname, schemaname, self_time, total_time) as
-- missing source code
;

create view pg_catalog.pg_stat_xact_user_tables(idx_scan, idx_tup_fetch, n_tup_del, n_tup_hot_upd, n_tup_ins, n_tup_upd, relid, relname, schemaname, seq_scan, seq_tup_read) as
-- missing source code
;

create view pg_catalog.pg_statio_all_indexes(idx_blks_hit, idx_blks_read, indexrelid, indexrelname, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_statio_all_sequences(blks_hit, blks_read, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_statio_all_tables(heap_blks_hit, heap_blks_read, idx_blks_hit, idx_blks_read, relid, relname, schemaname, tidx_blks_hit, tidx_blks_read, toast_blks_hit, toast_blks_read) as
-- missing source code
;

create view pg_catalog.pg_statio_sys_indexes(idx_blks_hit, idx_blks_read, indexrelid, indexrelname, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_statio_sys_sequences(blks_hit, blks_read, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_statio_sys_tables(heap_blks_hit, heap_blks_read, idx_blks_hit, idx_blks_read, relid, relname, schemaname, tidx_blks_hit, tidx_blks_read, toast_blks_hit, toast_blks_read) as
-- missing source code
;

create view pg_catalog.pg_statio_user_indexes(idx_blks_hit, idx_blks_read, indexrelid, indexrelname, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_statio_user_sequences(blks_hit, blks_read, relid, relname, schemaname) as
-- missing source code
;

create view pg_catalog.pg_statio_user_tables(heap_blks_hit, heap_blks_read, idx_blks_hit, idx_blks_read, relid, relname, schemaname, tidx_blks_hit, tidx_blks_read, toast_blks_hit, toast_blks_read) as
-- missing source code
;

create view pg_catalog.pg_stats(attname, avg_width, correlation, elem_count_histogram, histogram_bounds, inherited, most_common_elem_freqs, most_common_elems, most_common_freqs, most_common_vals, n_distinct, null_frac, schemaname, tablename) as
-- missing source code
;

create view pg_catalog.pg_stats_ext(attnames, dependencies, kinds, most_common_base_freqs, most_common_freqs, most_common_val_nulls, most_common_vals, n_distinct, schemaname, statistics_name, statistics_owner, statistics_schemaname, tablename) as
-- missing source code
;

create view pg_catalog.pg_tables(hasindexes, hasrules, hastriggers, rowsecurity, schemaname, tablename, tableowner, tablespace) as
-- missing source code
;

create view pg_catalog.pg_timezone_abbrevs(abbrev, is_dst, utc_offset) as
-- missing source code
;

create view pg_catalog.pg_timezone_names(abbrev, is_dst, name, utc_offset) as
-- missing source code
;

create view pg_catalog.pg_user(passwd, usebypassrls, useconfig, usecreatedb, usename, userepl, usesuper, usesysid, valuntil) as
-- missing source code
;

create view pg_catalog.pg_user_mappings(srvid, srvname, umid, umoptions, umuser, usename) as
-- missing source code
;

create view pg_catalog.pg_views(definition, schemaname, viewname, viewowner) as
-- missing source code
;

create view information_schema.referential_constraints(constraint_catalog, constraint_name, constraint_schema, delete_rule, match_option, unique_constraint_catalog, unique_constraint_name, unique_constraint_schema, update_rule) as
-- missing source code
;

create view information_schema.role_column_grants(column_name, grantee, grantor, is_grantable, privilege_type, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.role_routine_grants(grantee, grantor, is_grantable, privilege_type, routine_catalog, routine_name, routine_schema, specific_catalog, specific_name, specific_schema) as
-- missing source code
;

create view information_schema.role_table_grants(grantee, grantor, is_grantable, privilege_type, table_catalog, table_name, table_schema, with_hierarchy) as
-- missing source code
;

create view information_schema.role_udt_grants(grantee, grantor, is_grantable, privilege_type, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.role_usage_grants(grantee, grantor, is_grantable, object_catalog, object_name, object_schema, object_type, privilege_type) as
-- missing source code
;

create view information_schema.routine_privileges(grantee, grantor, is_grantable, privilege_type, routine_catalog, routine_name, routine_schema, specific_catalog, specific_name, specific_schema) as
-- missing source code
;

create view information_schema.routines(as_locator, character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, created, data_type, datetime_precision, dtd_identifier, external_language, external_name, interval_precision, interval_type, is_deterministic, is_implicitly_invocable, is_null_call, is_udt_dependent, is_user_defined_cast, last_altered, max_dynamic_result_sets, maximum_cardinality, module_catalog, module_name, module_schema, new_savepoint_level, numeric_precision, numeric_precision_radix, numeric_scale, parameter_style, result_cast_as_locator, result_cast_char_max_length, result_cast_char_octet_length, result_cast_char_set_catalog, result_cast_char_set_name, result_cast_char_set_schema, result_cast_collation_catalog, result_cast_collation_name, result_cast_collation_schema, result_cast_datetime_precision, result_cast_dtd_identifier, result_cast_from_data_type, result_cast_interval_precision, result_cast_interval_type, result_cast_maximum_cardinality, result_cast_numeric_precision, result_cast_numeric_precision_radix, result_cast_numeric_scale, result_cast_scope_catalog, result_cast_scope_name, result_cast_scope_schema, result_cast_type_udt_catalog, result_cast_type_udt_name, result_cast_type_udt_schema, routine_body, routine_catalog, routine_definition, routine_name, routine_schema, routine_type, schema_level_routine, scope_catalog, scope_name, scope_schema, security_type, specific_catalog, specific_name, specific_schema, sql_data_access, sql_path, to_sql_specific_catalog, to_sql_specific_name, to_sql_specific_schema, type_udt_catalog, type_udt_name, type_udt_schema, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.schemata(catalog_name, default_character_set_catalog, default_character_set_name, default_character_set_schema, schema_name, schema_owner, sql_path) as
-- missing source code
;

create view information_schema.sequences(cycle_option, data_type, increment, maximum_value, minimum_value, numeric_precision, numeric_precision_radix, numeric_scale, sequence_catalog, sequence_name, sequence_schema, start_value) as
-- missing source code
;

create view information_schema.table_constraints(constraint_catalog, constraint_name, constraint_schema, constraint_type, enforced, initially_deferred, is_deferrable, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.table_privileges(grantee, grantor, is_grantable, privilege_type, table_catalog, table_name, table_schema, with_hierarchy) as
-- missing source code
;

create view information_schema.tables(commit_action, is_insertable_into, is_typed, reference_generation, self_referencing_column_name, table_catalog, table_name, table_schema, table_type, user_defined_type_catalog, user_defined_type_name, user_defined_type_schema) as
-- missing source code
;

create view information_schema.transforms(group_name, specific_catalog, specific_name, specific_schema, transform_type, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.triggered_update_columns(event_object_catalog, event_object_column, event_object_schema, event_object_table, trigger_catalog, trigger_name, trigger_schema) as
-- missing source code
;

create view information_schema.triggers(action_condition, action_order, action_orientation, action_reference_new_row, action_reference_new_table, action_reference_old_row, action_reference_old_table, action_statement, action_timing, created, event_manipulation, event_object_catalog, event_object_schema, event_object_table, trigger_catalog, trigger_name, trigger_schema) as
-- missing source code
;

create view information_schema.udt_privileges(grantee, grantor, is_grantable, privilege_type, udt_catalog, udt_name, udt_schema) as
-- missing source code
;

create view information_schema.usage_privileges(grantee, grantor, is_grantable, object_catalog, object_name, object_schema, object_type, privilege_type) as
-- missing source code
;

create view information_schema.user_defined_types(character_maximum_length, character_octet_length, character_set_catalog, character_set_name, character_set_schema, collation_catalog, collation_name, collation_schema, data_type, datetime_precision, interval_precision, interval_type, is_final, is_instantiable, numeric_precision, numeric_precision_radix, numeric_scale, ordering_category, ordering_form, ordering_routine_catalog, ordering_routine_name, ordering_routine_schema, ref_dtd_identifier, reference_type, source_dtd_identifier, user_defined_type_catalog, user_defined_type_category, user_defined_type_name, user_defined_type_schema) as
-- missing source code
;

create view information_schema.user_mapping_options(authorization_identifier, foreign_server_catalog, foreign_server_name, option_name, option_value) as
-- missing source code
;

create view information_schema.user_mappings(authorization_identifier, foreign_server_catalog, foreign_server_name) as
-- missing source code
;

create view information_schema.view_column_usage(column_name, table_catalog, table_name, table_schema, view_catalog, view_name, view_schema) as
-- missing source code
;

create view information_schema.view_routine_usage(specific_catalog, specific_name, specific_schema, table_catalog, table_name, table_schema) as
-- missing source code
;

create view information_schema.view_table_usage(table_catalog, table_name, table_schema, view_catalog, view_name, view_schema) as
-- missing source code
;

create view information_schema.views(check_option, is_insertable_into, is_trigger_deletable, is_trigger_insertable_into, is_trigger_updatable, is_updatable, table_catalog, table_name, table_schema, view_definition) as
-- missing source code
;

create function pg_catalog."RI_FKey_cascade_del"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_cascade_del"() is 'referential integrity ON DELETE CASCADE';

create function pg_catalog."RI_FKey_cascade_upd"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_cascade_upd"() is 'referential integrity ON UPDATE CASCADE';

create function pg_catalog."RI_FKey_check_ins"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_check_ins"() is 'referential integrity FOREIGN KEY ... REFERENCES';

create function pg_catalog."RI_FKey_check_upd"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_check_upd"() is 'referential integrity FOREIGN KEY ... REFERENCES';

create function pg_catalog."RI_FKey_noaction_del"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_noaction_del"() is 'referential integrity ON DELETE NO ACTION';

create function pg_catalog."RI_FKey_noaction_upd"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_noaction_upd"() is 'referential integrity ON UPDATE NO ACTION';

create function pg_catalog."RI_FKey_restrict_del"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_restrict_del"() is 'referential integrity ON DELETE RESTRICT';

create function pg_catalog."RI_FKey_restrict_upd"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_restrict_upd"() is 'referential integrity ON UPDATE RESTRICT';

create function pg_catalog."RI_FKey_setdefault_del"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_setdefault_del"() is 'referential integrity ON DELETE SET DEFAULT';

create function pg_catalog."RI_FKey_setdefault_upd"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_setdefault_upd"() is 'referential integrity ON UPDATE SET DEFAULT';

create function pg_catalog."RI_FKey_setnull_del"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_setnull_del"() is 'referential integrity ON DELETE SET NULL';

create function pg_catalog."RI_FKey_setnull_upd"() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."RI_FKey_setnull_upd"() is 'referential integrity ON UPDATE SET NULL';

create function information_schema._pg_char_max_length(typid oid, typmod integer) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_char_octet_length(typid oid, typmod integer) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_datetime_precision(typid oid, typmod integer) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_expandarray(anyarray, OUT x anyelement, OUT n integer) returns SETOF record
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_index_position(oid, smallint) returns integer
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_interval_type(typid oid, mod integer) returns text
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_keysequal(smallint[], smallint[]) returns boolean
	immutable
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_numeric_precision(typid oid, typmod integer) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_numeric_precision_radix(typid oid, typmod integer) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_numeric_scale(typid oid, typmod integer) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_truetypid(pg_attribute, pg_type) returns oid
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function information_schema._pg_truetypmod(pg_attribute, pg_type) returns integer
	immutable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

create function pg_catalog.abbrev(cidr) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abbrev(cidr) is 'abbreviated display of cidr value';

create function pg_catalog.abbrev(inet) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abbrev(inet) is 'abbreviated display of inet value';

create function pg_catalog.abs(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abs(bigint) is 'absolute value';

create function pg_catalog.abs(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abs(double precision) is 'absolute value';

create function pg_catalog.abs(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abs(integer) is 'absolute value';

create function pg_catalog.abs(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abs(numeric) is 'absolute value';

create function pg_catalog.abs(real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abs(real) is 'absolute value';

create function pg_catalog.abs(smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.abs(smallint) is 'absolute value';

create function pg_catalog.aclcontains(aclitem[], aclitem) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclcontains(aclitem[], aclitem) is 'contains';

create function pg_catalog.acldefault("char", oid) returns aclitem[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.acldefault("char", oid) is 'show hardwired default privileges, primarily for use by the information schema';

create function pg_catalog.aclexplode(acl aclitem[], out grantee oid, out grantor oid, out is_grantable boolean, out privilege_type text) returns setof record
	stable
	strict
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclexplode(aclitem[], out oid, out oid, out boolean, out text) is 'convert ACL item array to table, primarily for use by information schema';

create function pg_catalog.aclinsert(aclitem[], aclitem) returns aclitem[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclinsert(aclitem[], aclitem) is 'add/update ACL item';

create function pg_catalog.aclitemeq(aclitem, aclitem) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclitemeq(aclitem, aclitem) is 'implementation of = operator';

create function pg_catalog.aclitemin(cstring) returns aclitem
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclitemin(cstring) is 'I/O';

create function pg_catalog.aclitemout(aclitem) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclitemout(aclitem) is 'I/O';

create function pg_catalog.aclremove(aclitem[], aclitem) returns aclitem[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.aclremove(aclitem[], aclitem) is 'remove ACL item';

create function pg_catalog.acos(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.acos(double precision) is 'arccosine';

create function pg_catalog.acosd(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.acosd(double precision) is 'arccosine, degrees';

create function pg_catalog.acosh(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.acosh(double precision) is 'inverse hyperbolic cosine';

create function pg_catalog.age(timestamp with time zone) returns interval
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.age(timestamp with time zone) is 'date difference from today preserving months and years';

create function pg_catalog.age(timestamp with time zone, timestamp with time zone) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.age(timestamp with time zone, timestamp with time zone) is 'date difference preserving months and years';

create function pg_catalog.age(timestamp without time zone) returns interval
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.age(timestamp) is 'date difference from today preserving months and years';

create function pg_catalog.age(timestamp, timestamp) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.age(timestamp, timestamp) is 'date difference preserving months and years';

create function pg_catalog.age(xid) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.age(xid) is 'age of a transaction ID, in transactions before current transaction';

create function pg_catalog.amvalidate(oid) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.amvalidate(oid) is 'validate an operator class';

create function pg_catalog.any_in(cstring) returns "any"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.any_in(cstring) is 'I/O';

create function pg_catalog.any_out("any") returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.any_out("any") is 'I/O';

create function pg_catalog.anyarray_in(cstring) returns anyarray
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyarray_in(cstring) is 'I/O';

create function pg_catalog.anyarray_out(anyarray) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyarray_out(anyarray) is 'I/O';

create function pg_catalog.anyarray_recv(internal) returns anyarray
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyarray_recv(internal) is 'I/O';

create function pg_catalog.anyarray_send(anyarray) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyarray_send(anyarray) is 'I/O';

create function pg_catalog.anyelement_in(cstring) returns anyelement
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyelement_in(cstring) is 'I/O';

create function pg_catalog.anyelement_out(anyelement) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyelement_out(anyelement) is 'I/O';

create function pg_catalog.anyenum_in(cstring) returns anyenum
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyenum_in(cstring) is 'I/O';

create function pg_catalog.anyenum_out(anyenum) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyenum_out(anyenum) is 'I/O';

create function pg_catalog.anynonarray_in(cstring) returns anynonarray
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anynonarray_in(cstring) is 'I/O';

create function pg_catalog.anynonarray_out(anynonarray) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anynonarray_out(anynonarray) is 'I/O';

create function pg_catalog.anyrange_in(cstring, oid, integer) returns anyrange
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyrange_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.anyrange_out(anyrange) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anyrange_out(anyrange) is 'I/O';

create function pg_catalog.anytextcat(anynonarray, text) returns text
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.anytextcat(anynonarray, text) is 'implementation of || operator';

create function pg_catalog.area(box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.area(box) is 'box area';

create function pg_catalog.area(circle) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.area(circle) is 'area of circle';

create function pg_catalog.area(path) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.area(path) is 'area of a closed path';

create function pg_catalog.areajoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.areajoinsel(internal, oid, internal, smallint, internal) is 'join selectivity for area-comparison operators';

create function pg_catalog.areasel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.areasel(internal, oid, internal, integer) is 'restriction selectivity for area-comparison operators';

create function pg_catalog.array_agg_array_finalfn(internal, anyarray) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_agg_array_finalfn(internal, anyarray) is 'aggregate final function';

create function pg_catalog.array_agg_array_transfn(internal, anyarray) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_agg_array_transfn(internal, anyarray) is 'aggregate transition function';

create function pg_catalog.array_agg_finalfn(internal, anynonarray) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_agg_finalfn(internal, anynonarray) is 'aggregate final function';

create function pg_catalog.array_agg_transfn(internal, anynonarray) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_agg_transfn(internal, anynonarray) is 'aggregate transition function';

create function pg_catalog.array_append(anyarray, anyelement) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_append(anyarray, anyelement) is 'append element onto end of array';

create function pg_catalog.array_cat(anyarray, anyarray) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_cat(anyarray, anyarray) is 'implementation of || operator';

create function pg_catalog.array_dims(anyarray) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_dims(anyarray) is 'array dimensions';

create function pg_catalog.array_eq(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_eq(anyarray, anyarray) is 'implementation of = operator';

create function pg_catalog.array_fill(anyelement, integer[]) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_fill(anyelement, integer[]) is 'array constructor with value';

create function pg_catalog.array_fill(anyelement, integer[], integer[]) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_fill(anyelement, integer[], integer[]) is 'array constructor with value';

create function pg_catalog.array_ge(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_ge(anyarray, anyarray) is 'implementation of >= operator';

create function pg_catalog.array_gt(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_gt(anyarray, anyarray) is 'implementation of > operator';

create function pg_catalog.array_in(cstring, oid, integer) returns anyarray
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.array_larger(anyarray, anyarray) returns anyarray
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_larger(anyarray, anyarray) is 'larger of two';

create function pg_catalog.array_le(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_le(anyarray, anyarray) is 'implementation of <= operator';

create function pg_catalog.array_length(anyarray, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_length(anyarray, integer) is 'array length';

create function pg_catalog.array_lower(anyarray, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_lower(anyarray, integer) is 'array lower dimension';

create function pg_catalog.array_lt(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_lt(anyarray, anyarray) is 'implementation of < operator';

create function pg_catalog.array_ndims(anyarray) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_ndims(anyarray) is 'number of array dimensions';

create function pg_catalog.array_ne(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_ne(anyarray, anyarray) is 'implementation of <> operator';

create function pg_catalog.array_out(anyarray) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_out(anyarray) is 'I/O';

create function pg_catalog.array_position(anyarray, anyelement) returns integer
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_position(anyarray, anyelement) is 'returns an offset of value in array';

create function pg_catalog.array_position(anyarray, anyelement, integer) returns integer
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_position(anyarray, anyelement, integer) is 'returns an offset of value in array with start index';

create function pg_catalog.array_positions(anyarray, anyelement) returns integer[]
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_positions(anyarray, anyelement) is 'returns an array of offsets of some value in array';

create function pg_catalog.array_prepend(anyelement, anyarray) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_prepend(anyelement, anyarray) is 'prepend element onto front of array';

create function pg_catalog.array_recv(internal, oid, integer) returns anyarray
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.array_remove(anyarray, anyelement) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_remove(anyarray, anyelement) is 'remove any occurrences of an element from an array';

create function pg_catalog.array_replace(anyarray, anyelement, anyelement) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_replace(anyarray, anyelement, anyelement) is 'replace any occurrences of an element in an array';

create function pg_catalog.array_send(anyarray) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_send(anyarray) is 'I/O';

create function pg_catalog.array_smaller(anyarray, anyarray) returns anyarray
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_smaller(anyarray, anyarray) is 'smaller of two';

create function pg_catalog.array_to_json(anyarray) returns json
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_to_json(anyarray) is 'map array to json';

create function pg_catalog.array_to_json(anyarray, boolean) returns json
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_to_json(anyarray, boolean) is 'map array to json with optional pretty printing';

create function pg_catalog.array_to_string(anyarray, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_to_string(anyarray, text) is 'concatenate array elements, using delimiter, into text';

create function pg_catalog.array_to_string(anyarray, text, text) returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_to_string(anyarray, text, text) is 'concatenate array elements, using delimiter and null string, into text';

create function pg_catalog.array_to_tsvector(text[]) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_to_tsvector(text[]) is 'build tsvector from array of lexemes';

create function pg_catalog.array_typanalyze(internal) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_typanalyze(internal) is 'array typanalyze';

create function pg_catalog.array_unnest_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_unnest_support(internal) is 'planner support for array_unnest';

create function pg_catalog.array_upper(anyarray, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.array_upper(anyarray, integer) is 'array upper dimension';

create function pg_catalog.arraycontained(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.arraycontained(anyarray, anyarray) is 'implementation of <@ operator';

create function pg_catalog.arraycontains(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.arraycontains(anyarray, anyarray) is 'implementation of @> operator';

create function pg_catalog.arraycontjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.arraycontjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity for array-containment operators';

create function pg_catalog.arraycontsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.arraycontsel(internal, oid, internal, integer) is 'restriction selectivity for array-containment operators';

create function pg_catalog.arrayoverlap(anyarray, anyarray) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.arrayoverlap(anyarray, anyarray) is 'implementation of && operator';

create function pg_catalog.ascii(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ascii(text) is 'convert first char to int4';

create function pg_catalog.ascii_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ascii_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for SQL_ASCII to MULE_INTERNAL';

create function pg_catalog.ascii_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ascii_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for SQL_ASCII to UTF8';

create function pg_catalog.asin(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.asin(double precision) is 'arcsine';

create function pg_catalog.asind(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.asind(double precision) is 'arcsine, degrees';

create function pg_catalog.asinh(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.asinh(double precision) is 'inverse hyperbolic sine';

create function pg_catalog.atan(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.atan(double precision) is 'arctangent';

create function pg_catalog.atan2(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.atan2(double precision, double precision) is 'arctangent, two arguments';

create function pg_catalog.atan2d(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.atan2d(double precision, double precision) is 'arctangent, two arguments, degrees';

create function pg_catalog.atand(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.atand(double precision) is 'arctangent, degrees';

create function pg_catalog.atanh(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.atanh(double precision) is 'inverse hyperbolic tangent';

create function pg_catalog.bernoulli(internal) returns tsm_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bernoulli(internal) is 'BERNOULLI tablesample method handler';

create function pg_catalog.big5_to_euc_tw(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.big5_to_euc_tw(integer, integer, cstring, internal, integer) is 'internal conversion function for BIG5 to EUC_TW';

create function pg_catalog.big5_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.big5_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for BIG5 to MULE_INTERNAL';

create function pg_catalog.big5_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.big5_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for BIG5 to UTF8';

create function pg_catalog.binary_upgrade_create_empty_extension(text, text, boolean, text, oid[], text[], text[]) returns void
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_create_empty_extension(text, text, boolean, text, oid[], text[], text[]) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_missing_value(oid, text, text) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_missing_value(oid, text, text) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_array_pg_type_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_array_pg_type_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_heap_pg_class_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_heap_pg_class_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_index_pg_class_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_index_pg_class_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_pg_authid_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_pg_authid_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_pg_enum_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_pg_enum_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_pg_type_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_pg_type_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_toast_pg_class_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_toast_pg_class_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_next_toast_pg_type_oid(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_next_toast_pg_type_oid(oid) is 'for use by pg_upgrade';

create function pg_catalog.binary_upgrade_set_record_init_privs(boolean) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.binary_upgrade_set_record_init_privs(boolean) is 'for use by pg_upgrade';

create function pg_catalog.bit(bigint, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit(bigint, integer) is 'convert int8 to bitstring';

create function pg_catalog.bit(bit, integer, boolean) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit(bit, integer, boolean) is 'adjust bit() to typmod length';

create function pg_catalog.bit(integer, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit(integer, integer) is 'convert int4 to bitstring';

create function pg_catalog.bit_in(cstring, oid, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.bit_length(bit) returns integer
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_length(bit) is 'length in bits';

create function pg_catalog.bit_length(bytea) returns integer
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_length(bytea) is 'length in bits';

create function pg_catalog.bit_length(text) returns integer
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_length(text) is 'length in bits';

create function pg_catalog.bit_out(bit) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_out(bit) is 'I/O';

create function pg_catalog.bit_recv(internal, oid, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.bit_send(bit) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bit_send(bit) is 'I/O';

create function pg_catalog.bitand(bit, bit) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitand(bit, bit) is 'implementation of & operator';

create function pg_catalog.bitcat(bit varying, bit varying) returns bit varying
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitcat(bit varying, bit varying) is 'implementation of || operator';

create function pg_catalog.bitcmp(bit, bit) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitcmp(bit, bit) is 'less-equal-greater';

create function pg_catalog.biteq(bit, bit) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.biteq(bit, bit) is 'implementation of = operator';

create function pg_catalog.bitge(bit, bit) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitge(bit, bit) is 'implementation of >= operator';

create function pg_catalog.bitgt(bit, bit) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitgt(bit, bit) is 'implementation of > operator';

create function pg_catalog.bitle(bit, bit) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitle(bit, bit) is 'implementation of <= operator';

create function pg_catalog.bitlt(bit, bit) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitlt(bit, bit) is 'implementation of < operator';

create function pg_catalog.bitne(bit, bit) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitne(bit, bit) is 'implementation of <> operator';

create function pg_catalog.bitnot(bit) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitnot(bit) is 'implementation of ~ operator';

create function pg_catalog.bitor(bit, bit) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitor(bit, bit) is 'implementation of | operator';

create function pg_catalog.bitshiftleft(bit, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitshiftleft(bit, integer) is 'implementation of << operator';

create function pg_catalog.bitshiftright(bit, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitshiftright(bit, integer) is 'implementation of >> operator';

create function pg_catalog.bittypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bittypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.bittypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bittypmodout(integer) is 'I/O typmod';

create function pg_catalog.bitxor(bit, bit) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bitxor(bit, bit) is 'implementation of # operator';

create function pg_catalog.bool(integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bool(integer) is 'convert int4 to boolean';

create function pg_catalog.bool(jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bool(jsonb) is 'convert jsonb to boolean';

create function pg_catalog.bool_accum(internal, boolean) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bool_accum(internal, boolean) is 'aggregate transition function';

create function pg_catalog.bool_accum_inv(internal, boolean) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bool_accum_inv(internal, boolean) is 'aggregate transition function';

create function pg_catalog.bool_alltrue(internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bool_alltrue(internal) is 'aggregate final function';

create function pg_catalog.bool_anytrue(internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bool_anytrue(internal) is 'aggregate final function';

create function pg_catalog.booland_statefunc(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.booland_statefunc(boolean, boolean) is 'aggregate transition function';

create function pg_catalog.booleq(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.booleq(boolean, boolean) is 'implementation of = operator';

create function pg_catalog.boolge(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolge(boolean, boolean) is 'implementation of >= operator';

create function pg_catalog.boolgt(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolgt(boolean, boolean) is 'implementation of > operator';

create function pg_catalog.boolin(cstring) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolin(cstring) is 'I/O';

create function pg_catalog.boolle(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolle(boolean, boolean) is 'implementation of <= operator';

create function pg_catalog.boollt(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boollt(boolean, boolean) is 'implementation of < operator';

create function pg_catalog.boolne(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolne(boolean, boolean) is 'implementation of <> operator';

create function pg_catalog.boolor_statefunc(boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolor_statefunc(boolean, boolean) is 'aggregate transition function';

create function pg_catalog.boolout(boolean) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolout(boolean) is 'I/O';

create function pg_catalog.boolrecv(internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolrecv(internal) is 'I/O';

create function pg_catalog.boolsend(boolean) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.boolsend(boolean) is 'I/O';

create function pg_catalog.bound_box(box, box) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bound_box(box, box) is 'bounding box of two boxes';

create function pg_catalog.box(circle) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box(circle) is 'convert circle to box';

create function pg_catalog.box(point) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box(point) is 'convert point to empty box';

create function pg_catalog.box(point, point) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box(point, point) is 'convert points to box';

create function pg_catalog.box(polygon) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box(polygon) is 'convert polygon to bounding box';

create function pg_catalog.box_above(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_above(box, box) is 'implementation of |>> operator';

create function pg_catalog.box_above_eq(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_above_eq(box, box) is 'implementation of >^ operator';

create function pg_catalog.box_add(box, point) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_add(box, point) is 'implementation of + operator';

create function pg_catalog.box_below(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_below(box, box) is 'implementation of <<| operator';

create function pg_catalog.box_below_eq(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_below_eq(box, box) is 'implementation of <^ operator';

create function pg_catalog.box_center(box) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_center(box) is 'implementation of @@ operator';

create function pg_catalog.box_contain(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_contain(box, box) is 'implementation of @> operator';

create function pg_catalog.box_contain_pt(box, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_contain_pt(box, point) is 'implementation of @> operator';

create function pg_catalog.box_contained(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_contained(box, box) is 'implementation of <@ operator';

create function pg_catalog.box_distance(box, box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_distance(box, box) is 'implementation of <-> operator';

create function pg_catalog.box_div(box, point) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_div(box, point) is 'implementation of / operator';

create function pg_catalog.box_eq(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_eq(box, box) is 'implementation of = operator';

create function pg_catalog.box_ge(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_ge(box, box) is 'implementation of >= operator';

create function pg_catalog.box_gt(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_gt(box, box) is 'implementation of > operator';

create function pg_catalog.box_in(cstring) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_in(cstring) is 'I/O';

create function pg_catalog.box_intersect(box, box) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_intersect(box, box) is 'implementation of # operator';

create function pg_catalog.box_le(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_le(box, box) is 'implementation of <= operator';

create function pg_catalog.box_left(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_left(box, box) is 'implementation of << operator';

create function pg_catalog.box_lt(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_lt(box, box) is 'implementation of < operator';

create function pg_catalog.box_mul(box, point) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_mul(box, point) is 'implementation of * operator';

create function pg_catalog.box_out(box) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_out(box) is 'I/O';

create function pg_catalog.box_overabove(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_overabove(box, box) is 'implementation of |&> operator';

create function pg_catalog.box_overbelow(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_overbelow(box, box) is 'implementation of &<| operator';

create function pg_catalog.box_overlap(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_overlap(box, box) is 'implementation of && operator';

create function pg_catalog.box_overleft(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_overleft(box, box) is 'implementation of &< operator';

create function pg_catalog.box_overright(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_overright(box, box) is 'implementation of &> operator';

create function pg_catalog.box_recv(internal) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_recv(internal) is 'I/O';

create function pg_catalog.box_right(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_right(box, box) is 'implementation of >> operator';

create function pg_catalog.box_same(box, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_same(box, box) is 'implementation of ~= operator';

create function pg_catalog.box_send(box) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_send(box) is 'I/O';

create function pg_catalog.box_sub(box, point) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.box_sub(box, point) is 'implementation of - operator';

create function pg_catalog.bpchar("char") returns char
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar("char") is 'convert char to char(n)';

create function pg_catalog.bpchar(char, integer, boolean) returns char
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar(char, integer, boolean) is 'adjust char() to typmod length';

create function pg_catalog.bpchar(name) returns char
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar(name) is 'convert name to char(n)';

create function pg_catalog.bpchar_larger(char, char) returns char
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_larger(char, char) is 'larger of two';

create function pg_catalog.bpchar_pattern_ge(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_pattern_ge(char, char) is 'implementation of ~>=~ operator';

create function pg_catalog.bpchar_pattern_gt(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_pattern_gt(char, char) is 'implementation of ~>~ operator';

create function pg_catalog.bpchar_pattern_le(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_pattern_le(char, char) is 'implementation of ~<=~ operator';

create function pg_catalog.bpchar_pattern_lt(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_pattern_lt(char, char) is 'implementation of ~<~ operator';

create function pg_catalog.bpchar_smaller(char, char) returns char
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_smaller(char, char) is 'smaller of two';

create function pg_catalog.bpchar_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchar_sortsupport(internal) is 'sort support';

create function pg_catalog.bpcharcmp(char, char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharcmp(char, char) is 'less-equal-greater';

create function pg_catalog.bpchareq(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchareq(char, char) is 'implementation of = operator';

create function pg_catalog.bpcharge(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharge(char, char) is 'implementation of >= operator';

create function pg_catalog.bpchargt(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchargt(char, char) is 'implementation of > operator';

create function pg_catalog.bpchariclike(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchariclike(char, text) is 'implementation of ~~* operator';

create function pg_catalog.bpcharicnlike(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharicnlike(char, text) is 'implementation of !~~* operator';

create function pg_catalog.bpcharicregexeq(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharicregexeq(char, text) is 'implementation of ~* operator';

create function pg_catalog.bpcharicregexne(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharicregexne(char, text) is 'implementation of !~* operator';

create function pg_catalog.bpcharin(cstring, oid, integer) returns char
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharin(cstring, oid, integer) is 'I/O';

create function pg_catalog.bpcharle(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharle(char, char) is 'implementation of <= operator';

create function pg_catalog.bpcharlike(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharlike(char, text) is 'implementation of ~~ operator';

create function pg_catalog.bpcharlt(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharlt(char, char) is 'implementation of < operator';

create function pg_catalog.bpcharne(char, char) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharne(char, char) is 'implementation of <> operator';

create function pg_catalog.bpcharnlike(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharnlike(char, text) is 'implementation of !~~ operator';

create function pg_catalog.bpcharout(char) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharout(char) is 'I/O';

create function pg_catalog.bpcharrecv(internal, oid, integer) returns char
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharrecv(internal, oid, integer) is 'I/O';

create function pg_catalog.bpcharregexeq(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharregexeq(char, text) is 'implementation of ~ operator';

create function pg_catalog.bpcharregexne(char, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharregexne(char, text) is 'implementation of !~ operator';

create function pg_catalog.bpcharsend(char) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpcharsend(char) is 'I/O';

create function pg_catalog.bpchartypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchartypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.bpchartypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bpchartypmodout(integer) is 'I/O typmod';

create function pg_catalog.brin_desummarize_range(regclass, bigint) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_desummarize_range(regclass, bigint) is 'brin: desummarize page range';

create function pg_catalog.brin_inclusion_add_value(internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_inclusion_add_value(internal, internal, internal, internal) is 'BRIN inclusion support';

create function pg_catalog.brin_inclusion_consistent(internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_inclusion_consistent(internal, internal, internal) is 'BRIN inclusion support';

create function pg_catalog.brin_inclusion_opcinfo(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_inclusion_opcinfo(internal) is 'BRIN inclusion support';

create function pg_catalog.brin_inclusion_union(internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_inclusion_union(internal, internal, internal) is 'BRIN inclusion support';

create function pg_catalog.brin_minmax_add_value(internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_minmax_add_value(internal, internal, internal, internal) is 'BRIN minmax support';

create function pg_catalog.brin_minmax_consistent(internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_minmax_consistent(internal, internal, internal) is 'BRIN minmax support';

create function pg_catalog.brin_minmax_opcinfo(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_minmax_opcinfo(internal) is 'BRIN minmax support';

create function pg_catalog.brin_minmax_union(internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_minmax_union(internal, internal, internal) is 'BRIN minmax support';

create function pg_catalog.brin_summarize_new_values(regclass) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_summarize_new_values(regclass) is 'brin: standalone scan new table pages';

create function pg_catalog.brin_summarize_range(regclass, bigint) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brin_summarize_range(regclass, bigint) is 'brin: standalone scan new table pages';

create function pg_catalog.brinhandler(internal) returns index_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.brinhandler(internal) is 'brin index access method handler';

create function pg_catalog.broadcast(inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.broadcast(inet) is 'broadcast address of network';

create function pg_catalog.btarraycmp(anyarray, anyarray) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btarraycmp(anyarray, anyarray) is 'less-equal-greater';

create function pg_catalog.btboolcmp(boolean, boolean) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btboolcmp(boolean, boolean) is 'less-equal-greater';

create function pg_catalog.btbpchar_pattern_cmp(char, char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btbpchar_pattern_cmp(char, char) is 'less-equal-greater';

create function pg_catalog.btbpchar_pattern_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btbpchar_pattern_sortsupport(internal) is 'sort support';

create function pg_catalog.btcharcmp("char", "char") returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btcharcmp("char", "char") is 'less-equal-greater';

create function pg_catalog.btfloat48cmp(real, double precision) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btfloat48cmp(real, double precision) is 'less-equal-greater';

create function pg_catalog.btfloat4cmp(real, real) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btfloat4cmp(real, real) is 'less-equal-greater';

create function pg_catalog.btfloat4sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btfloat4sortsupport(internal) is 'sort support';

create function pg_catalog.btfloat84cmp(double precision, real) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btfloat84cmp(double precision, real) is 'less-equal-greater';

create function pg_catalog.btfloat8cmp(double precision, double precision) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btfloat8cmp(double precision, double precision) is 'less-equal-greater';

create function pg_catalog.btfloat8sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btfloat8sortsupport(internal) is 'sort support';

create function pg_catalog.bthandler(internal) returns index_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bthandler(internal) is 'btree index access method handler';

create function pg_catalog.btint24cmp(smallint, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint24cmp(smallint, integer) is 'less-equal-greater';

create function pg_catalog.btint28cmp(smallint, bigint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint28cmp(smallint, bigint) is 'less-equal-greater';

create function pg_catalog.btint2cmp(smallint, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint2cmp(smallint, smallint) is 'less-equal-greater';

create function pg_catalog.btint2sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint2sortsupport(internal) is 'sort support';

create function pg_catalog.btint42cmp(integer, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint42cmp(integer, smallint) is 'less-equal-greater';

create function pg_catalog.btint48cmp(integer, bigint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint48cmp(integer, bigint) is 'less-equal-greater';

create function pg_catalog.btint4cmp(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint4cmp(integer, integer) is 'less-equal-greater';

create function pg_catalog.btint4sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint4sortsupport(internal) is 'sort support';

create function pg_catalog.btint82cmp(bigint, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint82cmp(bigint, smallint) is 'less-equal-greater';

create function pg_catalog.btint84cmp(bigint, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint84cmp(bigint, integer) is 'less-equal-greater';

create function pg_catalog.btint8cmp(bigint, bigint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint8cmp(bigint, bigint) is 'less-equal-greater';

create function pg_catalog.btint8sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btint8sortsupport(internal) is 'sort support';

create function pg_catalog.btnamecmp(name, name) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btnamecmp(name, name) is 'less-equal-greater';

create function pg_catalog.btnamesortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btnamesortsupport(internal) is 'sort support';

create function pg_catalog.btnametextcmp(name, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btnametextcmp(name, text) is 'less-equal-greater';

create function pg_catalog.btoidcmp(oid, oid) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btoidcmp(oid, oid) is 'less-equal-greater';

create function pg_catalog.btoidsortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btoidsortsupport(internal) is 'sort support';

create function pg_catalog.btoidvectorcmp(oidvector, oidvector) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btoidvectorcmp(oidvector, oidvector) is 'less-equal-greater';

create function pg_catalog.btrecordcmp(record, record) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btrecordcmp(record, record) is 'less-equal-greater';

create function pg_catalog.btrecordimagecmp(record, record) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btrecordimagecmp(record, record) is 'less-equal-greater based on byte images';

create function pg_catalog.btrim(bytea, bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btrim(bytea, bytea) is 'trim both ends of string';

create function pg_catalog.btrim(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btrim(text) is 'trim spaces from both ends of string';

create function pg_catalog.btrim(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.btrim(text, text) is 'trim selected characters from both ends of string';

create function pg_catalog.bttext_pattern_cmp(text, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bttext_pattern_cmp(text, text) is 'less-equal-greater';

create function pg_catalog.bttext_pattern_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bttext_pattern_sortsupport(internal) is 'sort support';

create function pg_catalog.bttextcmp(text, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bttextcmp(text, text) is 'less-equal-greater';

create function pg_catalog.bttextnamecmp(text, name) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bttextnamecmp(text, name) is 'less-equal-greater';

create function pg_catalog.bttextsortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bttextsortsupport(internal) is 'sort support';

create function pg_catalog.bttidcmp(tid, tid) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bttidcmp(tid, tid) is 'less-equal-greater';

create function pg_catalog.bytea_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bytea_sortsupport(internal) is 'sort support';

create function pg_catalog.bytea_string_agg_finalfn(internal) returns bytea
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bytea_string_agg_finalfn(internal) is 'aggregate final function';

create function pg_catalog.bytea_string_agg_transfn(internal, bytea, bytea) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bytea_string_agg_transfn(internal, bytea, bytea) is 'aggregate transition function';

create function pg_catalog.byteacat(bytea, bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteacat(bytea, bytea) is 'implementation of || operator';

create function pg_catalog.byteacmp(bytea, bytea) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteacmp(bytea, bytea) is 'less-equal-greater';

create function pg_catalog.byteaeq(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteaeq(bytea, bytea) is 'implementation of = operator';

create function pg_catalog.byteage(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteage(bytea, bytea) is 'implementation of >= operator';

create function pg_catalog.byteagt(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteagt(bytea, bytea) is 'implementation of > operator';

create function pg_catalog.byteain(cstring) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteain(cstring) is 'I/O';

create function pg_catalog.byteale(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteale(bytea, bytea) is 'implementation of <= operator';

create function pg_catalog.bytealike(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bytealike(bytea, bytea) is 'implementation of ~~ operator';

create function pg_catalog.bytealt(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bytealt(bytea, bytea) is 'implementation of < operator';

create function pg_catalog.byteane(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteane(bytea, bytea) is 'implementation of <> operator';

create function pg_catalog.byteanlike(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteanlike(bytea, bytea) is 'implementation of !~~ operator';

create function pg_catalog.byteaout(bytea) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteaout(bytea) is 'I/O';

create function pg_catalog.bytearecv(internal) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.bytearecv(internal) is 'I/O';

create function pg_catalog.byteasend(bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.byteasend(bytea) is 'I/O';

create function pg_catalog.cardinality(anyarray) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cardinality(anyarray) is 'array cardinality';

create function pg_catalog.cash_cmp(money, money) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_cmp(money, money) is 'less-equal-greater';

create function pg_catalog.cash_div_cash(money, money) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_div_cash(money, money) is 'implementation of / operator';

create function pg_catalog.cash_div_flt4(money, real) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_div_flt4(money, real) is 'implementation of / operator';

create function pg_catalog.cash_div_flt8(money, double precision) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_div_flt8(money, double precision) is 'implementation of / operator';

create function pg_catalog.cash_div_int2(money, smallint) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_div_int2(money, smallint) is 'implementation of / operator';

create function pg_catalog.cash_div_int4(money, integer) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_div_int4(money, integer) is 'implementation of / operator';

create function pg_catalog.cash_div_int8(money, bigint) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_div_int8(money, bigint) is 'implementation of / operator';

create function pg_catalog.cash_eq(money, money) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_eq(money, money) is 'implementation of = operator';

create function pg_catalog.cash_ge(money, money) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_ge(money, money) is 'implementation of >= operator';

create function pg_catalog.cash_gt(money, money) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_gt(money, money) is 'implementation of > operator';

create function pg_catalog.cash_in(cstring) returns money
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_in(cstring) is 'I/O';

create function pg_catalog.cash_le(money, money) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_le(money, money) is 'implementation of <= operator';

create function pg_catalog.cash_lt(money, money) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_lt(money, money) is 'implementation of < operator';

create function pg_catalog.cash_mi(money, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_mi(money, money) is 'implementation of - operator';

create function pg_catalog.cash_mul_flt4(money, real) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_mul_flt4(money, real) is 'implementation of * operator';

create function pg_catalog.cash_mul_flt8(money, double precision) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_mul_flt8(money, double precision) is 'implementation of * operator';

create function pg_catalog.cash_mul_int2(money, smallint) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_mul_int2(money, smallint) is 'implementation of * operator';

create function pg_catalog.cash_mul_int4(money, integer) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_mul_int4(money, integer) is 'implementation of * operator';

create function pg_catalog.cash_mul_int8(money, bigint) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_mul_int8(money, bigint) is 'implementation of * operator';

create function pg_catalog.cash_ne(money, money) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_ne(money, money) is 'implementation of <> operator';

create function pg_catalog.cash_out(money) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_out(money) is 'I/O';

create function pg_catalog.cash_pl(money, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_pl(money, money) is 'implementation of + operator';

create function pg_catalog.cash_recv(internal) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_recv(internal) is 'I/O';

create function pg_catalog.cash_send(money) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_send(money) is 'I/O';

create function pg_catalog.cash_words(money) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cash_words(money) is 'output money amount as words';

create function pg_catalog.cashlarger(money, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cashlarger(money, money) is 'larger of two';

create function pg_catalog.cashsmaller(money, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cashsmaller(money, money) is 'smaller of two';

create function pg_catalog.cbrt(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cbrt(double precision) is 'cube root';

create function pg_catalog.ceil(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ceil(double precision) is 'nearest integer >= value';

create function pg_catalog.ceil(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ceil(numeric) is 'nearest integer >= value';

create function pg_catalog.ceiling(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ceiling(double precision) is 'nearest integer >= value';

create function pg_catalog.ceiling(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ceiling(numeric) is 'nearest integer >= value';

create function pg_catalog.center(box) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.center(box) is 'center of';

create function pg_catalog.center(circle) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.center(circle) is 'center of';

create function pg_catalog.char(integer) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.char(integer) is 'convert int4 to char';

create function pg_catalog.char(text) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.char(text) is 'convert text to char';

create function pg_catalog.char_length(char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.char_length(char) is 'character length';

create function pg_catalog.char_length(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.char_length(text) is 'character length';

create function pg_catalog.character_length(char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.character_length(char) is 'character length';

create function pg_catalog.character_length(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.character_length(text) is 'character length';

create function pg_catalog.chareq("char", "char") returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.chareq("char", "char") is 'implementation of = operator';

create function pg_catalog.charge("char", "char") returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charge("char", "char") is 'implementation of >= operator';

create function pg_catalog.chargt("char", "char") returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.chargt("char", "char") is 'implementation of > operator';

create function pg_catalog.charin(cstring) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charin(cstring) is 'I/O';

create function pg_catalog.charle("char", "char") returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charle("char", "char") is 'implementation of <= operator';

create function pg_catalog.charlt("char", "char") returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charlt("char", "char") is 'implementation of < operator';

create function pg_catalog.charne("char", "char") returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charne("char", "char") is 'implementation of <> operator';

create function pg_catalog.charout("char") returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charout("char") is 'I/O';

create function pg_catalog.charrecv(internal) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charrecv(internal) is 'I/O';

create function pg_catalog.charsend("char") returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.charsend("char") is 'I/O';

create function pg_catalog.chr(integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.chr(integer) is 'convert int4 to char';

create function pg_catalog.cideq(cid, cid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cideq(cid, cid) is 'implementation of = operator';

create function pg_catalog.cidin(cstring) returns cid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidin(cstring) is 'I/O';

create function pg_catalog.cidout(cid) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidout(cid) is 'I/O';

create function pg_catalog.cidr(inet) returns cidr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidr(inet) is 'convert inet to cidr';

create function pg_catalog.cidr_in(cstring) returns cidr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidr_in(cstring) is 'I/O';

create function pg_catalog.cidr_out(cidr) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidr_out(cidr) is 'I/O';

create function pg_catalog.cidr_recv(internal) returns cidr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidr_recv(internal) is 'I/O';

create function pg_catalog.cidr_send(cidr) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidr_send(cidr) is 'I/O';

create function pg_catalog.cidrecv(internal) returns cid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidrecv(internal) is 'I/O';

create function pg_catalog.cidsend(cid) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cidsend(cid) is 'I/O';

create function pg_catalog.circle(box) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle(box) is 'convert box to circle';

create function pg_catalog.circle(point, double precision) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle(point, double precision) is 'convert point and radius to circle';

create function pg_catalog.circle(polygon) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle(polygon) is 'convert polygon to circle';

create function pg_catalog.circle_above(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_above(circle, circle) is 'implementation of |>> operator';

create function pg_catalog.circle_add_pt(circle, point) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_add_pt(circle, point) is 'implementation of + operator';

create function pg_catalog.circle_below(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_below(circle, circle) is 'implementation of <<| operator';

create function pg_catalog.circle_center(circle) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_center(circle) is 'implementation of @@ operator';

create function pg_catalog.circle_contain(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_contain(circle, circle) is 'implementation of @> operator';

create function pg_catalog.circle_contain_pt(circle, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_contain_pt(circle, point) is 'implementation of @> operator';

create function pg_catalog.circle_contained(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_contained(circle, circle) is 'implementation of <@ operator';

create function pg_catalog.circle_distance(circle, circle) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_distance(circle, circle) is 'implementation of <-> operator';

create function pg_catalog.circle_div_pt(circle, point) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_div_pt(circle, point) is 'implementation of / operator';

create function pg_catalog.circle_eq(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_eq(circle, circle) is 'implementation of = operator';

create function pg_catalog.circle_ge(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_ge(circle, circle) is 'implementation of >= operator';

create function pg_catalog.circle_gt(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_gt(circle, circle) is 'implementation of > operator';

create function pg_catalog.circle_in(cstring) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_in(cstring) is 'I/O';

create function pg_catalog.circle_le(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_le(circle, circle) is 'implementation of <= operator';

create function pg_catalog.circle_left(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_left(circle, circle) is 'implementation of << operator';

create function pg_catalog.circle_lt(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_lt(circle, circle) is 'implementation of < operator';

create function pg_catalog.circle_mul_pt(circle, point) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_mul_pt(circle, point) is 'implementation of * operator';

create function pg_catalog.circle_ne(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_ne(circle, circle) is 'implementation of <> operator';

create function pg_catalog.circle_out(circle) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_out(circle) is 'I/O';

create function pg_catalog.circle_overabove(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_overabove(circle, circle) is 'implementation of |&> operator';

create function pg_catalog.circle_overbelow(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_overbelow(circle, circle) is 'implementation of &<| operator';

create function pg_catalog.circle_overlap(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_overlap(circle, circle) is 'implementation of && operator';

create function pg_catalog.circle_overleft(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_overleft(circle, circle) is 'implementation of &< operator';

create function pg_catalog.circle_overright(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_overright(circle, circle) is 'implementation of &> operator';

create function pg_catalog.circle_recv(internal) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_recv(internal) is 'I/O';

create function pg_catalog.circle_right(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_right(circle, circle) is 'implementation of >> operator';

create function pg_catalog.circle_same(circle, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_same(circle, circle) is 'implementation of ~= operator';

create function pg_catalog.circle_send(circle) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_send(circle) is 'I/O';

create function pg_catalog.circle_sub_pt(circle, point) returns circle
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.circle_sub_pt(circle, point) is 'implementation of - operator';

create function pg_catalog.clock_timestamp() returns timestamp with time zone
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.clock_timestamp() is 'current clock time';

create function pg_catalog.close_lb(line, box) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_lb(line, box) is 'implementation of ## operator';

create function pg_catalog.close_ls(line, lseg) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_ls(line, lseg) is 'implementation of ## operator';

create function pg_catalog.close_lseg(lseg, lseg) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_lseg(lseg, lseg) is 'implementation of ## operator';

create function pg_catalog.close_pb(point, box) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_pb(point, box) is 'implementation of ## operator';

create function pg_catalog.close_pl(point, line) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_pl(point, line) is 'implementation of ## operator';

create function pg_catalog.close_ps(point, lseg) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_ps(point, lseg) is 'implementation of ## operator';

create function pg_catalog.close_sb(lseg, box) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_sb(lseg, box) is 'implementation of ## operator';

create function pg_catalog.close_sl(lseg, line) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.close_sl(lseg, line) is 'implementation of ## operator';

create function pg_catalog.col_description(oid, integer) returns text
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.col_description(oid, integer) is 'get description for table column';

create function pg_catalog.concat("any") returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.concat("any") is 'concatenate values';

create function pg_catalog.concat_ws(text, "any") returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.concat_ws(text, "any") is 'concatenate values with separators';

create function pg_catalog.contjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.contjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity for containment comparison operators';

create function pg_catalog.contsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.contsel(internal, oid, internal, integer) is 'restriction selectivity for containment comparison operators';

create function pg_catalog.convert(bytea, name, name) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.convert(bytea, name, name) is 'convert string with specified encoding names';

create function pg_catalog.convert_from(bytea, name) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.convert_from(bytea, name) is 'convert string with specified source encoding name';

create function pg_catalog.convert_to(text, name) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.convert_to(text, name) is 'convert string with specified destination encoding name';

create function pg_catalog.cos(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cos(double precision) is 'cosine';

create function pg_catalog.cosd(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cosd(double precision) is 'cosine, degrees';

create function pg_catalog.cosh(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cosh(double precision) is 'hyperbolic cosine';

create function pg_catalog.cot(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cot(double precision) is 'cotangent';

create function pg_catalog.cotd(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cotd(double precision) is 'cotangent, degrees';

create function pg_catalog.cstring_in(cstring) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cstring_in(cstring) is 'I/O';

create function pg_catalog.cstring_out(cstring) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cstring_out(cstring) is 'I/O';

create function pg_catalog.cstring_recv(internal) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cstring_recv(internal) is 'I/O';

create function pg_catalog.cstring_send(cstring) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cstring_send(cstring) is 'I/O';

create function pg_catalog.cume_dist() returns double precision
	immutable
	window
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cume_dist() is 'fractional row number within partition';

create function pg_catalog.cume_dist_final(internal, "any") returns double precision
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cume_dist_final(internal, "any") is 'aggregate final function';

create function pg_catalog.current_database() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.current_database() is 'name of the current database';

create function pg_catalog.current_query() returns text
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.current_query() is 'get the currently executing query';

create function pg_catalog."current_schema"() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."current_schema"() is 'current schema name';

create function pg_catalog.current_schemas(boolean) returns name[]
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.current_schemas(boolean) is 'current schema search list';

create function pg_catalog.current_setting(text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.current_setting(text) is 'SHOW X as a function';

create function pg_catalog.current_setting(text, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.current_setting(text, boolean) is 'SHOW X as a function, optionally no error for missing variable';

create function pg_catalog."current_user"() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."current_user"() is 'current user name';

create function pg_catalog.currtid(oid, tid) returns tid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.currtid(oid, tid) is 'latest tid of a tuple';

create function pg_catalog.currtid2(text, tid) returns tid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.currtid2(text, tid) is 'latest tid of a tuple';

create function pg_catalog.currval(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.currval(regclass) is 'sequence current value';

create function pg_catalog.cursor_to_xml(count integer, cursor refcursor, nulls boolean, tableforest boolean, targetns text) returns xml
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cursor_to_xml(integer, refcursor, boolean, boolean, text) is 'map rows from cursor to XML';

create function pg_catalog.cursor_to_xmlschema(cursor refcursor, nulls boolean, tableforest boolean, targetns text) returns xml
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.cursor_to_xmlschema(refcursor, boolean, boolean, text) is 'map cursor structure to XML Schema';

create function pg_catalog.database_to_xml(nulls boolean, tableforest boolean, targetns text) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.database_to_xml(boolean, boolean, text) is 'map database contents to XML';

create function pg_catalog.database_to_xml_and_xmlschema(nulls boolean, tableforest boolean, targetns text) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.database_to_xml_and_xmlschema(boolean, boolean, text) is 'map database contents and structure to XML and XML Schema';

create function pg_catalog.database_to_xmlschema(nulls boolean, tableforest boolean, targetns text) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.database_to_xmlschema(boolean, boolean, text) is 'map database structure to XML Schema';

create function pg_catalog.date(timestamp with time zone) returns date
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date(timestamp with time zone) is 'convert timestamp with time zone to date';

create function pg_catalog.date(timestamp) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date(timestamp) is 'convert timestamp to date';

create function pg_catalog.date_cmp(date, date) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_cmp(date, date) is 'less-equal-greater';

create function pg_catalog.date_cmp_timestamp(date, timestamp) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_cmp_timestamp(date, timestamp) is 'less-equal-greater';

create function pg_catalog.date_cmp_timestamptz(date, timestamp with time zone) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_cmp_timestamptz(date, timestamp with time zone) is 'less-equal-greater';

create function pg_catalog.date_eq(date, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_eq(date, date) is 'implementation of = operator';

create function pg_catalog.date_eq_timestamp(date, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_eq_timestamp(date, timestamp) is 'implementation of = operator';

create function pg_catalog.date_eq_timestamptz(date, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_eq_timestamptz(date, timestamp with time zone) is 'implementation of = operator';

create function pg_catalog.date_ge(date, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_ge(date, date) is 'implementation of >= operator';

create function pg_catalog.date_ge_timestamp(date, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_ge_timestamp(date, timestamp) is 'implementation of >= operator';

create function pg_catalog.date_ge_timestamptz(date, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_ge_timestamptz(date, timestamp with time zone) is 'implementation of >= operator';

create function pg_catalog.date_gt(date, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_gt(date, date) is 'implementation of > operator';

create function pg_catalog.date_gt_timestamp(date, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_gt_timestamp(date, timestamp) is 'implementation of > operator';

create function pg_catalog.date_gt_timestamptz(date, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_gt_timestamptz(date, timestamp with time zone) is 'implementation of > operator';

create function pg_catalog.date_in(cstring) returns date
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_in(cstring) is 'I/O';

create function pg_catalog.date_larger(date, date) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_larger(date, date) is 'larger of two';

create function pg_catalog.date_le(date, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_le(date, date) is 'implementation of <= operator';

create function pg_catalog.date_le_timestamp(date, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_le_timestamp(date, timestamp) is 'implementation of <= operator';

create function pg_catalog.date_le_timestamptz(date, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_le_timestamptz(date, timestamp with time zone) is 'implementation of <= operator';

create function pg_catalog.date_lt(date, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_lt(date, date) is 'implementation of < operator';

create function pg_catalog.date_lt_timestamp(date, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_lt_timestamp(date, timestamp) is 'implementation of < operator';

create function pg_catalog.date_lt_timestamptz(date, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_lt_timestamptz(date, timestamp with time zone) is 'implementation of < operator';

create function pg_catalog.date_mi(date, date) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_mi(date, date) is 'implementation of - operator';

create function pg_catalog.date_mi_interval(date, interval) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_mi_interval(date, interval) is 'implementation of - operator';

create function pg_catalog.date_mii(date, integer) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_mii(date, integer) is 'implementation of - operator';

create function pg_catalog.date_ne(date, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_ne(date, date) is 'implementation of <> operator';

create function pg_catalog.date_ne_timestamp(date, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_ne_timestamp(date, timestamp) is 'implementation of <> operator';

create function pg_catalog.date_ne_timestamptz(date, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_ne_timestamptz(date, timestamp with time zone) is 'implementation of <> operator';

create function pg_catalog.date_out(date) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_out(date) is 'I/O';

create function pg_catalog.date_part(text, date) returns double precision
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_part(text, date) is 'extract field from date';

create function pg_catalog.date_part(text, interval) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_part(text, interval) is 'extract field from interval';

create function pg_catalog.date_part(text, time with time zone) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_part(text, time with time zone) is 'extract field from time with time zone';

create function pg_catalog.date_part(text, time) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_part(text, time) is 'extract field from time';

create function pg_catalog.date_part(text, timestamp with time zone) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_part(text, timestamp with time zone) is 'extract field from timestamp with time zone';

create function pg_catalog.date_part(text, timestamp) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_part(text, timestamp) is 'extract field from timestamp';

create function pg_catalog.date_pl_interval(date, interval) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_pl_interval(date, interval) is 'implementation of + operator';

create function pg_catalog.date_pli(date, integer) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_pli(date, integer) is 'implementation of + operator';

create function pg_catalog.date_recv(internal) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_recv(internal) is 'I/O';

create function pg_catalog.date_send(date) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_send(date) is 'I/O';

create function pg_catalog.date_smaller(date, date) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_smaller(date, date) is 'smaller of two';

create function pg_catalog.date_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_sortsupport(internal) is 'sort support';

create function pg_catalog.date_trunc(text, interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_trunc(text, interval) is 'truncate interval to specified units';

create function pg_catalog.date_trunc(text, timestamp with time zone) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_trunc(text, timestamp with time zone) is 'truncate timestamp with time zone to specified units';

create function pg_catalog.date_trunc(text, timestamp with time zone, text) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_trunc(text, timestamp with time zone, text) is 'truncate timestamp with time zone to specified units in specified time zone';

create function pg_catalog.date_trunc(text, timestamp) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.date_trunc(text, timestamp) is 'truncate timestamp to specified units';

create function pg_catalog.daterange(date, date) returns daterange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.daterange(date, date) is 'daterange constructor';

create function pg_catalog.daterange(date, date, text) returns daterange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.daterange(date, date, text) is 'daterange constructor';

create function pg_catalog.daterange_canonical(daterange) returns daterange
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.daterange_canonical(daterange) is 'convert a date range to canonical form';

create function pg_catalog.daterange_subdiff(date, date) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.daterange_subdiff(date, date) is 'float8 difference of two date values';

create function pg_catalog.datetime_pl(date, time) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.datetime_pl(date, time) is 'implementation of + operator';

create function pg_catalog.datetimetz_pl(date, time with time zone) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.datetimetz_pl(date, time with time zone) is 'implementation of + operator';

create function pg_catalog.dcbrt(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dcbrt(double precision) is 'implementation of ||/ operator';

create function pg_catalog.decode(text, text) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.decode(text, text) is 'convert ascii-encoded text string into bytea value';

create function pg_catalog.degrees(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.degrees(double precision) is 'radians to degrees';

create function pg_catalog.dense_rank() returns bigint
	immutable
	window
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dense_rank() is 'integer rank without gaps';

create function pg_catalog.dense_rank_final(internal, "any") returns bigint
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dense_rank_final(internal, "any") is 'aggregate final function';

create function pg_catalog.dexp(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dexp(double precision) is 'natural exponential (e^x)';

create function pg_catalog.diagonal(box) returns lseg
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.diagonal(box) is 'box diagonal';

create function pg_catalog.diameter(circle) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.diameter(circle) is 'diameter of circle';

create function pg_catalog.dispell_init(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dispell_init(internal) is '(internal)';

create function pg_catalog.dispell_lexize(internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dispell_lexize(internal, internal, internal, internal) is '(internal)';

create function pg_catalog.dist_cpoint(circle, point) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_cpoint(circle, point) is 'implementation of <-> operator';

create function pg_catalog.dist_cpoly(circle, polygon) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_cpoly(circle, polygon) is 'implementation of <-> operator';

create function pg_catalog.dist_lb(line, box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_lb(line, box) is 'implementation of <-> operator';

create function pg_catalog.dist_pb(point, box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_pb(point, box) is 'implementation of <-> operator';

create function pg_catalog.dist_pc(point, circle) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_pc(point, circle) is 'implementation of <-> operator';

create function pg_catalog.dist_pl(point, line) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_pl(point, line) is 'implementation of <-> operator';

create function pg_catalog.dist_polyp(polygon, point) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_polyp(polygon, point) is 'implementation of <-> operator';

create function pg_catalog.dist_ppath(point, path) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_ppath(point, path) is 'implementation of <-> operator';

create function pg_catalog.dist_ppoly(point, polygon) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_ppoly(point, polygon) is 'implementation of <-> operator';

create function pg_catalog.dist_ps(point, lseg) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_ps(point, lseg) is 'implementation of <-> operator';

create function pg_catalog.dist_sb(lseg, box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_sb(lseg, box) is 'implementation of <-> operator';

create function pg_catalog.dist_sl(lseg, line) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dist_sl(lseg, line) is 'implementation of <-> operator';

create function pg_catalog.div(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.div(numeric, numeric) is 'trunc(x/y)';

create function pg_catalog.dlog1(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dlog1(double precision) is 'natural logarithm';

create function pg_catalog.dlog10(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dlog10(double precision) is 'base 10 logarithm';

create function pg_catalog.domain_in(cstring, oid, integer) returns "any"
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.domain_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.domain_recv(internal, oid, integer) returns "any"
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.domain_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.dpow(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dpow(double precision, double precision) is 'implementation of ^ operator';

create function pg_catalog.dround(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dround(double precision) is 'round to nearest integer';

create function pg_catalog.dsimple_init(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dsimple_init(internal) is '(internal)';

create function pg_catalog.dsimple_lexize(internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dsimple_lexize(internal, internal, internal, internal) is '(internal)';

create function pg_catalog.dsnowball_init(internal) returns internal
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

create function pg_catalog.dsnowball_lexize(internal, internal, internal, internal) returns internal
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

create function pg_catalog.dsqrt(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dsqrt(double precision) is 'implementation of |/ operator';

create function pg_catalog.dsynonym_init(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dsynonym_init(internal) is '(internal)';

create function pg_catalog.dsynonym_lexize(internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dsynonym_lexize(internal, internal, internal, internal) is '(internal)';

create function pg_catalog.dtrunc(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.dtrunc(double precision) is 'truncate to integer';

create function pg_catalog.elem_contained_by_range(anyelement, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.elem_contained_by_range(anyelement, anyrange) is 'implementation of <@ operator';

create function pg_catalog.encode(bytea, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.encode(bytea, text) is 'convert bytea value into some ascii-only text string';

create function pg_catalog.enum_cmp(anyenum, anyenum) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_cmp(anyenum, anyenum) is 'less-equal-greater';

create function pg_catalog.enum_eq(anyenum, anyenum) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_eq(anyenum, anyenum) is 'implementation of = operator';

create function pg_catalog.enum_first(anyenum) returns anyenum
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_first(anyenum) is 'first value of the input enum type';

create function pg_catalog.enum_ge(anyenum, anyenum) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_ge(anyenum, anyenum) is 'implementation of >= operator';

create function pg_catalog.enum_gt(anyenum, anyenum) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_gt(anyenum, anyenum) is 'implementation of > operator';

create function pg_catalog.enum_in(cstring, oid) returns anyenum
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_in(cstring, oid) is 'I/O';

create function pg_catalog.enum_larger(anyenum, anyenum) returns anyenum
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_larger(anyenum, anyenum) is 'larger of two';

create function pg_catalog.enum_last(anyenum) returns anyenum
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_last(anyenum) is 'last value of the input enum type';

create function pg_catalog.enum_le(anyenum, anyenum) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_le(anyenum, anyenum) is 'implementation of <= operator';

create function pg_catalog.enum_lt(anyenum, anyenum) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_lt(anyenum, anyenum) is 'implementation of < operator';

create function pg_catalog.enum_ne(anyenum, anyenum) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_ne(anyenum, anyenum) is 'implementation of <> operator';

create function pg_catalog.enum_out(anyenum) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_out(anyenum) is 'I/O';

create function pg_catalog.enum_range(anyenum) returns anyarray
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_range(anyenum) is 'range of the given enum type, as an ordered array';

create function pg_catalog.enum_range(anyenum, anyenum) returns anyarray
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_range(anyenum, anyenum) is 'range between the two given enum values, as an ordered array';

create function pg_catalog.enum_recv(internal, oid) returns anyenum
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_recv(internal, oid) is 'I/O';

create function pg_catalog.enum_send(anyenum) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_send(anyenum) is 'I/O';

create function pg_catalog.enum_smaller(anyenum, anyenum) returns anyenum
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.enum_smaller(anyenum, anyenum) is 'smaller of two';

create function pg_catalog.eqjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.eqjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of = and related operators';

create function pg_catalog.eqsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.eqsel(internal, oid, internal, integer) is 'restriction selectivity of = and related operators';

create function pg_catalog.euc_cn_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_cn_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_CN to MULE_INTERNAL';

create function pg_catalog.euc_cn_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_cn_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_CN to UTF8';

create function pg_catalog.euc_jis_2004_to_shift_jis_2004(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_jis_2004_to_shift_jis_2004(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_JIS_2004 to SHIFT_JIS_2004';

create function pg_catalog.euc_jis_2004_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_jis_2004_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_JIS_2004 to UTF8';

create function pg_catalog.euc_jp_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_jp_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_JP to MULE_INTERNAL';

create function pg_catalog.euc_jp_to_sjis(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_jp_to_sjis(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_JP to SJIS';

create function pg_catalog.euc_jp_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_jp_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_JP to UTF8';

create function pg_catalog.euc_kr_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_kr_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_KR to MULE_INTERNAL';

create function pg_catalog.euc_kr_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_kr_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_KR to UTF8';

create function pg_catalog.euc_tw_to_big5(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_tw_to_big5(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_TW to BIG5';

create function pg_catalog.euc_tw_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_tw_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_TW to MULE_INTERNAL';

create function pg_catalog.euc_tw_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.euc_tw_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for EUC_TW to UTF8';

create function pg_catalog.event_trigger_in(cstring) returns event_trigger
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.event_trigger_in(cstring) is 'I/O';

create function pg_catalog.event_trigger_out(event_trigger) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.event_trigger_out(event_trigger) is 'I/O';

create function pg_catalog.exp(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.exp(double precision) is 'natural exponential (e^x)';

create function pg_catalog.exp(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.exp(numeric) is 'natural exponential (e^x)';

create function pg_catalog.factorial(bigint) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.factorial(bigint) is 'factorial';

create function pg_catalog.family(inet) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.family(inet) is 'address family (4 for IPv4, 6 for IPv6)';

create function pg_catalog.fdw_handler_in(cstring) returns fdw_handler
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.fdw_handler_in(cstring) is 'I/O';

create function pg_catalog.fdw_handler_out(fdw_handler) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.fdw_handler_out(fdw_handler) is 'I/O';

create function pg_catalog.first_value(anyelement) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.first_value(anyelement) is 'fetch the first row value';

create function pg_catalog.float4(bigint) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4(bigint) is 'convert int8 to float4';

create function pg_catalog.float4(double precision) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4(double precision) is 'convert float8 to float4';

create function pg_catalog.float4(integer) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4(integer) is 'convert int4 to float4';

create function pg_catalog.float4(jsonb) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4(jsonb) is 'convert jsonb to float4';

create function pg_catalog.float4(numeric) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4(numeric) is 'convert numeric to float4';

create function pg_catalog.float4(smallint) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4(smallint) is 'convert int2 to float4';

create function pg_catalog.float48div(real, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48div(real, double precision) is 'implementation of / operator';

create function pg_catalog.float48eq(real, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48eq(real, double precision) is 'implementation of = operator';

create function pg_catalog.float48ge(real, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48ge(real, double precision) is 'implementation of >= operator';

create function pg_catalog.float48gt(real, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48gt(real, double precision) is 'implementation of > operator';

create function pg_catalog.float48le(real, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48le(real, double precision) is 'implementation of <= operator';

create function pg_catalog.float48lt(real, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48lt(real, double precision) is 'implementation of < operator';

create function pg_catalog.float48mi(real, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48mi(real, double precision) is 'implementation of - operator';

create function pg_catalog.float48mul(real, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48mul(real, double precision) is 'implementation of * operator';

create function pg_catalog.float48ne(real, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48ne(real, double precision) is 'implementation of <> operator';

create function pg_catalog.float48pl(real, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float48pl(real, double precision) is 'implementation of + operator';

create function pg_catalog.float4_accum(double precision[], real) returns double precision[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4_accum(double precision[], real) is 'aggregate transition function';

create function pg_catalog.float4abs(real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4abs(real) is 'implementation of @ operator';

create function pg_catalog.float4div(real, real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4div(real, real) is 'implementation of / operator';

create function pg_catalog.float4eq(real, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4eq(real, real) is 'implementation of = operator';

create function pg_catalog.float4ge(real, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4ge(real, real) is 'implementation of >= operator';

create function pg_catalog.float4gt(real, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4gt(real, real) is 'implementation of > operator';

create function pg_catalog.float4in(cstring) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4in(cstring) is 'I/O';

create function pg_catalog.float4larger(real, real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4larger(real, real) is 'larger of two';

create function pg_catalog.float4le(real, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4le(real, real) is 'implementation of <= operator';

create function pg_catalog.float4lt(real, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4lt(real, real) is 'implementation of < operator';

create function pg_catalog.float4mi(real, real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4mi(real, real) is 'implementation of - operator';

create function pg_catalog.float4mul(real, real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4mul(real, real) is 'implementation of * operator';

create function pg_catalog.float4ne(real, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4ne(real, real) is 'implementation of <> operator';

create function pg_catalog.float4out(real) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4out(real) is 'I/O';

create function pg_catalog.float4pl(real, real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4pl(real, real) is 'implementation of + operator';

create function pg_catalog.float4recv(internal) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4recv(internal) is 'I/O';

create function pg_catalog.float4send(real) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4send(real) is 'I/O';

create function pg_catalog.float4smaller(real, real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4smaller(real, real) is 'smaller of two';

create function pg_catalog.float4um(real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4um(real) is 'implementation of - operator';

create function pg_catalog.float4up(real) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float4up(real) is 'implementation of + operator';

create function pg_catalog.float8(bigint) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8(bigint) is 'convert int8 to float8';

create function pg_catalog.float8(integer) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8(integer) is 'convert int4 to float8';

create function pg_catalog.float8(jsonb) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8(jsonb) is 'convert jsonb to float8';

create function pg_catalog.float8(numeric) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8(numeric) is 'convert numeric to float8';

create function pg_catalog.float8(real) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8(real) is 'convert float4 to float8';

create function pg_catalog.float8(smallint) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8(smallint) is 'convert int2 to float8';

create function pg_catalog.float84div(double precision, real) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84div(double precision, real) is 'implementation of / operator';

create function pg_catalog.float84eq(double precision, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84eq(double precision, real) is 'implementation of = operator';

create function pg_catalog.float84ge(double precision, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84ge(double precision, real) is 'implementation of >= operator';

create function pg_catalog.float84gt(double precision, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84gt(double precision, real) is 'implementation of > operator';

create function pg_catalog.float84le(double precision, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84le(double precision, real) is 'implementation of <= operator';

create function pg_catalog.float84lt(double precision, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84lt(double precision, real) is 'implementation of < operator';

create function pg_catalog.float84mi(double precision, real) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84mi(double precision, real) is 'implementation of - operator';

create function pg_catalog.float84mul(double precision, real) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84mul(double precision, real) is 'implementation of * operator';

create function pg_catalog.float84ne(double precision, real) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84ne(double precision, real) is 'implementation of <> operator';

create function pg_catalog.float84pl(double precision, real) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float84pl(double precision, real) is 'implementation of + operator';

create function pg_catalog.float8_accum(double precision[], double precision) returns double precision[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_accum(double precision[], double precision) is 'aggregate transition function';

create function pg_catalog.float8_avg(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_avg(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_combine(double precision[], double precision[]) returns double precision[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_combine(double precision[], double precision[]) is 'aggregate combine function';

create function pg_catalog.float8_corr(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_corr(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_covar_pop(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_covar_pop(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_covar_samp(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_covar_samp(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_accum(double precision[], double precision, double precision) returns double precision[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_accum(double precision[], double precision, double precision) is 'aggregate transition function';

create function pg_catalog.float8_regr_avgx(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_avgx(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_avgy(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_avgy(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_combine(double precision[], double precision[]) returns double precision[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_combine(double precision[], double precision[]) is 'aggregate combine function';

create function pg_catalog.float8_regr_intercept(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_intercept(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_r2(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_r2(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_slope(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_slope(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_sxx(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_sxx(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_sxy(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_sxy(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_regr_syy(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_regr_syy(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_stddev_pop(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_stddev_pop(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_stddev_samp(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_stddev_samp(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_var_pop(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_var_pop(double precision[]) is 'aggregate final function';

create function pg_catalog.float8_var_samp(double precision[]) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8_var_samp(double precision[]) is 'aggregate final function';

create function pg_catalog.float8abs(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8abs(double precision) is 'implementation of @ operator';

create function pg_catalog.float8div(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8div(double precision, double precision) is 'implementation of / operator';

create function pg_catalog.float8eq(double precision, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8eq(double precision, double precision) is 'implementation of = operator';

create function pg_catalog.float8ge(double precision, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8ge(double precision, double precision) is 'implementation of >= operator';

create function pg_catalog.float8gt(double precision, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8gt(double precision, double precision) is 'implementation of > operator';

create function pg_catalog.float8in(cstring) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8in(cstring) is 'I/O';

create function pg_catalog.float8larger(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8larger(double precision, double precision) is 'larger of two';

create function pg_catalog.float8le(double precision, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8le(double precision, double precision) is 'implementation of <= operator';

create function pg_catalog.float8lt(double precision, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8lt(double precision, double precision) is 'implementation of < operator';

create function pg_catalog.float8mi(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8mi(double precision, double precision) is 'implementation of - operator';

create function pg_catalog.float8mul(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8mul(double precision, double precision) is 'implementation of * operator';

create function pg_catalog.float8ne(double precision, double precision) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8ne(double precision, double precision) is 'implementation of <> operator';

create function pg_catalog.float8out(double precision) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8out(double precision) is 'I/O';

create function pg_catalog.float8pl(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8pl(double precision, double precision) is 'implementation of + operator';

create function pg_catalog.float8recv(internal) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8recv(internal) is 'I/O';

create function pg_catalog.float8send(double precision) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8send(double precision) is 'I/O';

create function pg_catalog.float8smaller(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8smaller(double precision, double precision) is 'smaller of two';

create function pg_catalog.float8um(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8um(double precision) is 'implementation of - operator';

create function pg_catalog.float8up(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.float8up(double precision) is 'implementation of + operator';

create function pg_catalog.floor(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.floor(double precision) is 'nearest integer <= value';

create function pg_catalog.floor(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.floor(numeric) is 'nearest integer <= value';

create function pg_catalog.flt4_mul_cash(real, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.flt4_mul_cash(real, money) is 'implementation of * operator';

create function pg_catalog.flt8_mul_cash(double precision, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.flt8_mul_cash(double precision, money) is 'implementation of * operator';

create function pg_catalog.fmgr_c_validator(oid) returns void
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.fmgr_c_validator(oid) is '(internal)';

create function pg_catalog.fmgr_internal_validator(oid) returns void
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.fmgr_internal_validator(oid) is '(internal)';

create function pg_catalog.fmgr_sql_validator(oid) returns void
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.fmgr_sql_validator(oid) is '(internal)';

create function pg_catalog.format(text) returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.format(text) is 'format text message';

create function pg_catalog.format(text, "any") returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.format(text, "any") is 'format text message';

create function pg_catalog.format_type(oid, integer) returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.format_type(oid, integer) is 'format a type oid and atttypmod to canonical SQL';

create function pg_catalog.gb18030_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gb18030_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for GB18030 to UTF8';

create function pg_catalog.gbk_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gbk_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for GBK to UTF8';

create function pg_catalog.generate_series(bigint, bigint) returns setof bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(bigint, bigint) is 'non-persistent series generator';

create function pg_catalog.generate_series(bigint, bigint, bigint) returns setof bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(bigint, bigint, bigint) is 'non-persistent series generator';

create function pg_catalog.generate_series(integer, integer) returns setof integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(integer, integer) is 'non-persistent series generator';

create function pg_catalog.generate_series(integer, integer, integer) returns setof integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(integer, integer, integer) is 'non-persistent series generator';

create function pg_catalog.generate_series(numeric, numeric) returns setof numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(numeric, numeric) is 'non-persistent series generator';

create function pg_catalog.generate_series(numeric, numeric, numeric) returns setof numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(numeric, numeric, numeric) is 'non-persistent series generator';

create function pg_catalog.generate_series(timestamp with time zone, timestamp with time zone, interval) returns setof timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(timestamp with time zone, timestamp with time zone, interval) is 'non-persistent series generator';

create function pg_catalog.generate_series(timestamp, timestamp, interval) returns setof timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series(timestamp, timestamp, interval) is 'non-persistent series generator';

create function pg_catalog.generate_series_int4_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series_int4_support(internal) is 'planner support for generate_series';

create function pg_catalog.generate_series_int8_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_series_int8_support(internal) is 'planner support for generate_series';

create function pg_catalog.generate_subscripts(anyarray, integer) returns setof integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_subscripts(anyarray, integer) is 'array subscripts generator';

create function pg_catalog.generate_subscripts(anyarray, integer, boolean) returns setof integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.generate_subscripts(anyarray, integer, boolean) is 'array subscripts generator';

create function pg_catalog.get_bit(bit, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.get_bit(bit, integer) is 'get bit';

create function pg_catalog.get_bit(bytea, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.get_bit(bytea, integer) is 'get bit';

create function pg_catalog.get_byte(bytea, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.get_byte(bytea, integer) is 'get byte';

create function pg_catalog.get_current_ts_config() returns regconfig
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.get_current_ts_config() is 'get current tsearch configuration';

create function pg_catalog.getdatabaseencoding() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.getdatabaseencoding() is 'encoding name of current database';

create function pg_catalog.getpgusername() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.getpgusername() is 'deprecated, use current_user instead';

create function pg_catalog.gin_clean_pending_list(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_clean_pending_list(regclass) is 'clean up GIN pending list';

create function pg_catalog.gin_cmp_prefix(text, text, smallint, internal) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_cmp_prefix(text, text, smallint, internal) is 'GIN tsvector support';

create function pg_catalog.gin_cmp_tslexeme(text, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_cmp_tslexeme(text, text) is 'GIN tsvector support';

create function pg_catalog.gin_compare_jsonb(text, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_compare_jsonb(text, text) is 'GIN support';

create function pg_catalog.gin_consistent_jsonb(internal, smallint, jsonb, integer, internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_consistent_jsonb(internal, smallint, jsonb, integer, internal, internal, internal, internal) is 'GIN support';

create function pg_catalog.gin_consistent_jsonb_path(internal, smallint, jsonb, integer, internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_consistent_jsonb_path(internal, smallint, jsonb, integer, internal, internal, internal, internal) is 'GIN support';

create function pg_catalog.gin_extract_jsonb(jsonb, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_jsonb(jsonb, internal, internal) is 'GIN support';

create function pg_catalog.gin_extract_jsonb_path(jsonb, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_jsonb_path(jsonb, internal, internal) is 'GIN support';

create function pg_catalog.gin_extract_jsonb_query(jsonb, internal, smallint, internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_jsonb_query(jsonb, internal, smallint, internal, internal, internal, internal) is 'GIN support';

create function pg_catalog.gin_extract_jsonb_query_path(jsonb, internal, smallint, internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_jsonb_query_path(jsonb, internal, smallint, internal, internal, internal, internal) is 'GIN support';

create function pg_catalog.gin_extract_tsquery(tsquery, internal, smallint, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_tsquery(tsquery, internal, smallint, internal, internal) is 'GIN tsvector support (obsolete)';

create function pg_catalog.gin_extract_tsquery(tsquery, internal, smallint, internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_tsquery(tsquery, internal, smallint, internal, internal, internal, internal) is 'GIN tsvector support (obsolete)';

create function pg_catalog.gin_extract_tsquery(tsvector, internal, smallint, internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_tsquery(tsvector, internal, smallint, internal, internal, internal, internal) is 'GIN tsvector support';

create function pg_catalog.gin_extract_tsvector(tsvector, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_tsvector(tsvector, internal) is 'GIN tsvector support (obsolete)';

create function pg_catalog.gin_extract_tsvector(tsvector, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_extract_tsvector(tsvector, internal, internal) is 'GIN tsvector support';

create function pg_catalog.gin_triconsistent_jsonb(internal, smallint, jsonb, integer, internal, internal, internal) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_triconsistent_jsonb(internal, smallint, jsonb, integer, internal, internal, internal) is 'GIN support';

create function pg_catalog.gin_triconsistent_jsonb_path(internal, smallint, jsonb, integer, internal, internal, internal) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_triconsistent_jsonb_path(internal, smallint, jsonb, integer, internal, internal, internal) is 'GIN support';

create function pg_catalog.gin_tsquery_consistent(internal, smallint, tsquery, integer, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_tsquery_consistent(internal, smallint, tsquery, integer, internal, internal) is 'GIN tsvector support (obsolete)';

create function pg_catalog.gin_tsquery_consistent(internal, smallint, tsquery, integer, internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_tsquery_consistent(internal, smallint, tsquery, integer, internal, internal, internal, internal) is 'GIN tsvector support (obsolete)';

create function pg_catalog.gin_tsquery_consistent(internal, smallint, tsvector, integer, internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_tsquery_consistent(internal, smallint, tsvector, integer, internal, internal, internal, internal) is 'GIN tsvector support';

create function pg_catalog.gin_tsquery_triconsistent(internal, smallint, tsvector, integer, internal, internal, internal) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gin_tsquery_triconsistent(internal, smallint, tsvector, integer, internal, internal, internal) is 'GIN tsvector support';

create function pg_catalog.ginarrayconsistent(internal, smallint, anyarray, integer, internal, internal, internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ginarrayconsistent(internal, smallint, anyarray, integer, internal, internal, internal, internal) is 'GIN array support';

create function pg_catalog.ginarrayextract(anyarray, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ginarrayextract(anyarray, internal) is 'GIN array support (obsolete)';

create function pg_catalog.ginarrayextract(anyarray, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ginarrayextract(anyarray, internal, internal) is 'GIN array support';

create function pg_catalog.ginarraytriconsistent(internal, smallint, anyarray, integer, internal, internal, internal) returns "char"
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ginarraytriconsistent(internal, smallint, anyarray, integer, internal, internal, internal) is 'GIN array support';

create function pg_catalog.ginhandler(internal) returns index_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ginhandler(internal) is 'gin index access method handler';

create function pg_catalog.ginqueryarrayextract(anyarray, internal, smallint, internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ginqueryarrayextract(anyarray, internal, smallint, internal, internal, internal, internal) is 'GIN array support';

create function pg_catalog.gist_box_consistent(internal, box, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_box_consistent(internal, box, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gist_box_penalty(internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_box_penalty(internal, internal, internal) is 'GiST support';

create function pg_catalog.gist_box_picksplit(internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_box_picksplit(internal, internal) is 'GiST support';

create function pg_catalog.gist_box_same(box, box, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_box_same(box, box, internal) is 'GiST support';

create function pg_catalog.gist_box_union(internal, internal) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_box_union(internal, internal) is 'GiST support';

create function pg_catalog.gist_circle_compress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_circle_compress(internal) is 'GiST support';

create function pg_catalog.gist_circle_consistent(internal, circle, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_circle_consistent(internal, circle, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gist_circle_distance(internal, circle, smallint, oid, internal) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_circle_distance(internal, circle, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gist_point_compress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_point_compress(internal) is 'GiST support';

create function pg_catalog.gist_point_consistent(internal, point, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_point_consistent(internal, point, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gist_point_distance(internal, point, smallint, oid, internal) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_point_distance(internal, point, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gist_point_fetch(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_point_fetch(internal) is 'GiST support';

create function pg_catalog.gist_poly_compress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_poly_compress(internal) is 'GiST support';

create function pg_catalog.gist_poly_consistent(internal, polygon, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_poly_consistent(internal, polygon, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gist_poly_distance(internal, polygon, smallint, oid, internal) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gist_poly_distance(internal, polygon, smallint, oid, internal) is 'GiST support';

create function pg_catalog.gisthandler(internal) returns index_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gisthandler(internal) is 'gist index access method handler';

create function pg_catalog.gtsquery_compress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_compress(internal) is 'GiST tsquery support';

create function pg_catalog.gtsquery_consistent(internal, internal, integer, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_consistent(internal, internal, integer, oid, internal) is 'GiST tsquery support (obsolete)';

create function pg_catalog.gtsquery_consistent(internal, tsquery, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_consistent(internal, tsquery, smallint, oid, internal) is 'GiST tsquery support';

create function pg_catalog.gtsquery_penalty(internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_penalty(internal, internal, internal) is 'GiST tsquery support';

create function pg_catalog.gtsquery_picksplit(internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_picksplit(internal, internal) is 'GiST tsquery support';

create function pg_catalog.gtsquery_same(bigint, bigint, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_same(bigint, bigint, internal) is 'GiST tsquery support';

create function pg_catalog.gtsquery_union(internal, internal) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsquery_union(internal, internal) is 'GiST tsquery support';

create function pg_catalog.gtsvector_compress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_compress(internal) is 'GiST tsvector support';

create function pg_catalog.gtsvector_consistent(internal, gtsvector, integer, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_consistent(internal, gtsvector, integer, oid, internal) is 'GiST tsvector support (obsolete)';

create function pg_catalog.gtsvector_consistent(internal, tsvector, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_consistent(internal, tsvector, smallint, oid, internal) is 'GiST tsvector support';

create function pg_catalog.gtsvector_decompress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_decompress(internal) is 'GiST tsvector support';

create function pg_catalog.gtsvector_penalty(internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_penalty(internal, internal, internal) is 'GiST tsvector support';

create function pg_catalog.gtsvector_picksplit(internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_picksplit(internal, internal) is 'GiST tsvector support';

create function pg_catalog.gtsvector_same(gtsvector, gtsvector, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_same(gtsvector, gtsvector, internal) is 'GiST tsvector support';

create function pg_catalog.gtsvector_union(internal, internal) returns gtsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvector_union(internal, internal) is 'GiST tsvector support';

create function pg_catalog.gtsvectorin(cstring) returns gtsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvectorin(cstring) is 'I/O';

create function pg_catalog.gtsvectorout(gtsvector) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.gtsvectorout(gtsvector) is 'I/O';

create function pg_catalog.has_any_column_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_any_column_privilege(name, oid, text) is 'user privilege on any column by username, rel oid';

create function pg_catalog.has_any_column_privilege(name, text, text) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_any_column_privilege(name, text, text) is 'user privilege on any column by username, rel name';

create function pg_catalog.has_any_column_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_any_column_privilege(oid, oid, text) is 'user privilege on any column by user oid, rel oid';

create function pg_catalog.has_any_column_privilege(oid, text) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_any_column_privilege(oid, text) is 'current user privilege on any column by rel oid';

create function pg_catalog.has_any_column_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_any_column_privilege(oid, text, text) is 'user privilege on any column by user oid, rel name';

create function pg_catalog.has_any_column_privilege(text, text) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_any_column_privilege(text, text) is 'current user privilege on any column by rel name';

create function pg_catalog.has_column_privilege(name, oid, smallint, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(name, oid, smallint, text) is 'user privilege on column by username, rel oid, col attnum';

create function pg_catalog.has_column_privilege(name, oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(name, oid, text, text) is 'user privilege on column by username, rel oid, col name';

create function pg_catalog.has_column_privilege(name, text, smallint, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(name, text, smallint, text) is 'user privilege on column by username, rel name, col attnum';

create function pg_catalog.has_column_privilege(name, text, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(name, text, text, text) is 'user privilege on column by username, rel name, col name';

create function pg_catalog.has_column_privilege(oid, oid, smallint, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(oid, oid, smallint, text) is 'user privilege on column by user oid, rel oid, col attnum';

create function pg_catalog.has_column_privilege(oid, oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(oid, oid, text, text) is 'user privilege on column by user oid, rel oid, col name';

create function pg_catalog.has_column_privilege(oid, smallint, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(oid, smallint, text) is 'current user privilege on column by rel oid, col attnum';

create function pg_catalog.has_column_privilege(oid, text, smallint, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(oid, text, smallint, text) is 'user privilege on column by user oid, rel name, col attnum';

create function pg_catalog.has_column_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(oid, text, text) is 'current user privilege on column by rel oid, col name';

create function pg_catalog.has_column_privilege(oid, text, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(oid, text, text, text) is 'user privilege on column by user oid, rel name, col name';

create function pg_catalog.has_column_privilege(text, smallint, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(text, smallint, text) is 'current user privilege on column by rel name, col attnum';

create function pg_catalog.has_column_privilege(text, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_column_privilege(text, text, text) is 'current user privilege on column by rel name, col name';

create function pg_catalog.has_database_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_database_privilege(name, oid, text) is 'user privilege on database by username, database oid';

create function pg_catalog.has_database_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_database_privilege(name, text, text) is 'user privilege on database by username, database name';

create function pg_catalog.has_database_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_database_privilege(oid, oid, text) is 'user privilege on database by user oid, database oid';

create function pg_catalog.has_database_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_database_privilege(oid, text) is 'current user privilege on database by database oid';

create function pg_catalog.has_database_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_database_privilege(oid, text, text) is 'user privilege on database by user oid, database name';

create function pg_catalog.has_database_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_database_privilege(text, text) is 'current user privilege on database by database name';

create function pg_catalog.has_foreign_data_wrapper_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_foreign_data_wrapper_privilege(name, oid, text) is 'user privilege on foreign data wrapper by username, foreign data wrapper oid';

create function pg_catalog.has_foreign_data_wrapper_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_foreign_data_wrapper_privilege(name, text, text) is 'user privilege on foreign data wrapper by username, foreign data wrapper name';

create function pg_catalog.has_foreign_data_wrapper_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_foreign_data_wrapper_privilege(oid, oid, text) is 'user privilege on foreign data wrapper by user oid, foreign data wrapper oid';

create function pg_catalog.has_foreign_data_wrapper_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_foreign_data_wrapper_privilege(oid, text) is 'current user privilege on foreign data wrapper by foreign data wrapper oid';

create function pg_catalog.has_foreign_data_wrapper_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_foreign_data_wrapper_privilege(oid, text, text) is 'user privilege on foreign data wrapper by user oid, foreign data wrapper name';

create function pg_catalog.has_foreign_data_wrapper_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_foreign_data_wrapper_privilege(text, text) is 'current user privilege on foreign data wrapper by foreign data wrapper name';

create function pg_catalog.has_function_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_function_privilege(name, oid, text) is 'user privilege on function by username, function oid';

create function pg_catalog.has_function_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_function_privilege(name, text, text) is 'user privilege on function by username, function name';

create function pg_catalog.has_function_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_function_privilege(oid, oid, text) is 'user privilege on function by user oid, function oid';

create function pg_catalog.has_function_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_function_privilege(oid, text) is 'current user privilege on function by function oid';

create function pg_catalog.has_function_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_function_privilege(oid, text, text) is 'user privilege on function by user oid, function name';

create function pg_catalog.has_function_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_function_privilege(text, text) is 'current user privilege on function by function name';

create function pg_catalog.has_language_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_language_privilege(name, oid, text) is 'user privilege on language by username, language oid';

create function pg_catalog.has_language_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_language_privilege(name, text, text) is 'user privilege on language by username, language name';

create function pg_catalog.has_language_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_language_privilege(oid, oid, text) is 'user privilege on language by user oid, language oid';

create function pg_catalog.has_language_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_language_privilege(oid, text) is 'current user privilege on language by language oid';

create function pg_catalog.has_language_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_language_privilege(oid, text, text) is 'user privilege on language by user oid, language name';

create function pg_catalog.has_language_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_language_privilege(text, text) is 'current user privilege on language by language name';

create function pg_catalog.has_schema_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_schema_privilege(name, oid, text) is 'user privilege on schema by username, schema oid';

create function pg_catalog.has_schema_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_schema_privilege(name, text, text) is 'user privilege on schema by username, schema name';

create function pg_catalog.has_schema_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_schema_privilege(oid, oid, text) is 'user privilege on schema by user oid, schema oid';

create function pg_catalog.has_schema_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_schema_privilege(oid, text) is 'current user privilege on schema by schema oid';

create function pg_catalog.has_schema_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_schema_privilege(oid, text, text) is 'user privilege on schema by user oid, schema name';

create function pg_catalog.has_schema_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_schema_privilege(text, text) is 'current user privilege on schema by schema name';

create function pg_catalog.has_sequence_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_sequence_privilege(name, oid, text) is 'user privilege on sequence by username, seq oid';

create function pg_catalog.has_sequence_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_sequence_privilege(name, text, text) is 'user privilege on sequence by username, seq name';

create function pg_catalog.has_sequence_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_sequence_privilege(oid, oid, text) is 'user privilege on sequence by user oid, seq oid';

create function pg_catalog.has_sequence_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_sequence_privilege(oid, text) is 'current user privilege on sequence by seq oid';

create function pg_catalog.has_sequence_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_sequence_privilege(oid, text, text) is 'user privilege on sequence by user oid, seq name';

create function pg_catalog.has_sequence_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_sequence_privilege(text, text) is 'current user privilege on sequence by seq name';

create function pg_catalog.has_server_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_server_privilege(name, oid, text) is 'user privilege on server by username, server oid';

create function pg_catalog.has_server_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_server_privilege(name, text, text) is 'user privilege on server by username, server name';

create function pg_catalog.has_server_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_server_privilege(oid, oid, text) is 'user privilege on server by user oid, server oid';

create function pg_catalog.has_server_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_server_privilege(oid, text) is 'current user privilege on server by server oid';

create function pg_catalog.has_server_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_server_privilege(oid, text, text) is 'user privilege on server by user oid, server name';

create function pg_catalog.has_server_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_server_privilege(text, text) is 'current user privilege on server by server name';

create function pg_catalog.has_table_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_table_privilege(name, oid, text) is 'user privilege on relation by username, rel oid';

create function pg_catalog.has_table_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_table_privilege(name, text, text) is 'user privilege on relation by username, rel name';

create function pg_catalog.has_table_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_table_privilege(oid, oid, text) is 'user privilege on relation by user oid, rel oid';

create function pg_catalog.has_table_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_table_privilege(oid, text) is 'current user privilege on relation by rel oid';

create function pg_catalog.has_table_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_table_privilege(oid, text, text) is 'user privilege on relation by user oid, rel name';

create function pg_catalog.has_table_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_table_privilege(text, text) is 'current user privilege on relation by rel name';

create function pg_catalog.has_tablespace_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_tablespace_privilege(name, oid, text) is 'user privilege on tablespace by username, tablespace oid';

create function pg_catalog.has_tablespace_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_tablespace_privilege(name, text, text) is 'user privilege on tablespace by username, tablespace name';

create function pg_catalog.has_tablespace_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_tablespace_privilege(oid, oid, text) is 'user privilege on tablespace by user oid, tablespace oid';

create function pg_catalog.has_tablespace_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_tablespace_privilege(oid, text) is 'current user privilege on tablespace by tablespace oid';

create function pg_catalog.has_tablespace_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_tablespace_privilege(oid, text, text) is 'user privilege on tablespace by user oid, tablespace name';

create function pg_catalog.has_tablespace_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_tablespace_privilege(text, text) is 'current user privilege on tablespace by tablespace name';

create function pg_catalog.has_type_privilege(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_type_privilege(name, oid, text) is 'user privilege on type by username, type oid';

create function pg_catalog.has_type_privilege(name, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_type_privilege(name, text, text) is 'user privilege on type by username, type name';

create function pg_catalog.has_type_privilege(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_type_privilege(oid, oid, text) is 'user privilege on type by user oid, type oid';

create function pg_catalog.has_type_privilege(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_type_privilege(oid, text) is 'current user privilege on type by type oid';

create function pg_catalog.has_type_privilege(oid, text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_type_privilege(oid, text, text) is 'user privilege on type by user oid, type name';

create function pg_catalog.has_type_privilege(text, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.has_type_privilege(text, text) is 'current user privilege on type by type name';

create function pg_catalog.hash_aclitem(aclitem) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_aclitem(aclitem) is 'hash';

create function pg_catalog.hash_aclitem_extended(aclitem, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_aclitem_extended(aclitem, bigint) is 'hash';

create function pg_catalog.hash_array(anyarray) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_array(anyarray) is 'hash';

create function pg_catalog.hash_array_extended(anyarray, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_array_extended(anyarray, bigint) is 'hash';

create function pg_catalog.hash_numeric(numeric) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_numeric(numeric) is 'hash';

create function pg_catalog.hash_numeric_extended(numeric, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_numeric_extended(numeric, bigint) is 'hash';

create function pg_catalog.hash_range(anyrange) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_range(anyrange) is 'hash a range';

create function pg_catalog.hash_range_extended(anyrange, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hash_range_extended(anyrange, bigint) is 'hash a range';

create function pg_catalog.hashbpchar(char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashbpchar(char) is 'hash';

create function pg_catalog.hashbpcharextended(char, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashbpcharextended(char, bigint) is 'hash';

create function pg_catalog.hashchar("char") returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashchar("char") is 'hash';

create function pg_catalog.hashcharextended("char", bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashcharextended("char", bigint) is 'hash';

create function pg_catalog.hashenum(anyenum) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashenum(anyenum) is 'hash';

create function pg_catalog.hashenumextended(anyenum, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashenumextended(anyenum, bigint) is 'hash';

create function pg_catalog.hashfloat4(real) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashfloat4(real) is 'hash';

create function pg_catalog.hashfloat4extended(real, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashfloat4extended(real, bigint) is 'hash';

create function pg_catalog.hashfloat8(double precision) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashfloat8(double precision) is 'hash';

create function pg_catalog.hashfloat8extended(double precision, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashfloat8extended(double precision, bigint) is 'hash';

create function pg_catalog.hashhandler(internal) returns index_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashhandler(internal) is 'hash index access method handler';

create function pg_catalog.hashinet(inet) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashinet(inet) is 'hash';

create function pg_catalog.hashinetextended(inet, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashinetextended(inet, bigint) is 'hash';

create function pg_catalog.hashint2(smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashint2(smallint) is 'hash';

create function pg_catalog.hashint2extended(smallint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashint2extended(smallint, bigint) is 'hash';

create function pg_catalog.hashint4(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashint4(integer) is 'hash';

create function pg_catalog.hashint4extended(integer, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashint4extended(integer, bigint) is 'hash';

create function pg_catalog.hashint8(bigint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashint8(bigint) is 'hash';

create function pg_catalog.hashint8extended(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashint8extended(bigint, bigint) is 'hash';

create function pg_catalog.hashmacaddr(macaddr) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashmacaddr(macaddr) is 'hash';

create function pg_catalog.hashmacaddr8(macaddr8) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashmacaddr8(macaddr8) is 'hash';

create function pg_catalog.hashmacaddr8extended(macaddr8, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashmacaddr8extended(macaddr8, bigint) is 'hash';

create function pg_catalog.hashmacaddrextended(macaddr, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashmacaddrextended(macaddr, bigint) is 'hash';

create function pg_catalog.hashname(name) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashname(name) is 'hash';

create function pg_catalog.hashnameextended(name, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashnameextended(name, bigint) is 'hash';

create function pg_catalog.hashoid(oid) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashoid(oid) is 'hash';

create function pg_catalog.hashoidextended(oid, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashoidextended(oid, bigint) is 'hash';

create function pg_catalog.hashoidvector(oidvector) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashoidvector(oidvector) is 'hash';

create function pg_catalog.hashoidvectorextended(oidvector, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashoidvectorextended(oidvector, bigint) is 'hash';

create function pg_catalog.hashtext(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashtext(text) is 'hash';

create function pg_catalog.hashtextextended(text, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashtextextended(text, bigint) is 'hash';

create function pg_catalog.hashtid(tid) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashtid(tid) is 'hash';

create function pg_catalog.hashtidextended(tid, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashtidextended(tid, bigint) is 'hash';

create function pg_catalog.hashvarlena(internal) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashvarlena(internal) is 'hash';

create function pg_catalog.hashvarlenaextended(internal, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hashvarlenaextended(internal, bigint) is 'hash';

create function pg_catalog.heap_tableam_handler(internal) returns table_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.heap_tableam_handler(internal) is 'row-oriented heap table access method handler';

create function pg_catalog.height(box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.height(box) is 'box height';

create function pg_catalog.host(inet) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.host(inet) is 'show address octets only';

create function pg_catalog.hostmask(inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.hostmask(inet) is 'hostmask of address';

create function pg_catalog.iclikejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iclikejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of ILIKE';

create function pg_catalog.iclikesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iclikesel(internal, oid, internal, integer) is 'restriction selectivity of ILIKE';

create function pg_catalog.icnlikejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.icnlikejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of NOT ILIKE';

create function pg_catalog.icnlikesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.icnlikesel(internal, oid, internal, integer) is 'restriction selectivity of NOT ILIKE';

create function pg_catalog.icregexeqjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.icregexeqjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of case-insensitive regex match';

create function pg_catalog.icregexeqsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.icregexeqsel(internal, oid, internal, integer) is 'restriction selectivity of case-insensitive regex match';

create function pg_catalog.icregexnejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.icregexnejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of case-insensitive regex non-match';

create function pg_catalog.icregexnesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.icregexnesel(internal, oid, internal, integer) is 'restriction selectivity of case-insensitive regex non-match';

create function pg_catalog.in_range(bigint, bigint, bigint, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(bigint, bigint, bigint, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(date, date, interval, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(date, date, interval, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(double precision, double precision, double precision, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(double precision, double precision, double precision, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(integer, integer, bigint, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(integer, integer, bigint, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(integer, integer, integer, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(integer, integer, integer, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(integer, integer, smallint, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(integer, integer, smallint, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(interval, interval, interval, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(interval, interval, interval, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(numeric, numeric, numeric, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(numeric, numeric, numeric, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(real, real, double precision, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(real, real, double precision, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(smallint, smallint, bigint, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(smallint, smallint, bigint, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(smallint, smallint, integer, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(smallint, smallint, integer, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(smallint, smallint, smallint, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(smallint, smallint, smallint, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(time with time zone, time with time zone, interval, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(time with time zone, time with time zone, interval, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(time, time, interval, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(time, time, interval, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(timestamp with time zone, timestamp with time zone, interval, boolean, boolean) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(timestamp with time zone, timestamp with time zone, interval, boolean, boolean) is 'window RANGE support';

create function pg_catalog.in_range(timestamp, timestamp, interval, boolean, boolean) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.in_range(timestamp, timestamp, interval, boolean, boolean) is 'window RANGE support';

create function pg_catalog.index_am_handler_in(cstring) returns index_am_handler
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.index_am_handler_in(cstring) is 'I/O';

create function pg_catalog.index_am_handler_out(index_am_handler) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.index_am_handler_out(index_am_handler) is 'I/O';

create function pg_catalog.inet_client_addr() returns inet
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_client_addr() is 'inet address of the client';

create function pg_catalog.inet_client_port() returns integer
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_client_port() is 'client''s port number for this connection';

create function pg_catalog.inet_gist_compress(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_compress(internal) is 'GiST support';

create function pg_catalog.inet_gist_consistent(internal, inet, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_consistent(internal, inet, smallint, oid, internal) is 'GiST support';

create function pg_catalog.inet_gist_fetch(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_fetch(internal) is 'GiST support';

create function pg_catalog.inet_gist_penalty(internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_penalty(internal, internal, internal) is 'GiST support';

create function pg_catalog.inet_gist_picksplit(internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_picksplit(internal, internal) is 'GiST support';

create function pg_catalog.inet_gist_same(inet, inet, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_same(inet, inet, internal) is 'GiST support';

create function pg_catalog.inet_gist_union(internal, internal) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_gist_union(internal, internal) is 'GiST support';

create function pg_catalog.inet_in(cstring) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_in(cstring) is 'I/O';

create function pg_catalog.inet_merge(inet, inet) returns cidr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_merge(inet, inet) is 'the smallest network which includes both of the given networks';

create function pg_catalog.inet_out(inet) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_out(inet) is 'I/O';

create function pg_catalog.inet_recv(internal) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_recv(internal) is 'I/O';

create function pg_catalog.inet_same_family(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_same_family(inet, inet) is 'are the addresses from the same family?';

create function pg_catalog.inet_send(inet) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_send(inet) is 'I/O';

create function pg_catalog.inet_server_addr() returns inet
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_server_addr() is 'inet address of the server';

create function pg_catalog.inet_server_port() returns integer
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_server_port() is 'server''s port number for this connection';

create function pg_catalog.inet_spg_choose(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_spg_choose(internal, internal) is 'SP-GiST support';

create function pg_catalog.inet_spg_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_spg_config(internal, internal) is 'SP-GiST support';

create function pg_catalog.inet_spg_inner_consistent(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_spg_inner_consistent(internal, internal) is 'SP-GiST support';

create function pg_catalog.inet_spg_leaf_consistent(internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_spg_leaf_consistent(internal, internal) is 'SP-GiST support';

create function pg_catalog.inet_spg_picksplit(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inet_spg_picksplit(internal, internal) is 'SP-GiST support';

create function pg_catalog.inetand(inet, inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inetand(inet, inet) is 'implementation of & operator';

create function pg_catalog.inetmi(inet, inet) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inetmi(inet, inet) is 'implementation of - operator';

create function pg_catalog.inetmi_int8(inet, bigint) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inetmi_int8(inet, bigint) is 'implementation of - operator';

create function pg_catalog.inetnot(inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inetnot(inet) is 'implementation of ~ operator';

create function pg_catalog.inetor(inet, inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inetor(inet, inet) is 'implementation of | operator';

create function pg_catalog.inetpl(inet, bigint) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inetpl(inet, bigint) is 'implementation of + operator';

create function pg_catalog.initcap(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.initcap(text) is 'capitalize each word';

create function pg_catalog.int2(bigint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2(bigint) is 'convert int8 to int2';

create function pg_catalog.int2(double precision) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2(double precision) is 'convert float8 to int2';

create function pg_catalog.int2(integer) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2(integer) is 'convert int4 to int2';

create function pg_catalog.int2(jsonb) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2(jsonb) is 'convert jsonb to int2';

create function pg_catalog.int2(numeric) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2(numeric) is 'convert numeric to int2';

create function pg_catalog.int2(real) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2(real) is 'convert float4 to int2';

create function pg_catalog.int24div(smallint, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24div(smallint, integer) is 'implementation of / operator';

create function pg_catalog.int24eq(smallint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24eq(smallint, integer) is 'implementation of = operator';

create function pg_catalog.int24ge(smallint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24ge(smallint, integer) is 'implementation of >= operator';

create function pg_catalog.int24gt(smallint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24gt(smallint, integer) is 'implementation of > operator';

create function pg_catalog.int24le(smallint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24le(smallint, integer) is 'implementation of <= operator';

create function pg_catalog.int24lt(smallint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24lt(smallint, integer) is 'implementation of < operator';

create function pg_catalog.int24mi(smallint, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24mi(smallint, integer) is 'implementation of - operator';

create function pg_catalog.int24mul(smallint, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24mul(smallint, integer) is 'implementation of * operator';

create function pg_catalog.int24ne(smallint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24ne(smallint, integer) is 'implementation of <> operator';

create function pg_catalog.int24pl(smallint, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int24pl(smallint, integer) is 'implementation of + operator';

create function pg_catalog.int28div(smallint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28div(smallint, bigint) is 'implementation of / operator';

create function pg_catalog.int28eq(smallint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28eq(smallint, bigint) is 'implementation of = operator';

create function pg_catalog.int28ge(smallint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28ge(smallint, bigint) is 'implementation of >= operator';

create function pg_catalog.int28gt(smallint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28gt(smallint, bigint) is 'implementation of > operator';

create function pg_catalog.int28le(smallint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28le(smallint, bigint) is 'implementation of <= operator';

create function pg_catalog.int28lt(smallint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28lt(smallint, bigint) is 'implementation of < operator';

create function pg_catalog.int28mi(smallint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28mi(smallint, bigint) is 'implementation of - operator';

create function pg_catalog.int28mul(smallint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28mul(smallint, bigint) is 'implementation of * operator';

create function pg_catalog.int28ne(smallint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28ne(smallint, bigint) is 'implementation of <> operator';

create function pg_catalog.int28pl(smallint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int28pl(smallint, bigint) is 'implementation of + operator';

create function pg_catalog.int2_accum(internal, smallint) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2_accum(internal, smallint) is 'aggregate transition function';

create function pg_catalog.int2_accum_inv(internal, smallint) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2_accum_inv(internal, smallint) is 'aggregate transition function';

create function pg_catalog.int2_avg_accum(bigint[], smallint) returns bigint[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2_avg_accum(bigint[], smallint) is 'aggregate transition function';

create function pg_catalog.int2_avg_accum_inv(bigint[], smallint) returns bigint[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2_avg_accum_inv(bigint[], smallint) is 'aggregate transition function';

create function pg_catalog.int2_mul_cash(smallint, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2_mul_cash(smallint, money) is 'implementation of * operator';

create function pg_catalog.int2_sum(bigint, smallint) returns bigint
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2_sum(bigint, smallint) is 'aggregate transition function';

create function pg_catalog.int2abs(smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2abs(smallint) is 'implementation of @ operator';

create function pg_catalog.int2and(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2and(smallint, smallint) is 'implementation of & operator';

create function pg_catalog.int2div(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2div(smallint, smallint) is 'implementation of / operator';

create function pg_catalog.int2eq(smallint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2eq(smallint, smallint) is 'implementation of = operator';

create function pg_catalog.int2ge(smallint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2ge(smallint, smallint) is 'implementation of >= operator';

create function pg_catalog.int2gt(smallint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2gt(smallint, smallint) is 'implementation of > operator';

create function pg_catalog.int2in(cstring) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2in(cstring) is 'I/O';

create function pg_catalog.int2int4_sum(bigint[]) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2int4_sum(bigint[]) is 'aggregate final function';

create function pg_catalog.int2larger(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2larger(smallint, smallint) is 'larger of two';

create function pg_catalog.int2le(smallint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2le(smallint, smallint) is 'implementation of <= operator';

create function pg_catalog.int2lt(smallint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2lt(smallint, smallint) is 'implementation of < operator';

create function pg_catalog.int2mi(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2mi(smallint, smallint) is 'implementation of - operator';

create function pg_catalog.int2mod(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2mod(smallint, smallint) is 'implementation of % operator';

create function pg_catalog.int2mul(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2mul(smallint, smallint) is 'implementation of * operator';

create function pg_catalog.int2ne(smallint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2ne(smallint, smallint) is 'implementation of <> operator';

create function pg_catalog.int2not(smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2not(smallint) is 'implementation of ~ operator';

create function pg_catalog.int2or(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2or(smallint, smallint) is 'implementation of | operator';

create function pg_catalog.int2out(smallint) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2out(smallint) is 'I/O';

create function pg_catalog.int2pl(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2pl(smallint, smallint) is 'implementation of + operator';

create function pg_catalog.int2recv(internal) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2recv(internal) is 'I/O';

create function pg_catalog.int2send(smallint) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2send(smallint) is 'I/O';

create function pg_catalog.int2shl(smallint, integer) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2shl(smallint, integer) is 'implementation of << operator';

create function pg_catalog.int2shr(smallint, integer) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2shr(smallint, integer) is 'implementation of >> operator';

create function pg_catalog.int2smaller(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2smaller(smallint, smallint) is 'smaller of two';

create function pg_catalog.int2um(smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2um(smallint) is 'implementation of - operator';

create function pg_catalog.int2up(smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2up(smallint) is 'implementation of + operator';

create function pg_catalog.int2vectorin(cstring) returns int2vector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2vectorin(cstring) is 'I/O';

create function pg_catalog.int2vectorout(int2vector) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2vectorout(int2vector) is 'I/O';

create function pg_catalog.int2vectorrecv(internal) returns int2vector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2vectorrecv(internal) is 'I/O';

create function pg_catalog.int2vectorsend(int2vector) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2vectorsend(int2vector) is 'I/O';

create function pg_catalog.int2xor(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int2xor(smallint, smallint) is 'implementation of # operator';

create function pg_catalog.int4("char") returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4("char") is 'convert char to int4';

create function pg_catalog.int4(bigint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(bigint) is 'convert int8 to int4';

create function pg_catalog.int4(bit) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(bit) is 'convert bitstring to int4';

create function pg_catalog.int4(boolean) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(boolean) is 'convert boolean to int4';

create function pg_catalog.int4(double precision) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(double precision) is 'convert float8 to int4';

create function pg_catalog.int4(jsonb) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(jsonb) is 'convert jsonb to int4';

create function pg_catalog.int4(numeric) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(numeric) is 'convert numeric to int4';

create function pg_catalog.int4(real) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(real) is 'convert float4 to int4';

create function pg_catalog.int4(smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4(smallint) is 'convert int2 to int4';

create function pg_catalog.int42div(integer, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42div(integer, smallint) is 'implementation of / operator';

create function pg_catalog.int42eq(integer, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42eq(integer, smallint) is 'implementation of = operator';

create function pg_catalog.int42ge(integer, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42ge(integer, smallint) is 'implementation of >= operator';

create function pg_catalog.int42gt(integer, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42gt(integer, smallint) is 'implementation of > operator';

create function pg_catalog.int42le(integer, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42le(integer, smallint) is 'implementation of <= operator';

create function pg_catalog.int42lt(integer, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42lt(integer, smallint) is 'implementation of < operator';

create function pg_catalog.int42mi(integer, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42mi(integer, smallint) is 'implementation of - operator';

create function pg_catalog.int42mul(integer, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42mul(integer, smallint) is 'implementation of * operator';

create function pg_catalog.int42ne(integer, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42ne(integer, smallint) is 'implementation of <> operator';

create function pg_catalog.int42pl(integer, smallint) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int42pl(integer, smallint) is 'implementation of + operator';

create function pg_catalog.int48div(integer, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48div(integer, bigint) is 'implementation of / operator';

create function pg_catalog.int48eq(integer, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48eq(integer, bigint) is 'implementation of = operator';

create function pg_catalog.int48ge(integer, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48ge(integer, bigint) is 'implementation of >= operator';

create function pg_catalog.int48gt(integer, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48gt(integer, bigint) is 'implementation of > operator';

create function pg_catalog.int48le(integer, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48le(integer, bigint) is 'implementation of <= operator';

create function pg_catalog.int48lt(integer, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48lt(integer, bigint) is 'implementation of < operator';

create function pg_catalog.int48mi(integer, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48mi(integer, bigint) is 'implementation of - operator';

create function pg_catalog.int48mul(integer, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48mul(integer, bigint) is 'implementation of * operator';

create function pg_catalog.int48ne(integer, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48ne(integer, bigint) is 'implementation of <> operator';

create function pg_catalog.int48pl(integer, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int48pl(integer, bigint) is 'implementation of + operator';

create function pg_catalog.int4_accum(internal, integer) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_accum(internal, integer) is 'aggregate transition function';

create function pg_catalog.int4_accum_inv(internal, integer) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_accum_inv(internal, integer) is 'aggregate transition function';

create function pg_catalog.int4_avg_accum(bigint[], integer) returns bigint[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_avg_accum(bigint[], integer) is 'aggregate transition function';

create function pg_catalog.int4_avg_accum_inv(bigint[], integer) returns bigint[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_avg_accum_inv(bigint[], integer) is 'aggregate transition function';

create function pg_catalog.int4_avg_combine(bigint[], bigint[]) returns bigint[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_avg_combine(bigint[], bigint[]) is 'aggregate combine function';

create function pg_catalog.int4_mul_cash(integer, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_mul_cash(integer, money) is 'implementation of * operator';

create function pg_catalog.int4_sum(bigint, integer) returns bigint
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4_sum(bigint, integer) is 'aggregate transition function';

create function pg_catalog.int4abs(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4abs(integer) is 'implementation of @ operator';

create function pg_catalog.int4and(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4and(integer, integer) is 'implementation of & operator';

create function pg_catalog.int4div(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4div(integer, integer) is 'implementation of / operator';

create function pg_catalog.int4eq(integer, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4eq(integer, integer) is 'implementation of = operator';

create function pg_catalog.int4ge(integer, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4ge(integer, integer) is 'implementation of >= operator';

create function pg_catalog.int4gt(integer, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4gt(integer, integer) is 'implementation of > operator';

create function pg_catalog.int4in(cstring) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4in(cstring) is 'I/O';

create function pg_catalog.int4inc(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4inc(integer) is 'increment';

create function pg_catalog.int4larger(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4larger(integer, integer) is 'larger of two';

create function pg_catalog.int4le(integer, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4le(integer, integer) is 'implementation of <= operator';

create function pg_catalog.int4lt(integer, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4lt(integer, integer) is 'implementation of < operator';

create function pg_catalog.int4mi(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4mi(integer, integer) is 'implementation of - operator';

create function pg_catalog.int4mod(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4mod(integer, integer) is 'implementation of % operator';

create function pg_catalog.int4mul(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4mul(integer, integer) is 'implementation of * operator';

create function pg_catalog.int4ne(integer, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4ne(integer, integer) is 'implementation of <> operator';

create function pg_catalog.int4not(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4not(integer) is 'implementation of ~ operator';

create function pg_catalog.int4or(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4or(integer, integer) is 'implementation of | operator';

create function pg_catalog.int4out(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4out(integer) is 'I/O';

create function pg_catalog.int4pl(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4pl(integer, integer) is 'implementation of + operator';

create function pg_catalog.int4range(integer, integer) returns int4range
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4range(integer, integer) is 'int4range constructor';

create function pg_catalog.int4range(integer, integer, text) returns int4range
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4range(integer, integer, text) is 'int4range constructor';

create function pg_catalog.int4range_canonical(int4range) returns int4range
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4range_canonical(int4range) is 'convert an int4 range to canonical form';

create function pg_catalog.int4range_subdiff(integer, integer) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4range_subdiff(integer, integer) is 'float8 difference of two int4 values';

create function pg_catalog.int4recv(internal) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4recv(internal) is 'I/O';

create function pg_catalog.int4send(integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4send(integer) is 'I/O';

create function pg_catalog.int4shl(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4shl(integer, integer) is 'implementation of << operator';

create function pg_catalog.int4shr(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4shr(integer, integer) is 'implementation of >> operator';

create function pg_catalog.int4smaller(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4smaller(integer, integer) is 'smaller of two';

create function pg_catalog.int4um(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4um(integer) is 'implementation of - operator';

create function pg_catalog.int4up(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4up(integer) is 'implementation of + operator';

create function pg_catalog.int4xor(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int4xor(integer, integer) is 'implementation of # operator';

create function pg_catalog.int8(bit) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(bit) is 'convert bitstring to int8';

create function pg_catalog.int8(double precision) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(double precision) is 'convert float8 to int8';

create function pg_catalog.int8(integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(integer) is 'convert int4 to int8';

create function pg_catalog.int8(jsonb) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(jsonb) is 'convert jsonb to int8';

create function pg_catalog.int8(numeric) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(numeric) is 'convert numeric to int8';

create function pg_catalog.int8(oid) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(oid) is 'convert oid to int8';

create function pg_catalog.int8(real) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(real) is 'convert float4 to int8';

create function pg_catalog.int8(smallint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8(smallint) is 'convert int2 to int8';

create function pg_catalog.int82div(bigint, smallint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82div(bigint, smallint) is 'implementation of / operator';

create function pg_catalog.int82eq(bigint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82eq(bigint, smallint) is 'implementation of = operator';

create function pg_catalog.int82ge(bigint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82ge(bigint, smallint) is 'implementation of >= operator';

create function pg_catalog.int82gt(bigint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82gt(bigint, smallint) is 'implementation of > operator';

create function pg_catalog.int82le(bigint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82le(bigint, smallint) is 'implementation of <= operator';

create function pg_catalog.int82lt(bigint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82lt(bigint, smallint) is 'implementation of < operator';

create function pg_catalog.int82mi(bigint, smallint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82mi(bigint, smallint) is 'implementation of - operator';

create function pg_catalog.int82mul(bigint, smallint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82mul(bigint, smallint) is 'implementation of * operator';

create function pg_catalog.int82ne(bigint, smallint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82ne(bigint, smallint) is 'implementation of <> operator';

create function pg_catalog.int82pl(bigint, smallint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int82pl(bigint, smallint) is 'implementation of + operator';

create function pg_catalog.int84div(bigint, integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84div(bigint, integer) is 'implementation of / operator';

create function pg_catalog.int84eq(bigint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84eq(bigint, integer) is 'implementation of = operator';

create function pg_catalog.int84ge(bigint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84ge(bigint, integer) is 'implementation of >= operator';

create function pg_catalog.int84gt(bigint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84gt(bigint, integer) is 'implementation of > operator';

create function pg_catalog.int84le(bigint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84le(bigint, integer) is 'implementation of <= operator';

create function pg_catalog.int84lt(bigint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84lt(bigint, integer) is 'implementation of < operator';

create function pg_catalog.int84mi(bigint, integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84mi(bigint, integer) is 'implementation of - operator';

create function pg_catalog.int84mul(bigint, integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84mul(bigint, integer) is 'implementation of * operator';

create function pg_catalog.int84ne(bigint, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84ne(bigint, integer) is 'implementation of <> operator';

create function pg_catalog.int84pl(bigint, integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int84pl(bigint, integer) is 'implementation of + operator';

create function pg_catalog.int8_accum(internal, bigint) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_accum(internal, bigint) is 'aggregate transition function';

create function pg_catalog.int8_accum_inv(internal, bigint) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_accum_inv(internal, bigint) is 'aggregate transition function';

create function pg_catalog.int8_avg(bigint[]) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_avg(bigint[]) is 'aggregate final function';

create function pg_catalog.int8_avg_accum(internal, bigint) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_avg_accum(internal, bigint) is 'aggregate transition function';

create function pg_catalog.int8_avg_accum_inv(internal, bigint) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_avg_accum_inv(internal, bigint) is 'aggregate transition function';

create function pg_catalog.int8_avg_combine(internal, internal) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_avg_combine(internal, internal) is 'aggregate combine function';

create function pg_catalog.int8_avg_deserialize(bytea, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_avg_deserialize(bytea, internal) is 'aggregate deserial function';

create function pg_catalog.int8_avg_serialize(internal) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_avg_serialize(internal) is 'aggregate serial function';

create function pg_catalog.int8_mul_cash(bigint, money) returns money
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_mul_cash(bigint, money) is 'implementation of * operator';

create function pg_catalog.int8_sum(numeric, bigint) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8_sum(numeric, bigint) is 'aggregate transition function';

create function pg_catalog.int8abs(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8abs(bigint) is 'implementation of @ operator';

create function pg_catalog.int8and(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8and(bigint, bigint) is 'implementation of & operator';

create function pg_catalog.int8dec(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8dec(bigint) is 'decrement';

create function pg_catalog.int8dec_any(bigint, "any") returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8dec_any(bigint, "any") is 'decrement, ignores second argument';

create function pg_catalog.int8div(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8div(bigint, bigint) is 'implementation of / operator';

create function pg_catalog.int8eq(bigint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8eq(bigint, bigint) is 'implementation of = operator';

create function pg_catalog.int8ge(bigint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8ge(bigint, bigint) is 'implementation of >= operator';

create function pg_catalog.int8gt(bigint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8gt(bigint, bigint) is 'implementation of > operator';

create function pg_catalog.int8in(cstring) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8in(cstring) is 'I/O';

create function pg_catalog.int8inc(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8inc(bigint) is 'increment';

create function pg_catalog.int8inc_any(bigint, "any") returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8inc_any(bigint, "any") is 'increment, ignores second argument';

create function pg_catalog.int8inc_float8_float8(bigint, double precision, double precision) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8inc_float8_float8(bigint, double precision, double precision) is 'aggregate transition function';

create function pg_catalog.int8larger(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8larger(bigint, bigint) is 'larger of two';

create function pg_catalog.int8le(bigint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8le(bigint, bigint) is 'implementation of <= operator';

create function pg_catalog.int8lt(bigint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8lt(bigint, bigint) is 'implementation of < operator';

create function pg_catalog.int8mi(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8mi(bigint, bigint) is 'implementation of - operator';

create function pg_catalog.int8mod(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8mod(bigint, bigint) is 'implementation of % operator';

create function pg_catalog.int8mul(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8mul(bigint, bigint) is 'implementation of * operator';

create function pg_catalog.int8ne(bigint, bigint) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8ne(bigint, bigint) is 'implementation of <> operator';

create function pg_catalog.int8not(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8not(bigint) is 'implementation of ~ operator';

create function pg_catalog.int8or(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8or(bigint, bigint) is 'implementation of | operator';

create function pg_catalog.int8out(bigint) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8out(bigint) is 'I/O';

create function pg_catalog.int8pl(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8pl(bigint, bigint) is 'implementation of + operator';

create function pg_catalog.int8pl_inet(bigint, inet) returns inet
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8pl_inet(bigint, inet) is 'implementation of + operator';

create function pg_catalog.int8range(bigint, bigint) returns int8range
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8range(bigint, bigint) is 'int8range constructor';

create function pg_catalog.int8range(bigint, bigint, text) returns int8range
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8range(bigint, bigint, text) is 'int8range constructor';

create function pg_catalog.int8range_canonical(int8range) returns int8range
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8range_canonical(int8range) is 'convert an int8 range to canonical form';

create function pg_catalog.int8range_subdiff(bigint, bigint) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8range_subdiff(bigint, bigint) is 'float8 difference of two int8 values';

create function pg_catalog.int8recv(internal) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8recv(internal) is 'I/O';

create function pg_catalog.int8send(bigint) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8send(bigint) is 'I/O';

create function pg_catalog.int8shl(bigint, integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8shl(bigint, integer) is 'implementation of << operator';

create function pg_catalog.int8shr(bigint, integer) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8shr(bigint, integer) is 'implementation of >> operator';

create function pg_catalog.int8smaller(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8smaller(bigint, bigint) is 'smaller of two';

create function pg_catalog.int8um(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8um(bigint) is 'implementation of - operator';

create function pg_catalog.int8up(bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8up(bigint) is 'implementation of + operator';

create function pg_catalog.int8xor(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.int8xor(bigint, bigint) is 'implementation of # operator';

create function pg_catalog.integer_pl_date(integer, date) returns date
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.integer_pl_date(integer, date) is 'implementation of + operator';

create function pg_catalog.inter_lb(line, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inter_lb(line, box) is 'implementation of ?# operator';

create function pg_catalog.inter_sb(lseg, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inter_sb(lseg, box) is 'implementation of ?# operator';

create function pg_catalog.inter_sl(lseg, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.inter_sl(lseg, line) is 'implementation of ?# operator';

create function pg_catalog.internal_in(cstring) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.internal_in(cstring) is 'I/O';

create function pg_catalog.internal_out(internal) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.internal_out(internal) is 'I/O';

create function pg_catalog.interval(interval, integer) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval(interval, integer) is 'adjust interval precision';

create function pg_catalog.interval(time) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval(time) is 'convert time to interval';

create function pg_catalog.interval_accum(interval[], interval) returns interval[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_accum(interval[], interval) is 'aggregate transition function';

create function pg_catalog.interval_accum_inv(interval[], interval) returns interval[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_accum_inv(interval[], interval) is 'aggregate transition function';

create function pg_catalog.interval_avg(interval[]) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_avg(interval[]) is 'aggregate final function';

create function pg_catalog.interval_cmp(interval, interval) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_cmp(interval, interval) is 'less-equal-greater';

create function pg_catalog.interval_combine(interval[], interval[]) returns interval[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_combine(interval[], interval[]) is 'aggregate combine function';

create function pg_catalog.interval_div(interval, double precision) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_div(interval, double precision) is 'implementation of / operator';

create function pg_catalog.interval_eq(interval, interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_eq(interval, interval) is 'implementation of = operator';

create function pg_catalog.interval_ge(interval, interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_ge(interval, interval) is 'implementation of >= operator';

create function pg_catalog.interval_gt(interval, interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_gt(interval, interval) is 'implementation of > operator';

create function pg_catalog.interval_hash(interval) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_hash(interval) is 'hash';

create function pg_catalog.interval_hash_extended(interval, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_hash_extended(interval, bigint) is 'hash';

create function pg_catalog.interval_in(cstring, oid, integer) returns interval
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.interval_larger(interval, interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_larger(interval, interval) is 'larger of two';

create function pg_catalog.interval_le(interval, interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_le(interval, interval) is 'implementation of <= operator';

create function pg_catalog.interval_lt(interval, interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_lt(interval, interval) is 'implementation of < operator';

create function pg_catalog.interval_mi(interval, interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_mi(interval, interval) is 'implementation of - operator';

create function pg_catalog.interval_mul(interval, double precision) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_mul(interval, double precision) is 'implementation of * operator';

create function pg_catalog.interval_ne(interval, interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_ne(interval, interval) is 'implementation of <> operator';

create function pg_catalog.interval_out(interval) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_out(interval) is 'I/O';

create function pg_catalog.interval_pl(interval, interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_pl(interval, interval) is 'implementation of + operator';

create function pg_catalog.interval_pl_date(interval, date) returns timestamp without time zone
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_pl_date(interval, date) is 'implementation of + operator';

create function pg_catalog.interval_pl_time(interval, time without time zone) returns time without time zone
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_pl_time(interval, time) is 'implementation of + operator';

create function pg_catalog.interval_pl_timestamp(interval, timestamp without time zone) returns timestamp without time zone
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_pl_timestamp(interval, timestamp) is 'implementation of + operator';

create function pg_catalog.interval_pl_timestamptz(interval, timestamp with time zone) returns timestamp with time zone
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_pl_timestamptz(interval, timestamp with time zone) is 'implementation of + operator';

create function pg_catalog.interval_pl_timetz(interval, time with time zone) returns time with time zone
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_pl_timetz(interval, time with time zone) is 'implementation of + operator';

create function pg_catalog.interval_recv(internal, oid, integer) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.interval_send(interval) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_send(interval) is 'I/O';

create function pg_catalog.interval_smaller(interval, interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_smaller(interval, interval) is 'smaller of two';

create function pg_catalog.interval_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_support(internal) is 'planner support for interval length coercion';

create function pg_catalog.interval_um(interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.interval_um(interval) is 'implementation of - operator';

create function pg_catalog.intervaltypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.intervaltypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.intervaltypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.intervaltypmodout(integer) is 'I/O typmod';

create function pg_catalog.isclosed(path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isclosed(path) is 'path closed?';

create function pg_catalog.isempty(anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isempty(anyrange) is 'is the range empty?';

create function pg_catalog.isfinite(date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isfinite(date) is 'finite date?';

create function pg_catalog.isfinite(interval) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isfinite(interval) is 'finite interval?';

create function pg_catalog.isfinite(timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isfinite(timestamp with time zone) is 'finite timestamp?';

create function pg_catalog.isfinite(timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isfinite(timestamp) is 'finite timestamp?';

create function pg_catalog.ishorizontal(line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ishorizontal(line) is 'horizontal';

create function pg_catalog.ishorizontal(lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ishorizontal(lseg) is 'horizontal';

create function pg_catalog.ishorizontal(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ishorizontal(point, point) is 'horizontally aligned';

create function pg_catalog.iso8859_1_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iso8859_1_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for LATIN1 to UTF8';

create function pg_catalog.iso8859_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iso8859_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for ISO-8859 2-16 to UTF8';

create function pg_catalog.iso_to_koi8r(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iso_to_koi8r(integer, integer, cstring, internal, integer) is 'internal conversion function for ISO-8859-5 to KOI8R';

create function pg_catalog.iso_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iso_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for ISO-8859-5 to MULE_INTERNAL';

create function pg_catalog.iso_to_win1251(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iso_to_win1251(integer, integer, cstring, internal, integer) is 'internal conversion function for ISO-8859-5 to WIN1251';

create function pg_catalog.iso_to_win866(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.iso_to_win866(integer, integer, cstring, internal, integer) is 'internal conversion function for ISO-8859-5 to WIN866';

create function pg_catalog.isopen(path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isopen(path) is 'path open?';

create function pg_catalog.isparallel(line, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isparallel(line, line) is 'parallel';

create function pg_catalog.isparallel(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isparallel(lseg, lseg) is 'parallel';

create function pg_catalog.isperp(line, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isperp(line, line) is 'perpendicular';

create function pg_catalog.isperp(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isperp(lseg, lseg) is 'perpendicular';

create function pg_catalog.isvertical(line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isvertical(line) is 'vertical';

create function pg_catalog.isvertical(lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isvertical(lseg) is 'vertical';

create function pg_catalog.isvertical(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.isvertical(point, point) is 'vertically aligned';

create function pg_catalog.johab_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.johab_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for JOHAB to UTF8';

create function pg_catalog.json_agg_finalfn(internal) returns json
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_agg_finalfn(internal) is 'json aggregate final function';

create function pg_catalog.json_agg_transfn(internal, anyelement) returns internal
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_agg_transfn(internal, anyelement) is 'json aggregate transition function';

create function pg_catalog.json_array_element(element_index integer, from_json json) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_array_element(integer, json) is 'implementation of -> operator';

create function pg_catalog.json_array_element_text(element_index integer, from_json json) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_array_element_text(integer, json) is 'implementation of ->> operator';

create function pg_catalog.json_array_elements(from_json json, out value json) returns setof json
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_array_elements(json, out json) is 'key value pairs of a json object';

create function pg_catalog.json_array_elements_text(from_json json, out value text) returns setof text
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_array_elements_text(json, out text) is 'elements of json array';

create function pg_catalog.json_array_length(json) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_array_length(json) is 'length of json array';

create function pg_catalog.json_build_array("any") returns json
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_build_array("any") is 'build a json array from any inputs';

create function pg_catalog.json_build_array() returns json
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_build_array() is 'build an empty json array';

create function pg_catalog.json_build_object("any") returns json
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_build_object("any") is 'build a json object from pairwise key/value inputs';

create function pg_catalog.json_build_object() returns json
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_build_object() is 'build an empty json object';

create function pg_catalog.json_each(from_json json, out key text, out value json) returns setof record
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_each(json, out text, out json) is 'key value pairs of a json object';

create function pg_catalog.json_each_text(from_json json, out key text, out value text) returns setof record
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_each_text(json, out text, out text) is 'key value pairs of a json object';

create function pg_catalog.json_extract_path(from_json json, path_elems text[]) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_extract_path(json, text[]) is 'get value from json with path elements';

create function pg_catalog.json_extract_path_text(from_json json, path_elems text[]) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_extract_path_text(json, text[]) is 'get value from json as text with path elements';

create function pg_catalog.json_in(cstring) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_in(cstring) is 'I/O';

create function pg_catalog.json_object(text[]) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object(text[]) is 'map text array of key value pairs to json object';

create function pg_catalog.json_object(text[], text[]) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object(text[], text[]) is 'map text arrays of keys and values to json object';

create function pg_catalog.json_object_agg_finalfn(internal) returns json
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object_agg_finalfn(internal) is 'json object aggregate final function';

create function pg_catalog.json_object_agg_transfn(internal, "any", "any") returns internal
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object_agg_transfn(internal, "any", "any") is 'json object aggregate transition function';

create function pg_catalog.json_object_field(field_name text, from_json json) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object_field(text, json) is 'implementation of -> operator';

create function pg_catalog.json_object_field_text(field_name text, from_json json) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object_field_text(text, json) is 'implementation of ->> operator';

create function pg_catalog.json_object_keys(json) returns setof text
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_object_keys(json) is 'get json object keys';

create function pg_catalog.json_out(json) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_out(json) is 'I/O';

create function pg_catalog.json_populate_record(base anyelement, from_json json, use_json_as_text boolean default false) returns anyelement
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_populate_record(anyelement, json, boolean) is 'get record fields from a json object';

create function pg_catalog.json_populate_recordset(base anyelement, from_json json, use_json_as_text boolean default false) returns setof anyelement
	stable
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_populate_recordset(anyelement, json, boolean) is 'get set of records with fields from a json array of objects';

create function pg_catalog.json_recv(internal) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_recv(internal) is 'I/O';

create function pg_catalog.json_send(json) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_send(json) is 'I/O';

create function pg_catalog.json_strip_nulls(json) returns json
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_strip_nulls(json) is 'remove object fields with null values from json';

create function pg_catalog.json_to_record(json) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_to_record(json) is 'get record fields from a json object';

create function pg_catalog.json_to_recordset(json) returns setof record
	stable
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_to_recordset(json) is 'get set of records with fields from a json array of objects';

create function pg_catalog.json_to_tsvector(json, jsonb) returns tsvector
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_to_tsvector(json, jsonb) is 'transform specified values from json to tsvector';

create function pg_catalog.json_to_tsvector(regconfig, json, jsonb) returns tsvector
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_to_tsvector(regconfig, json, jsonb) is 'transform specified values from json to tsvector';

create function pg_catalog.json_typeof(json) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.json_typeof(json) is 'get the type of a json value';

create function pg_catalog.jsonb_agg_finalfn(internal) returns jsonb
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_agg_finalfn(internal) is 'jsonb aggregate final function';

create function pg_catalog.jsonb_agg_transfn(internal, anyelement) returns internal
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_agg_transfn(internal, anyelement) is 'jsonb aggregate transition function';

create function pg_catalog.jsonb_array_element(element_index integer, from_json jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_array_element(integer, jsonb) is 'implementation of -> operator';

create function pg_catalog.jsonb_array_element_text(element_index integer, from_json jsonb) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_array_element_text(integer, jsonb) is 'implementation of ->> operator';

create function pg_catalog.jsonb_array_elements(from_json jsonb, out value jsonb) returns setof jsonb
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_array_elements(jsonb, out jsonb) is 'elements of a jsonb array';

create function pg_catalog.jsonb_array_elements_text(from_json jsonb, out value text) returns setof text
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_array_elements_text(jsonb, out text) is 'elements of jsonb array';

create function pg_catalog.jsonb_array_length(jsonb) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_array_length(jsonb) is 'length of jsonb array';

create function pg_catalog.jsonb_build_array("any") returns jsonb
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_build_array("any") is 'build a jsonb array from any inputs';

create function pg_catalog.jsonb_build_array() returns jsonb
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_build_array() is 'build an empty jsonb array';

create function pg_catalog.jsonb_build_object("any") returns jsonb
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_build_object("any") is 'build a jsonb object from pairwise key/value inputs';

create function pg_catalog.jsonb_build_object() returns jsonb
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_build_object() is 'build an empty jsonb object';

create function pg_catalog.jsonb_cmp(jsonb, jsonb) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_cmp(jsonb, jsonb) is 'less-equal-greater';

create function pg_catalog.jsonb_concat(jsonb, jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_concat(jsonb, jsonb) is 'implementation of || operator';

create function pg_catalog.jsonb_contained(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_contained(jsonb, jsonb) is 'implementation of <@ operator';

create function pg_catalog.jsonb_contains(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_contains(jsonb, jsonb) is 'implementation of @> operator';

create function pg_catalog.jsonb_delete(jsonb, integer) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_delete(jsonb, integer) is 'implementation of - operator';

create function pg_catalog.jsonb_delete(jsonb, text) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_delete(jsonb, text) is 'implementation of - operator';

create function pg_catalog.jsonb_delete(from_json jsonb, path_elems text[]) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_delete(jsonb, text[]) is 'implementation of - operator';

create function pg_catalog.jsonb_delete_path(jsonb, text[]) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_delete_path(jsonb, text[]) is 'implementation of #- operator';

create function pg_catalog.jsonb_each(from_json jsonb, out key text, out value jsonb) returns setof record
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_each(jsonb, out text, out jsonb) is 'key value pairs of a jsonb object';

create function pg_catalog.jsonb_each_text(from_json jsonb, out key text, out value text) returns setof record
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_each_text(jsonb, out text, out text) is 'key value pairs of a jsonb object';

create function pg_catalog.jsonb_eq(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_eq(jsonb, jsonb) is 'implementation of = operator';

create function pg_catalog.jsonb_exists(jsonb, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_exists(jsonb, text) is 'implementation of ? operator';

create function pg_catalog.jsonb_exists_all(jsonb, text[]) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_exists_all(jsonb, text[]) is 'implementation of ?& operator';

create function pg_catalog.jsonb_exists_any(jsonb, text[]) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_exists_any(jsonb, text[]) is 'implementation of ?| operator';

create function pg_catalog.jsonb_extract_path(from_json jsonb, path_elems text[]) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_extract_path(jsonb, text[]) is 'get value from jsonb with path elements';

create function pg_catalog.jsonb_extract_path_text(from_json jsonb, path_elems text[]) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_extract_path_text(jsonb, text[]) is 'get value from jsonb as text with path elements';

create function pg_catalog.jsonb_ge(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_ge(jsonb, jsonb) is 'implementation of >= operator';

create function pg_catalog.jsonb_gt(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_gt(jsonb, jsonb) is 'implementation of > operator';

create function pg_catalog.jsonb_hash(jsonb) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_hash(jsonb) is 'hash';

create function pg_catalog.jsonb_hash_extended(jsonb, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_hash_extended(jsonb, bigint) is 'hash';

create function pg_catalog.jsonb_in(cstring) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_in(cstring) is 'I/O';

create function pg_catalog.jsonb_insert(insert_after boolean default false, jsonb_in jsonb, path text[], replacement jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_insert(boolean, jsonb, text[], jsonb) is 'Insert value into a jsonb';

create function pg_catalog.jsonb_le(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_le(jsonb, jsonb) is 'implementation of <= operator';

create function pg_catalog.jsonb_lt(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_lt(jsonb, jsonb) is 'implementation of < operator';

create function pg_catalog.jsonb_ne(jsonb, jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_ne(jsonb, jsonb) is 'implementation of <> operator';

create function pg_catalog.jsonb_object(text[]) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object(text[]) is 'map text array of key value pairs to jsonb object';

create function pg_catalog.jsonb_object(text[], text[]) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object(text[], text[]) is 'map text array of key value pairs to jsonb object';

create function pg_catalog.jsonb_object_agg_finalfn(internal) returns jsonb
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object_agg_finalfn(internal) is 'jsonb object aggregate final function';

create function pg_catalog.jsonb_object_agg_transfn(internal, "any", "any") returns internal
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object_agg_transfn(internal, "any", "any") is 'jsonb object aggregate transition function';

create function pg_catalog.jsonb_object_field(field_name text, from_json jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object_field(text, jsonb) is 'implementation of -> operator';

create function pg_catalog.jsonb_object_field_text(field_name text, from_json jsonb) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object_field_text(text, jsonb) is 'implementation of ->> operator';

create function pg_catalog.jsonb_object_keys(jsonb) returns setof text
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_object_keys(jsonb) is 'get jsonb object keys';

create function pg_catalog.jsonb_out(jsonb) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_out(jsonb) is 'I/O';

create function pg_catalog.jsonb_path_exists(path jsonpath, silent boolean default false, target jsonb, vars jsonb default '{}'::jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_exists(jsonpath, boolean, jsonb, jsonb) is 'jsonpath exists test';

create function pg_catalog.jsonb_path_exists_opr(jsonb, jsonpath) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_exists_opr(jsonb, jsonpath) is 'implementation of @? operator';

create function pg_catalog.jsonb_path_match(path jsonpath, silent boolean default false, target jsonb, vars jsonb default '{}'::jsonb) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_match(jsonpath, boolean, jsonb, jsonb) is 'jsonpath match';

create function pg_catalog.jsonb_path_match_opr(jsonb, jsonpath) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_match_opr(jsonb, jsonpath) is 'implementation of @@ operator';

create function pg_catalog.jsonb_path_query(path jsonpath, silent boolean default false, target jsonb, vars jsonb default '{}'::jsonb) returns setof jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_query(jsonpath, boolean, jsonb, jsonb) is 'jsonpath query';

create function pg_catalog.jsonb_path_query_array(path jsonpath, silent boolean default false, target jsonb, vars jsonb default '{}'::jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_query_array(jsonpath, boolean, jsonb, jsonb) is 'jsonpath query wrapped into array';

create function pg_catalog.jsonb_path_query_first(path jsonpath, silent boolean default false, target jsonb, vars jsonb default '{}'::jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_path_query_first(jsonpath, boolean, jsonb, jsonb) is 'jsonpath query first item';

create function pg_catalog.jsonb_populate_record(anyelement, jsonb) returns anyelement
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_populate_record(anyelement, jsonb) is 'get record fields from a jsonb object';

create function pg_catalog.jsonb_populate_recordset(anyelement, jsonb) returns setof anyelement
	stable
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_populate_recordset(anyelement, jsonb) is 'get set of records with fields from a jsonb array of objects';

create function pg_catalog.jsonb_pretty(jsonb) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_pretty(jsonb) is 'Indented text from jsonb';

create function pg_catalog.jsonb_recv(internal) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_recv(internal) is 'I/O';

create function pg_catalog.jsonb_send(jsonb) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_send(jsonb) is 'I/O';

create function pg_catalog.jsonb_set(create_if_missing boolean default true, jsonb_in jsonb, path text[], replacement jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_set(boolean, jsonb, text[], jsonb) is 'Set part of a jsonb';

create function pg_catalog.jsonb_strip_nulls(jsonb) returns jsonb
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_strip_nulls(jsonb) is 'remove object fields with null values from jsonb';

create function pg_catalog.jsonb_to_record(jsonb) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_to_record(jsonb) is 'get record fields from a jsonb object';

create function pg_catalog.jsonb_to_recordset(jsonb) returns setof record
	stable
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_to_recordset(jsonb) is 'get set of records with fields from a jsonb array of objects';

create function pg_catalog.jsonb_to_tsvector(jsonb, jsonb) returns tsvector
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_to_tsvector(jsonb, jsonb) is 'transform specified values from jsonb to tsvector';

create function pg_catalog.jsonb_to_tsvector(regconfig, jsonb, jsonb) returns tsvector
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_to_tsvector(regconfig, jsonb, jsonb) is 'transform specified values from jsonb to tsvector';

create function pg_catalog.jsonb_typeof(jsonb) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonb_typeof(jsonb) is 'get the type of a jsonb value';

create function pg_catalog.jsonpath_in(cstring) returns jsonpath
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonpath_in(cstring) is 'I/O';

create function pg_catalog.jsonpath_out(jsonpath) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonpath_out(jsonpath) is 'I/O';

create function pg_catalog.jsonpath_recv(internal) returns jsonpath
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonpath_recv(internal) is 'I/O';

create function pg_catalog.jsonpath_send(jsonpath) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.jsonpath_send(jsonpath) is 'I/O';

create function pg_catalog.justify_days(interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.justify_days(interval) is 'promote groups of 30 days to numbers of months';

create function pg_catalog.justify_hours(interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.justify_hours(interval) is 'promote groups of 24 hours to numbers of days';

create function pg_catalog.justify_interval(interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.justify_interval(interval) is 'promote groups of 24 hours to numbers of days and promote groups of 30 days to numbers of months';

create function pg_catalog.koi8r_to_iso(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.koi8r_to_iso(integer, integer, cstring, internal, integer) is 'internal conversion function for KOI8R to ISO-8859-5';

create function pg_catalog.koi8r_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.koi8r_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for KOI8R to MULE_INTERNAL';

create function pg_catalog.koi8r_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.koi8r_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for KOI8R to UTF8';

create function pg_catalog.koi8r_to_win1251(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.koi8r_to_win1251(integer, integer, cstring, internal, integer) is 'internal conversion function for KOI8R to WIN1251';

create function pg_catalog.koi8r_to_win866(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.koi8r_to_win866(integer, integer, cstring, internal, integer) is 'internal conversion function for KOI8R to WIN866';

create function pg_catalog.koi8u_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.koi8u_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for KOI8U to UTF8';

create function pg_catalog.lag(anyelement) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lag(anyelement) is 'fetch the preceding row value';

create function pg_catalog.lag(anyelement, integer) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lag(anyelement, integer) is 'fetch the Nth preceding row value';

create function pg_catalog.lag(anyelement, integer, anyelement) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lag(anyelement, integer, anyelement) is 'fetch the Nth preceding row value with default';

create function pg_catalog.language_handler_in(cstring) returns language_handler
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.language_handler_in(cstring) is 'I/O';

create function pg_catalog.language_handler_out(language_handler) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.language_handler_out(language_handler) is 'I/O';

create function pg_catalog.last_value(anyelement) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.last_value(anyelement) is 'fetch the last row value';

create function pg_catalog.lastval() returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lastval() is 'current value from last used sequence';

create function pg_catalog.latin1_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.latin1_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for LATIN1 to MULE_INTERNAL';

create function pg_catalog.latin2_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.latin2_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for LATIN2 to MULE_INTERNAL';

create function pg_catalog.latin2_to_win1250(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.latin2_to_win1250(integer, integer, cstring, internal, integer) is 'internal conversion function for LATIN2 to WIN1250';

create function pg_catalog.latin3_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.latin3_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for LATIN3 to MULE_INTERNAL';

create function pg_catalog.latin4_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.latin4_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for LATIN4 to MULE_INTERNAL';

create function pg_catalog.lead(anyelement) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lead(anyelement) is 'fetch the following row value';

create function pg_catalog.lead(anyelement, integer) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lead(anyelement, integer) is 'fetch the Nth following row value';

create function pg_catalog.lead(anyelement, integer, anyelement) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lead(anyelement, integer, anyelement) is 'fetch the Nth following row value with default';

create function pg_catalog."left"(text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."left"(text, integer) is 'extract the first n characters';

create function pg_catalog.length(bit) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(bit) is 'bitstring length';

create function pg_catalog.length(bytea) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(bytea) is 'octet length';

create function pg_catalog.length(bytea, name) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(bytea, name) is 'length of string in specified encoding';

create function pg_catalog.length(char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(char) is 'character length';

create function pg_catalog.length(lseg) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(lseg) is 'distance between endpoints';

create function pg_catalog.length(path) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(path) is 'sum of path segments';

create function pg_catalog.length(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(text) is 'length';

create function pg_catalog.length(tsvector) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.length(tsvector) is 'number of lexemes';

create function pg_catalog."like"(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."like"(bytea, bytea) is 'matches LIKE expression';

create function pg_catalog."like"(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."like"(name, text) is 'matches LIKE expression';

create function pg_catalog."like"(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."like"(text, text) is 'matches LIKE expression';

create function pg_catalog.like_escape(bytea, bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.like_escape(bytea, bytea) is 'convert LIKE pattern to use backslash escapes';

create function pg_catalog.like_escape(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.like_escape(text, text) is 'convert LIKE pattern to use backslash escapes';

create function pg_catalog.likejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.likejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of LIKE';

create function pg_catalog.likesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.likesel(internal, oid, internal, integer) is 'restriction selectivity of LIKE';

create function pg_catalog.line(point, point) returns line
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line(point, point) is 'construct line from points';

create function pg_catalog.line_distance(line, line) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_distance(line, line) is 'implementation of <-> operator';

create function pg_catalog.line_eq(line, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_eq(line, line) is 'implementation of = operator';

create function pg_catalog.line_horizontal(line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_horizontal(line) is 'implementation of ?- operator';

create function pg_catalog.line_in(cstring) returns line
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_in(cstring) is 'I/O';

create function pg_catalog.line_interpt(line, line) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_interpt(line, line) is 'implementation of # operator';

create function pg_catalog.line_intersect(line, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_intersect(line, line) is 'implementation of ?# operator';

create function pg_catalog.line_out(line) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_out(line) is 'I/O';

create function pg_catalog.line_parallel(line, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_parallel(line, line) is 'implementation of ?|| operator';

create function pg_catalog.line_perp(line, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_perp(line, line) is 'implementation of ?-| operator';

create function pg_catalog.line_recv(internal) returns line
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_recv(internal) is 'I/O';

create function pg_catalog.line_send(line) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_send(line) is 'I/O';

create function pg_catalog.line_vertical(line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.line_vertical(line) is 'implementation of ?| operator';

create function pg_catalog.ln(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ln(double precision) is 'natural logarithm';

create function pg_catalog.ln(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ln(numeric) is 'natural logarithm';

create function pg_catalog.lo_close(integer) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_close(integer) is 'large object close';

create function pg_catalog.lo_creat(integer) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_creat(integer) is 'large object create';

create function pg_catalog.lo_create(oid) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_create(oid) is 'large object create';

create function pg_catalog.lo_export(oid, text) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_export(oid, text) is 'large object export';

create function pg_catalog.lo_from_bytea(oid, bytea) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_from_bytea(oid, bytea) is 'create new large object with given content';

create function pg_catalog.lo_get(oid) returns bytea
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_get(oid) is 'read entire large object';

create function pg_catalog.lo_get(oid, bigint, integer) returns bytea
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_get(oid, bigint, integer) is 'read large object from offset for length';

create function pg_catalog.lo_import(text) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_import(text) is 'large object import';

create function pg_catalog.lo_import(text, oid) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_import(text, oid) is 'large object import';

create function pg_catalog.lo_lseek(integer, integer, integer) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_lseek(integer, integer, integer) is 'large object seek';

create function pg_catalog.lo_lseek64(integer, bigint, integer) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_lseek64(integer, bigint, integer) is 'large object seek (64 bit)';

create function pg_catalog.lo_open(oid, integer) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_open(oid, integer) is 'large object open';

create function pg_catalog.lo_put(oid, bigint, bytea) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_put(oid, bigint, bytea) is 'write data at offset';

create function pg_catalog.lo_tell(integer) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_tell(integer) is 'large object position';

create function pg_catalog.lo_tell64(integer) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_tell64(integer) is 'large object position (64 bit)';

create function pg_catalog.lo_truncate(integer, integer) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_truncate(integer, integer) is 'truncate large object';

create function pg_catalog.lo_truncate64(integer, bigint) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_truncate64(integer, bigint) is 'truncate large object (64 bit)';

create function pg_catalog.lo_unlink(oid) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lo_unlink(oid) is 'large object unlink (delete)';

create function pg_catalog.log(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.log(double precision) is 'base 10 logarithm';

create function pg_catalog.log(numeric) returns numeric
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.log(numeric) is 'base 10 logarithm';

create function pg_catalog.log(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.log(numeric, numeric) is 'logarithm base m of n';

create function pg_catalog.log10(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.log10(double precision) is 'base 10 logarithm';

create function pg_catalog.log10(numeric) returns numeric
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.log10(numeric) is 'base 10 logarithm';

create function pg_catalog.loread(integer, integer) returns bytea
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.loread(integer, integer) is 'large object read';

create function pg_catalog.lower(anyrange) returns anyelement
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lower(anyrange) is 'lower bound of range';

create function pg_catalog.lower(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lower(text) is 'lowercase';

create function pg_catalog.lower_inc(anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lower_inc(anyrange) is 'is the range''s lower bound inclusive?';

create function pg_catalog.lower_inf(anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lower_inf(anyrange) is 'is the range''s lower bound infinite?';

create function pg_catalog.lowrite(integer, bytea) returns integer
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lowrite(integer, bytea) is 'large object write';

create function pg_catalog.lpad(text, integer) returns text
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lpad(text, integer) is 'left-pad string to length';

create function pg_catalog.lpad(text, integer, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lpad(text, integer, text) is 'left-pad string to length';

create function pg_catalog.lseg(box) returns lseg
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg(box) is 'diagonal of';

create function pg_catalog.lseg(point, point) returns lseg
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg(point, point) is 'convert points to line segment';

create function pg_catalog.lseg_center(lseg) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_center(lseg) is 'implementation of @@ operator';

create function pg_catalog.lseg_distance(lseg, lseg) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_distance(lseg, lseg) is 'implementation of <-> operator';

create function pg_catalog.lseg_eq(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_eq(lseg, lseg) is 'implementation of = operator';

create function pg_catalog.lseg_ge(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_ge(lseg, lseg) is 'implementation of >= operator';

create function pg_catalog.lseg_gt(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_gt(lseg, lseg) is 'implementation of > operator';

create function pg_catalog.lseg_horizontal(lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_horizontal(lseg) is 'implementation of ?- operator';

create function pg_catalog.lseg_in(cstring) returns lseg
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_in(cstring) is 'I/O';

create function pg_catalog.lseg_interpt(lseg, lseg) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_interpt(lseg, lseg) is 'implementation of # operator';

create function pg_catalog.lseg_intersect(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_intersect(lseg, lseg) is 'implementation of ?# operator';

create function pg_catalog.lseg_le(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_le(lseg, lseg) is 'implementation of <= operator';

create function pg_catalog.lseg_length(lseg) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_length(lseg) is 'implementation of @-@ operator';

create function pg_catalog.lseg_lt(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_lt(lseg, lseg) is 'implementation of < operator';

create function pg_catalog.lseg_ne(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_ne(lseg, lseg) is 'implementation of <> operator';

create function pg_catalog.lseg_out(lseg) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_out(lseg) is 'I/O';

create function pg_catalog.lseg_parallel(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_parallel(lseg, lseg) is 'implementation of ?|| operator';

create function pg_catalog.lseg_perp(lseg, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_perp(lseg, lseg) is 'implementation of ?-| operator';

create function pg_catalog.lseg_recv(internal) returns lseg
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_recv(internal) is 'I/O';

create function pg_catalog.lseg_send(lseg) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_send(lseg) is 'I/O';

create function pg_catalog.lseg_vertical(lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.lseg_vertical(lseg) is 'implementation of ?| operator';

create function pg_catalog.ltrim(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ltrim(text) is 'trim spaces from left end of string';

create function pg_catalog.ltrim(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ltrim(text, text) is 'trim selected characters from left end of string';

create function pg_catalog.macaddr(macaddr8) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr(macaddr8) is 'convert macaddr8 to macaddr';

create function pg_catalog.macaddr8(macaddr) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8(macaddr) is 'convert macaddr to macaddr8';

create function pg_catalog.macaddr8_and(macaddr8, macaddr8) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_and(macaddr8, macaddr8) is 'implementation of & operator';

create function pg_catalog.macaddr8_cmp(macaddr8, macaddr8) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_cmp(macaddr8, macaddr8) is 'less-equal-greater';

create function pg_catalog.macaddr8_eq(macaddr8, macaddr8) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_eq(macaddr8, macaddr8) is 'implementation of = operator';

create function pg_catalog.macaddr8_ge(macaddr8, macaddr8) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_ge(macaddr8, macaddr8) is 'implementation of >= operator';

create function pg_catalog.macaddr8_gt(macaddr8, macaddr8) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_gt(macaddr8, macaddr8) is 'implementation of > operator';

create function pg_catalog.macaddr8_in(cstring) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_in(cstring) is 'I/O';

create function pg_catalog.macaddr8_le(macaddr8, macaddr8) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_le(macaddr8, macaddr8) is 'implementation of <= operator';

create function pg_catalog.macaddr8_lt(macaddr8, macaddr8) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_lt(macaddr8, macaddr8) is 'implementation of < operator';

create function pg_catalog.macaddr8_ne(macaddr8, macaddr8) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_ne(macaddr8, macaddr8) is 'implementation of <> operator';

create function pg_catalog.macaddr8_not(macaddr8) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_not(macaddr8) is 'implementation of ~ operator';

create function pg_catalog.macaddr8_or(macaddr8, macaddr8) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_or(macaddr8, macaddr8) is 'implementation of | operator';

create function pg_catalog.macaddr8_out(macaddr8) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_out(macaddr8) is 'I/O';

create function pg_catalog.macaddr8_recv(internal) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_recv(internal) is 'I/O';

create function pg_catalog.macaddr8_send(macaddr8) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_send(macaddr8) is 'I/O';

create function pg_catalog.macaddr8_set7bit(macaddr8) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr8_set7bit(macaddr8) is 'set 7th bit in macaddr8';

create function pg_catalog.macaddr_and(macaddr, macaddr) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_and(macaddr, macaddr) is 'implementation of & operator';

create function pg_catalog.macaddr_cmp(macaddr, macaddr) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_cmp(macaddr, macaddr) is 'less-equal-greater';

create function pg_catalog.macaddr_eq(macaddr, macaddr) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_eq(macaddr, macaddr) is 'implementation of = operator';

create function pg_catalog.macaddr_ge(macaddr, macaddr) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_ge(macaddr, macaddr) is 'implementation of >= operator';

create function pg_catalog.macaddr_gt(macaddr, macaddr) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_gt(macaddr, macaddr) is 'implementation of > operator';

create function pg_catalog.macaddr_in(cstring) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_in(cstring) is 'I/O';

create function pg_catalog.macaddr_le(macaddr, macaddr) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_le(macaddr, macaddr) is 'implementation of <= operator';

create function pg_catalog.macaddr_lt(macaddr, macaddr) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_lt(macaddr, macaddr) is 'implementation of < operator';

create function pg_catalog.macaddr_ne(macaddr, macaddr) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_ne(macaddr, macaddr) is 'implementation of <> operator';

create function pg_catalog.macaddr_not(macaddr) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_not(macaddr) is 'implementation of ~ operator';

create function pg_catalog.macaddr_or(macaddr, macaddr) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_or(macaddr, macaddr) is 'implementation of | operator';

create function pg_catalog.macaddr_out(macaddr) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_out(macaddr) is 'I/O';

create function pg_catalog.macaddr_recv(internal) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_recv(internal) is 'I/O';

create function pg_catalog.macaddr_send(macaddr) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_send(macaddr) is 'I/O';

create function pg_catalog.macaddr_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.macaddr_sortsupport(internal) is 'sort support';

create function pg_catalog.make_date(day integer, month integer, year integer) returns date
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.make_date(integer, integer, integer) is 'construct date';

create function pg_catalog.make_interval(days integer default 0, hours integer default 0, mins integer default 0, months integer default 0, secs double precision default 0.0, weeks integer default 0, years integer default 0) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.make_interval(integer, integer, integer, integer, double precision, integer, integer) is 'construct interval';

create function pg_catalog.make_time(hour integer, min integer, sec double precision) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.make_time(integer, integer, double precision) is 'construct time';

create function pg_catalog.make_timestamp(hour integer, mday integer, min integer, month integer, sec double precision, year integer) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.make_timestamp(integer, integer, integer, integer, double precision, integer) is 'construct timestamp';

create function pg_catalog.make_timestamptz(hour integer, mday integer, min integer, month integer, sec double precision, year integer) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.make_timestamptz(integer, integer, integer, integer, double precision, integer) is 'construct timestamp with time zone';

create function pg_catalog.make_timestamptz(hour integer, mday integer, min integer, month integer, sec double precision, timezone text, year integer) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.make_timestamptz(integer, integer, integer, integer, double precision, text, integer) is 'construct timestamp with time zone';

create function pg_catalog.makeaclitem(oid, oid, text, boolean) returns aclitem
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.makeaclitem(oid, oid, text, boolean) is 'make ACL item';

create function pg_catalog.masklen(inet) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.masklen(inet) is 'netmask length';

create function pg_catalog.md5(bytea) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.md5(bytea) is 'MD5 hash';

create function pg_catalog.md5(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.md5(text) is 'MD5 hash';

create function pg_catalog.mic_to_ascii(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_ascii(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to SQL_ASCII';

create function pg_catalog.mic_to_big5(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_big5(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to BIG5';

create function pg_catalog.mic_to_euc_cn(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_euc_cn(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to EUC_CN';

create function pg_catalog.mic_to_euc_jp(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_euc_jp(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to EUC_JP';

create function pg_catalog.mic_to_euc_kr(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_euc_kr(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to EUC_KR';

create function pg_catalog.mic_to_euc_tw(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_euc_tw(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to EUC_TW';

create function pg_catalog.mic_to_iso(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_iso(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to ISO-8859-5';

create function pg_catalog.mic_to_koi8r(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_koi8r(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to KOI8R';

create function pg_catalog.mic_to_latin1(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_latin1(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to LATIN1';

create function pg_catalog.mic_to_latin2(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_latin2(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to LATIN2';

create function pg_catalog.mic_to_latin3(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_latin3(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to LATIN3';

create function pg_catalog.mic_to_latin4(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_latin4(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to LATIN4';

create function pg_catalog.mic_to_sjis(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_sjis(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to SJIS';

create function pg_catalog.mic_to_win1250(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_win1250(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to WIN1250';

create function pg_catalog.mic_to_win1251(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_win1251(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to WIN1251';

create function pg_catalog.mic_to_win866(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mic_to_win866(integer, integer, cstring, internal, integer) is 'internal conversion function for MULE_INTERNAL to WIN866';

create function pg_catalog.mod(bigint, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mod(bigint, bigint) is 'modulus';

create function pg_catalog.mod(integer, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mod(integer, integer) is 'modulus';

create function pg_catalog.mod(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mod(numeric, numeric) is 'modulus';

create function pg_catalog.mod(smallint, smallint) returns smallint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mod(smallint, smallint) is 'modulus';

create function pg_catalog.mode_final(internal, anyelement) returns anyelement
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mode_final(internal, anyelement) is 'aggregate final function';

create function pg_catalog.money(bigint) returns money
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.money(bigint) is 'convert int8 to money';

create function pg_catalog.money(integer) returns money
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.money(integer) is 'convert int4 to money';

create function pg_catalog.money(numeric) returns money
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.money(numeric) is 'convert numeric to money';

create function pg_catalog.mul_d_interval(double precision, interval) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mul_d_interval(double precision, interval) is 'implementation of * operator';

create function pg_catalog.mxid_age(xid) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.mxid_age(xid) is 'age of a multi-transaction ID, in multi-transactions before current multi-transaction';

create function pg_catalog.name(char) returns name
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.name(char) is 'convert char(n) to name';

create function pg_catalog.name(text) returns name
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.name(text) is 'convert text to name';

create function pg_catalog.name(varchar) returns name
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.name(varchar) is 'convert varchar to name';

create function pg_catalog.nameconcatoid(name, oid) returns name
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameconcatoid(name, oid) is 'concatenate name and oid';

create function pg_catalog.nameeq(name, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameeq(name, name) is 'implementation of = operator';

create function pg_catalog.nameeqtext(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameeqtext(name, text) is 'implementation of = operator';

create function pg_catalog.namege(name, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namege(name, name) is 'implementation of >= operator';

create function pg_catalog.namegetext(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namegetext(name, text) is 'implementation of >= operator';

create function pg_catalog.namegt(name, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namegt(name, name) is 'implementation of > operator';

create function pg_catalog.namegttext(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namegttext(name, text) is 'implementation of > operator';

create function pg_catalog.nameiclike(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameiclike(name, text) is 'implementation of ~~* operator';

create function pg_catalog.nameicnlike(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameicnlike(name, text) is 'implementation of !~~* operator';

create function pg_catalog.nameicregexeq(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameicregexeq(name, text) is 'implementation of ~* operator';

create function pg_catalog.nameicregexne(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameicregexne(name, text) is 'implementation of !~* operator';

create function pg_catalog.namein(cstring) returns name
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namein(cstring) is 'I/O';

create function pg_catalog.namele(name, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namele(name, name) is 'implementation of <= operator';

create function pg_catalog.nameletext(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameletext(name, text) is 'implementation of <= operator';

create function pg_catalog.namelike(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namelike(name, text) is 'implementation of ~~ operator';

create function pg_catalog.namelt(name, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namelt(name, name) is 'implementation of < operator';

create function pg_catalog.namelttext(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namelttext(name, text) is 'implementation of < operator';

create function pg_catalog.namene(name, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namene(name, name) is 'implementation of <> operator';

create function pg_catalog.namenetext(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namenetext(name, text) is 'implementation of <> operator';

create function pg_catalog.namenlike(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namenlike(name, text) is 'implementation of !~~ operator';

create function pg_catalog.nameout(name) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameout(name) is 'I/O';

create function pg_catalog.namerecv(internal) returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namerecv(internal) is 'I/O';

create function pg_catalog.nameregexeq(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameregexeq(name, text) is 'implementation of ~ operator';

create function pg_catalog.nameregexne(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nameregexne(name, text) is 'implementation of !~ operator';

create function pg_catalog.namesend(name) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.namesend(name) is 'I/O';

create function pg_catalog.neqjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.neqjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of <> and related operators';

create function pg_catalog.neqsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.neqsel(internal, oid, internal, integer) is 'restriction selectivity of <> and related operators';

create function pg_catalog.netmask(inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.netmask(inet) is 'netmask of address';

create function pg_catalog.network(inet) returns cidr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network(inet) is 'network part of address';

create function pg_catalog.network_cmp(inet, inet) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_cmp(inet, inet) is 'less-equal-greater';

create function pg_catalog.network_eq(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_eq(inet, inet) is 'implementation of = operator';

create function pg_catalog.network_ge(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_ge(inet, inet) is 'implementation of >= operator';

create function pg_catalog.network_gt(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_gt(inet, inet) is 'implementation of > operator';

create function pg_catalog.network_larger(inet, inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_larger(inet, inet) is 'larger of two';

create function pg_catalog.network_le(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_le(inet, inet) is 'implementation of <= operator';

create function pg_catalog.network_lt(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_lt(inet, inet) is 'implementation of < operator';

create function pg_catalog.network_ne(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_ne(inet, inet) is 'implementation of <> operator';

create function pg_catalog.network_overlap(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_overlap(inet, inet) is 'implementation of && operator';

create function pg_catalog.network_smaller(inet, inet) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_smaller(inet, inet) is 'smaller of two';

create function pg_catalog.network_sub(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_sub(inet, inet) is 'implementation of << operator';

create function pg_catalog.network_subeq(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_subeq(inet, inet) is 'implementation of <<= operator';

create function pg_catalog.network_subset_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_subset_support(internal) is 'planner support for network_sub/superset';

create function pg_catalog.network_sup(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_sup(inet, inet) is 'implementation of >> operator';

create function pg_catalog.network_supeq(inet, inet) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.network_supeq(inet, inet) is 'implementation of >>= operator';

create function pg_catalog.networkjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.networkjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity for network operators';

create function pg_catalog.networksel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.networksel(internal, oid, internal, integer) is 'restriction selectivity for network operators';

create function pg_catalog.nextval(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nextval(regclass) is 'sequence next value';

create function pg_catalog.nlikejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nlikejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of NOT LIKE';

create function pg_catalog.nlikesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nlikesel(internal, oid, internal, integer) is 'restriction selectivity of NOT LIKE';

create function pg_catalog.notlike(bytea, bytea) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.notlike(bytea, bytea) is 'does not match LIKE expression';

create function pg_catalog.notlike(name, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.notlike(name, text) is 'does not match LIKE expression';

create function pg_catalog.notlike(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.notlike(text, text) is 'does not match LIKE expression';

create function pg_catalog.now() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.now() is 'current transaction time';

create function pg_catalog.npoints(path) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.npoints(path) is 'number of points';

create function pg_catalog.npoints(polygon) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.npoints(polygon) is 'number of points';

create function pg_catalog.nth_value(anyelement, integer) returns anyelement
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.nth_value(anyelement, integer) is 'fetch the Nth row value';

create function pg_catalog.ntile(integer) returns integer
	immutable
	window
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ntile(integer) is 'split rows into N groups';

create function pg_catalog.num_nonnulls("any") returns integer
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.num_nonnulls("any") is 'count the number of non-NULL arguments';

create function pg_catalog.num_nulls("any") returns integer
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.num_nulls("any") is 'count the number of NULL arguments';

create function pg_catalog.numeric(bigint) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(bigint) is 'convert int8 to numeric';

create function pg_catalog.numeric(double precision) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(double precision) is 'convert float8 to numeric';

create function pg_catalog.numeric(integer) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(integer) is 'convert int4 to numeric';

create function pg_catalog.numeric(jsonb) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(jsonb) is 'convert jsonb to numeric';

create function pg_catalog.numeric(money) returns numeric
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(money) is 'convert money to numeric';

create function pg_catalog.numeric(numeric, integer) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(numeric, integer) is 'adjust numeric to typmod precision/scale';

create function pg_catalog.numeric(real) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(real) is 'convert float4 to numeric';

create function pg_catalog.numeric(smallint) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric(smallint) is 'convert int2 to numeric';

create function pg_catalog.numeric_abs(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_abs(numeric) is 'implementation of @ operator';

create function pg_catalog.numeric_accum(internal, numeric) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_accum(internal, numeric) is 'aggregate transition function';

create function pg_catalog.numeric_accum_inv(internal, numeric) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_accum_inv(internal, numeric) is 'aggregate transition function';

create function pg_catalog.numeric_add(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_add(numeric, numeric) is 'implementation of + operator';

create function pg_catalog.numeric_avg(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_avg(internal) is 'aggregate final function';

create function pg_catalog.numeric_avg_accum(internal, numeric) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_avg_accum(internal, numeric) is 'aggregate transition function';

create function pg_catalog.numeric_avg_combine(internal, internal) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_avg_combine(internal, internal) is 'aggregate combine function';

create function pg_catalog.numeric_avg_deserialize(bytea, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_avg_deserialize(bytea, internal) is 'aggregate deserial function';

create function pg_catalog.numeric_avg_serialize(internal) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_avg_serialize(internal) is 'aggregate serial function';

create function pg_catalog.numeric_cmp(numeric, numeric) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_cmp(numeric, numeric) is 'less-equal-greater';

create function pg_catalog.numeric_combine(internal, internal) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_combine(internal, internal) is 'aggregate combine function';

create function pg_catalog.numeric_deserialize(bytea, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_deserialize(bytea, internal) is 'aggregate deserial function';

create function pg_catalog.numeric_div(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_div(numeric, numeric) is 'implementation of / operator';

create function pg_catalog.numeric_div_trunc(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_div_trunc(numeric, numeric) is 'trunc(x/y)';

create function pg_catalog.numeric_eq(numeric, numeric) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_eq(numeric, numeric) is 'implementation of = operator';

create function pg_catalog.numeric_exp(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_exp(numeric) is 'natural exponential (e^x)';

create function pg_catalog.numeric_fac(bigint) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_fac(bigint) is 'implementation of ! operator';

create function pg_catalog.numeric_ge(numeric, numeric) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_ge(numeric, numeric) is 'implementation of >= operator';

create function pg_catalog.numeric_gt(numeric, numeric) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_gt(numeric, numeric) is 'implementation of > operator';

create function pg_catalog.numeric_in(cstring, oid, integer) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.numeric_inc(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_inc(numeric) is 'increment by one';

create function pg_catalog.numeric_larger(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_larger(numeric, numeric) is 'larger of two';

create function pg_catalog.numeric_le(numeric, numeric) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_le(numeric, numeric) is 'implementation of <= operator';

create function pg_catalog.numeric_ln(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_ln(numeric) is 'natural logarithm';

create function pg_catalog.numeric_log(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_log(numeric, numeric) is 'logarithm base m of n';

create function pg_catalog.numeric_lt(numeric, numeric) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_lt(numeric, numeric) is 'implementation of < operator';

create function pg_catalog.numeric_mod(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_mod(numeric, numeric) is 'implementation of % operator';

create function pg_catalog.numeric_mul(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_mul(numeric, numeric) is 'implementation of * operator';

create function pg_catalog.numeric_ne(numeric, numeric) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_ne(numeric, numeric) is 'implementation of <> operator';

create function pg_catalog.numeric_out(numeric) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_out(numeric) is 'I/O';

create function pg_catalog.numeric_poly_avg(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_avg(internal) is 'aggregate final function';

create function pg_catalog.numeric_poly_combine(internal, internal) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_combine(internal, internal) is 'aggregate combine function';

create function pg_catalog.numeric_poly_deserialize(bytea, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_deserialize(bytea, internal) is 'aggregate deserial function';

create function pg_catalog.numeric_poly_serialize(internal) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_serialize(internal) is 'aggregate serial function';

create function pg_catalog.numeric_poly_stddev_pop(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_stddev_pop(internal) is 'aggregate final function';

create function pg_catalog.numeric_poly_stddev_samp(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_stddev_samp(internal) is 'aggregate final function';

create function pg_catalog.numeric_poly_sum(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_sum(internal) is 'aggregate final function';

create function pg_catalog.numeric_poly_var_pop(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_var_pop(internal) is 'aggregate final function';

create function pg_catalog.numeric_poly_var_samp(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_poly_var_samp(internal) is 'aggregate final function';

create function pg_catalog.numeric_power(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_power(numeric, numeric) is 'implementation of ^ operator';

create function pg_catalog.numeric_recv(internal, oid, integer) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.numeric_send(numeric) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_send(numeric) is 'I/O';

create function pg_catalog.numeric_serialize(internal) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_serialize(internal) is 'aggregate serial function';

create function pg_catalog.numeric_smaller(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_smaller(numeric, numeric) is 'smaller of two';

create function pg_catalog.numeric_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_sortsupport(internal) is 'sort support';

create function pg_catalog.numeric_sqrt(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_sqrt(numeric) is 'square root';

create function pg_catalog.numeric_stddev_pop(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_stddev_pop(internal) is 'aggregate final function';

create function pg_catalog.numeric_stddev_samp(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_stddev_samp(internal) is 'aggregate final function';

create function pg_catalog.numeric_sub(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_sub(numeric, numeric) is 'implementation of - operator';

create function pg_catalog.numeric_sum(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_sum(internal) is 'aggregate final function';

create function pg_catalog.numeric_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_support(internal) is 'planner support for numeric length coercion';

create function pg_catalog.numeric_uminus(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_uminus(numeric) is 'implementation of - operator';

create function pg_catalog.numeric_uplus(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_uplus(numeric) is 'implementation of + operator';

create function pg_catalog.numeric_var_pop(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_var_pop(internal) is 'aggregate final function';

create function pg_catalog.numeric_var_samp(internal) returns numeric
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numeric_var_samp(internal) is 'aggregate final function';

create function pg_catalog.numerictypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numerictypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.numerictypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numerictypmodout(integer) is 'I/O typmod';

create function pg_catalog.numnode(tsquery) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numnode(tsquery) is 'number of nodes';

create function pg_catalog.numrange(numeric, numeric) returns numrange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numrange(numeric, numeric) is 'numrange constructor';

create function pg_catalog.numrange(numeric, numeric, text) returns numrange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numrange(numeric, numeric, text) is 'numrange constructor';

create function pg_catalog.numrange_subdiff(numeric, numeric) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.numrange_subdiff(numeric, numeric) is 'float8 difference of two numeric values';

create function pg_catalog.obj_description(oid) returns text
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.obj_description(oid) is 'deprecated, use two-argument form instead';

create function pg_catalog.obj_description(oid, name) returns text
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.obj_description(oid, name) is 'get description for object id and catalog name';

create function pg_catalog.octet_length(bit) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.octet_length(bit) is 'octet length';

create function pg_catalog.octet_length(bytea) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.octet_length(bytea) is 'octet length';

create function pg_catalog.octet_length(char) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.octet_length(char) is 'octet length';

create function pg_catalog.octet_length(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.octet_length(text) is 'octet length';

create function pg_catalog.oid(bigint) returns oid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oid(bigint) is 'convert int8 to oid';

create function pg_catalog.oideq(oid, oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oideq(oid, oid) is 'implementation of = operator';

create function pg_catalog.oidge(oid, oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidge(oid, oid) is 'implementation of >= operator';

create function pg_catalog.oidgt(oid, oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidgt(oid, oid) is 'implementation of > operator';

create function pg_catalog.oidin(cstring) returns oid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidin(cstring) is 'I/O';

create function pg_catalog.oidlarger(oid, oid) returns oid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidlarger(oid, oid) is 'larger of two';

create function pg_catalog.oidle(oid, oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidle(oid, oid) is 'implementation of <= operator';

create function pg_catalog.oidlt(oid, oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidlt(oid, oid) is 'implementation of < operator';

create function pg_catalog.oidne(oid, oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidne(oid, oid) is 'implementation of <> operator';

create function pg_catalog.oidout(oid) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidout(oid) is 'I/O';

create function pg_catalog.oidrecv(internal) returns oid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidrecv(internal) is 'I/O';

create function pg_catalog.oidsend(oid) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidsend(oid) is 'I/O';

create function pg_catalog.oidsmaller(oid, oid) returns oid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidsmaller(oid, oid) is 'smaller of two';

create function pg_catalog.oidvectoreq(oidvector, oidvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectoreq(oidvector, oidvector) is 'implementation of = operator';

create function pg_catalog.oidvectorge(oidvector, oidvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorge(oidvector, oidvector) is 'implementation of >= operator';

create function pg_catalog.oidvectorgt(oidvector, oidvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorgt(oidvector, oidvector) is 'implementation of > operator';

create function pg_catalog.oidvectorin(cstring) returns oidvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorin(cstring) is 'I/O';

create function pg_catalog.oidvectorle(oidvector, oidvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorle(oidvector, oidvector) is 'implementation of <= operator';

create function pg_catalog.oidvectorlt(oidvector, oidvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorlt(oidvector, oidvector) is 'implementation of < operator';

create function pg_catalog.oidvectorne(oidvector, oidvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorne(oidvector, oidvector) is 'implementation of <> operator';

create function pg_catalog.oidvectorout(oidvector) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorout(oidvector) is 'I/O';

create function pg_catalog.oidvectorrecv(internal) returns oidvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorrecv(internal) is 'I/O';

create function pg_catalog.oidvectorsend(oidvector) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectorsend(oidvector) is 'I/O';

create function pg_catalog.oidvectortypes(oidvector) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.oidvectortypes(oidvector) is 'print type names of oidvector field';

create function pg_catalog.on_pb(point, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.on_pb(point, box) is 'implementation of <@ operator';

create function pg_catalog.on_pl(point, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.on_pl(point, line) is 'implementation of <@ operator';

create function pg_catalog.on_ppath(point, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.on_ppath(point, path) is 'implementation of <@ operator';

create function pg_catalog.on_ps(point, lseg) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.on_ps(point, lseg) is 'implementation of <@ operator';

create function pg_catalog.on_sb(lseg, box) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.on_sb(lseg, box) is 'implementation of <@ operator';

create function pg_catalog.on_sl(lseg, line) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.on_sl(lseg, line) is 'implementation of <@ operator';

create function pg_catalog.opaque_in(cstring) returns opaque
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.opaque_in(cstring) is 'I/O';

create function pg_catalog.opaque_out(opaque) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.opaque_out(opaque) is 'I/O';

create function pg_catalog.ordered_set_transition(internal, "any") returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ordered_set_transition(internal, "any") is 'aggregate transition function';

create function pg_catalog.ordered_set_transition_multi(internal, "any") returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ordered_set_transition_multi(internal, "any") is 'aggregate transition function';

create function pg_catalog."overlaps"(time with time zone, time with time zone, time with time zone, time with time zone) returns boolean
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(time with time zone, time with time zone, time with time zone, time with time zone) is 'intervals overlap?';

create function pg_catalog."overlaps"(time without time zone, interval, time without time zone, interval) returns boolean
	immutable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(time, interval, time, interval) is 'intervals overlap?';

create function pg_catalog."overlaps"(time without time zone, interval, time without time zone, time without time zone) returns boolean
	immutable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(time, interval, time, time) is 'intervals overlap?';

create function pg_catalog."overlaps"(time without time zone, time without time zone, time without time zone, interval) returns boolean
	immutable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(time, time, time, interval) is 'intervals overlap?';

create function pg_catalog."overlaps"(time, time, time, time) returns boolean
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(time, time, time, time) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp with time zone, interval, timestamp with time zone, interval) returns boolean
	stable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp with time zone, interval, timestamp with time zone, interval) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp with time zone, interval, timestamp with time zone, timestamp with time zone) returns boolean
	stable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp with time zone, interval, timestamp with time zone, timestamp with time zone) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp with time zone, timestamp with time zone, timestamp with time zone, interval) returns boolean
	stable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp with time zone, timestamp with time zone, timestamp with time zone, interval) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp with time zone, timestamp with time zone, timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp with time zone, timestamp with time zone, timestamp with time zone, timestamp with time zone) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp without time zone, interval, timestamp without time zone, interval) returns boolean
	immutable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp, interval, timestamp, interval) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp without time zone, interval, timestamp without time zone, timestamp without time zone) returns boolean
	immutable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp, interval, timestamp, timestamp) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp without time zone, timestamp without time zone, timestamp without time zone, interval) returns boolean
	immutable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp, timestamp, timestamp, interval) is 'intervals overlap?';

create function pg_catalog."overlaps"(timestamp, timestamp, timestamp, timestamp) returns boolean
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."overlaps"(timestamp, timestamp, timestamp, timestamp) is 'intervals overlap?';

create function pg_catalog.overlay(bit, bit, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.overlay(bit, bit, integer) is 'substitute portion of bitstring';

create function pg_catalog.overlay(bit, bit, integer, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.overlay(bit, bit, integer, integer) is 'substitute portion of bitstring';

create function pg_catalog.overlay(bytea, bytea, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.overlay(bytea, bytea, integer) is 'substitute portion of string';

create function pg_catalog.overlay(bytea, bytea, integer, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.overlay(bytea, bytea, integer, integer) is 'substitute portion of string';

create function pg_catalog.overlay(text, text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.overlay(text, text, integer) is 'substitute portion of string';

create function pg_catalog.overlay(text, text, integer, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.overlay(text, text, integer, integer) is 'substitute portion of string';

create function pg_catalog.parse_ident(str text, strict boolean default true) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.parse_ident(text, boolean) is 'parse qualified identifier to array of identifiers';

create function pg_catalog.path(polygon) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path(polygon) is 'convert polygon to path';

create function pg_catalog.path_add(path, path) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_add(path, path) is 'implementation of + operator';

create function pg_catalog.path_add_pt(path, point) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_add_pt(path, point) is 'implementation of + operator';

create function pg_catalog.path_center(path) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_center(path) is 'implementation of @@ operator';

create function pg_catalog.path_contain_pt(path, point) returns boolean
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_contain_pt(path, point) is 'implementation of @> operator';

create function pg_catalog.path_distance(path, path) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_distance(path, path) is 'implementation of <-> operator';

create function pg_catalog.path_div_pt(path, point) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_div_pt(path, point) is 'implementation of / operator';

create function pg_catalog.path_in(cstring) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_in(cstring) is 'I/O';

create function pg_catalog.path_inter(path, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_inter(path, path) is 'implementation of ?# operator';

create function pg_catalog.path_length(path) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_length(path) is 'implementation of @-@ operator';

create function pg_catalog.path_mul_pt(path, point) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_mul_pt(path, point) is 'implementation of * operator';

create function pg_catalog.path_n_eq(path, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_n_eq(path, path) is 'implementation of = operator';

create function pg_catalog.path_n_ge(path, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_n_ge(path, path) is 'implementation of >= operator';

create function pg_catalog.path_n_gt(path, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_n_gt(path, path) is 'implementation of > operator';

create function pg_catalog.path_n_le(path, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_n_le(path, path) is 'implementation of <= operator';

create function pg_catalog.path_n_lt(path, path) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_n_lt(path, path) is 'implementation of < operator';

create function pg_catalog.path_npoints(path) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_npoints(path) is 'implementation of # operator';

create function pg_catalog.path_out(path) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_out(path) is 'I/O';

create function pg_catalog.path_recv(internal) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_recv(internal) is 'I/O';

create function pg_catalog.path_send(path) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_send(path) is 'I/O';

create function pg_catalog.path_sub_pt(path, point) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.path_sub_pt(path, point) is 'implementation of - operator';

create function pg_catalog.pclose(path) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pclose(path) is 'close path';

create function pg_catalog.percent_rank() returns double precision
	immutable
	window
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percent_rank() is 'fractional rank within partition';

create function pg_catalog.percent_rank_final(internal, "any") returns double precision
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percent_rank_final(internal, "any") is 'aggregate final function';

create function pg_catalog.percentile_cont_float8_final(internal, double precision) returns double precision
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percentile_cont_float8_final(internal, double precision) is 'aggregate final function';

create function pg_catalog.percentile_cont_float8_multi_final(internal, double precision[]) returns double precision[]
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percentile_cont_float8_multi_final(internal, double precision[]) is 'aggregate final function';

create function pg_catalog.percentile_cont_interval_final(internal, double precision) returns interval
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percentile_cont_interval_final(internal, double precision) is 'aggregate final function';

create function pg_catalog.percentile_cont_interval_multi_final(internal, double precision[]) returns interval[]
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percentile_cont_interval_multi_final(internal, double precision[]) is 'aggregate final function';

create function pg_catalog.percentile_disc_final(internal, double precision, anyelement) returns anyelement
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percentile_disc_final(internal, double precision, anyelement) is 'aggregate final function';

create function pg_catalog.percentile_disc_multi_final(internal, double precision[], anyelement) returns anyarray
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.percentile_disc_multi_final(internal, double precision[], anyelement) is 'aggregate final function';

create function pg_catalog.pg_advisory_lock(bigint) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_lock(bigint) is 'obtain exclusive advisory lock';

create function pg_catalog.pg_advisory_lock(integer, integer) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_lock(integer, integer) is 'obtain exclusive advisory lock';

create function pg_catalog.pg_advisory_lock_shared(bigint) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_lock_shared(bigint) is 'obtain shared advisory lock';

create function pg_catalog.pg_advisory_lock_shared(integer, integer) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_lock_shared(integer, integer) is 'obtain shared advisory lock';

create function pg_catalog.pg_advisory_unlock(bigint) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_unlock(bigint) is 'release exclusive advisory lock';

create function pg_catalog.pg_advisory_unlock(integer, integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_unlock(integer, integer) is 'release exclusive advisory lock';

create function pg_catalog.pg_advisory_unlock_all() returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_unlock_all() is 'release all advisory locks';

create function pg_catalog.pg_advisory_unlock_shared(bigint) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_unlock_shared(bigint) is 'release shared advisory lock';

create function pg_catalog.pg_advisory_unlock_shared(integer, integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_unlock_shared(integer, integer) is 'release shared advisory lock';

create function pg_catalog.pg_advisory_xact_lock(bigint) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_xact_lock(bigint) is 'obtain exclusive advisory lock';

create function pg_catalog.pg_advisory_xact_lock(integer, integer) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_xact_lock(integer, integer) is 'obtain exclusive advisory lock';

create function pg_catalog.pg_advisory_xact_lock_shared(bigint) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_xact_lock_shared(bigint) is 'obtain shared advisory lock';

create function pg_catalog.pg_advisory_xact_lock_shared(integer, integer) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_advisory_xact_lock_shared(integer, integer) is 'obtain shared advisory lock';

create function pg_catalog.pg_available_extension_versions(out comment text, out name name, out relocatable boolean, out requires name[], out schema name, out superuser boolean, out version text) returns setof record
	stable
	strict
	cost 10
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_available_extension_versions(out text, out name, out boolean, out name[], out name, out boolean, out text) is 'list available extension versions';

create function pg_catalog.pg_available_extensions(out comment text, out default_version text, out name name) returns setof record
	stable
	strict
	cost 10
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_available_extensions(out text, out text, out name) is 'list available extensions';

create function pg_catalog.pg_backend_pid() returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_backend_pid() is 'statistics: current backend PID';

create function pg_catalog.pg_backup_start_time() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_backup_start_time() is 'start time of an online backup';

create function pg_catalog.pg_blocking_pids(integer) returns integer[]
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_blocking_pids(integer) is 'get array of PIDs of sessions blocking specified backend PID from acquiring a heavyweight lock';

create function pg_catalog.pg_cancel_backend(integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_cancel_backend(integer) is 'cancel a server process'' current query';

create function pg_catalog.pg_char_to_encoding(name) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_char_to_encoding(name) is 'convert encoding name to encoding id';

create function pg_catalog.pg_client_encoding() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_client_encoding() is 'encoding name of current database';

create function pg_catalog.pg_collation_actual_version(oid) returns text
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_collation_actual_version(oid) is 'get actual version of collation from operating system';

create function pg_catalog.pg_collation_for("any") returns text
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_collation_for("any") is 'collation of the argument; implementation of the COLLATION FOR expression';

create function pg_catalog.pg_collation_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_collation_is_visible(oid) is 'is collation visible in search path?';

create function pg_catalog.pg_column_is_updatable(regclass, smallint, boolean) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_column_is_updatable(regclass, smallint, boolean) is 'is a column updatable';

create function pg_catalog.pg_column_size("any") returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_column_size("any") is 'bytes required to store the value, perhaps with compression';

create function pg_catalog.pg_conf_load_time() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_conf_load_time() is 'configuration load time';

create function pg_catalog.pg_config(out name text, out setting text) returns setof record
	stable
	strict
	cost 1
	rows 23
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_config(out text, out text) is 'pg_config binary as a function';

create function pg_catalog.pg_control_checkpoint(out checkpoint_lsn pg_lsn, out checkpoint_time timestamp with time zone, out full_page_writes boolean, out newest_commit_ts_xid xid, out next_multi_offset xid, out next_multixact_id xid, out next_oid oid, out next_xid text, out oldest_active_xid xid, out oldest_commit_ts_xid xid, out oldest_multi_dbid oid, out oldest_multi_xid xid, out oldest_xid xid, out oldest_xid_dbid oid, out prev_timeline_id integer, out redo_lsn pg_lsn, out redo_wal_file text, out timeline_id integer) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_control_checkpoint(out pg_lsn, out timestamp with time zone, out boolean, out xid, out xid, out xid, out oid, out text, out xid, out xid, out oid, out xid, out xid, out oid, out integer, out pg_lsn, out text, out integer) is 'pg_controldata checkpoint state information as a function';

create function pg_catalog.pg_control_init(out blocks_per_segment integer, out bytes_per_wal_segment integer, out data_page_checksum_version integer, out database_block_size integer, out float4_pass_by_value boolean, out float8_pass_by_value boolean, out large_object_chunk_size integer, out max_data_alignment integer, out max_identifier_length integer, out max_index_columns integer, out max_toast_chunk_size integer, out wal_block_size integer) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_control_init(out integer, out integer, out integer, out integer, out boolean, out boolean, out integer, out integer, out integer, out integer, out integer, out integer) is 'pg_controldata init state information as a function';

create function pg_catalog.pg_control_recovery(out backup_end_lsn pg_lsn, out backup_start_lsn pg_lsn, out end_of_backup_record_required boolean, out min_recovery_end_lsn pg_lsn, out min_recovery_end_timeline integer) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_control_recovery(out pg_lsn, out pg_lsn, out boolean, out pg_lsn, out integer) is 'pg_controldata recovery state information as a function';

create function pg_catalog.pg_control_system(out catalog_version_no integer, out pg_control_last_modified timestamp with time zone, out pg_control_version integer, out system_identifier bigint) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_control_system(out integer, out timestamp with time zone, out integer, out bigint) is 'pg_controldata general state information as a function';

create function pg_catalog.pg_conversion_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_conversion_is_visible(oid) is 'is conversion visible in search path?';

create function pg_catalog.pg_copy_logical_replication_slot(dst_slot_name name, out lsn pg_lsn, out slot_name name, src_slot_name name) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_copy_logical_replication_slot(name, out pg_lsn, out name, name) is 'copy a logical replication slot';

create function pg_catalog.pg_copy_logical_replication_slot(dst_slot_name name, out lsn pg_lsn, out slot_name name, src_slot_name name, temporary boolean) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_copy_logical_replication_slot(name, out pg_lsn, out name, name, boolean) is 'copy a logical replication slot, changing temporality';

create function pg_catalog.pg_copy_logical_replication_slot(dst_slot_name name, out lsn pg_lsn, plugin name, out slot_name name, src_slot_name name, temporary boolean) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_copy_logical_replication_slot(name, out pg_lsn, name, out name, name, boolean) is 'copy a logical replication slot, changing temporality and plugin';

create function pg_catalog.pg_copy_physical_replication_slot(dst_slot_name name, out lsn pg_lsn, out slot_name name, src_slot_name name) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_copy_physical_replication_slot(name, out pg_lsn, out name, name) is 'copy a physical replication slot';

create function pg_catalog.pg_copy_physical_replication_slot(dst_slot_name name, out lsn pg_lsn, out slot_name name, src_slot_name name, temporary boolean) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_copy_physical_replication_slot(name, out pg_lsn, out name, name, boolean) is 'copy a physical replication slot, changing temporality';

create function pg_catalog.pg_create_logical_replication_slot(out lsn pg_lsn, plugin name, slot_name name, out slot_name name, temporary boolean default false) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_create_logical_replication_slot(out pg_lsn, name, name, out name, boolean) is 'set up a logical replication slot';

create function pg_catalog.pg_create_physical_replication_slot(immediately_reserve boolean default false, out lsn pg_lsn, slot_name name, out slot_name name, temporary boolean default false) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_create_physical_replication_slot(boolean, out pg_lsn, name, out name, boolean) is 'create a physical replication slot';

create function pg_catalog.pg_create_restore_point(text) returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_create_restore_point(text) is 'create a named restore point';

create function pg_catalog.pg_current_logfile() returns text
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_current_logfile() is 'current logging collector file location';

create function pg_catalog.pg_current_logfile(text) returns text
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_current_logfile(text) is 'current logging collector file location';

create function pg_catalog.pg_current_wal_flush_lsn() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_current_wal_flush_lsn() is 'current wal flush location';

create function pg_catalog.pg_current_wal_insert_lsn() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_current_wal_insert_lsn() is 'current wal insert location';

create function pg_catalog.pg_current_wal_lsn() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_current_wal_lsn() is 'current wal write location';

create function pg_catalog.pg_cursor(out creation_time timestamp with time zone, out is_binary boolean, out is_holdable boolean, out is_scrollable boolean, out name text, out statement text) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_cursor(out timestamp with time zone, out boolean, out boolean, out boolean, out text, out text) is 'get the open cursors for this session';

create function pg_catalog.pg_database_size(name) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_database_size(name) is 'total disk space usage for the specified database';

create function pg_catalog.pg_database_size(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_database_size(oid) is 'total disk space usage for the specified database';

create function pg_catalog.pg_ddl_command_in(cstring) returns pg_ddl_command
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ddl_command_in(cstring) is 'I/O';

create function pg_catalog.pg_ddl_command_out(pg_ddl_command) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ddl_command_out(pg_ddl_command) is 'I/O';

create function pg_catalog.pg_ddl_command_recv(internal) returns pg_ddl_command
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ddl_command_recv(internal) is 'I/O';

create function pg_catalog.pg_ddl_command_send(pg_ddl_command) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ddl_command_send(pg_ddl_command) is 'I/O';

create function pg_catalog.pg_dependencies_in(cstring) returns pg_dependencies
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_dependencies_in(cstring) is 'I/O';

create function pg_catalog.pg_dependencies_out(pg_dependencies) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_dependencies_out(pg_dependencies) is 'I/O';

create function pg_catalog.pg_dependencies_recv(internal) returns pg_dependencies
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_dependencies_recv(internal) is 'I/O';

create function pg_catalog.pg_dependencies_send(pg_dependencies) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_dependencies_send(pg_dependencies) is 'I/O';

create function pg_catalog.pg_describe_object(oid, oid, integer) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_describe_object(oid, oid, integer) is 'get identification of SQL object';

create function pg_catalog.pg_drop_replication_slot(name) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_drop_replication_slot(name) is 'drop a replication slot';

create function pg_catalog.pg_encoding_max_length(integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_encoding_max_length(integer) is 'maximum octet length of a character in given encoding';

create function pg_catalog.pg_encoding_to_char(integer) returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_encoding_to_char(integer) is 'convert encoding id to encoding name';

create function pg_catalog.pg_event_trigger_ddl_commands(out classid oid, out command pg_ddl_command, out command_tag text, out in_extension boolean, out object_identity text, out object_type text, out objid oid, out objsubid integer, out schema_name text) returns setof record
	stable
	strict
	cost 10
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_event_trigger_ddl_commands(out oid, out pg_ddl_command, out text, out boolean, out text, out text, out oid, out integer, out text) is 'list DDL actions being executed by the current command';

create function pg_catalog.pg_event_trigger_dropped_objects(out address_args text[], out address_names text[], out classid oid, out is_temporary boolean, out normal boolean, out object_identity text, out object_name text, out object_type text, out objid oid, out objsubid integer, out original boolean, out schema_name text) returns setof record
	stable
	strict
	cost 10
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_event_trigger_dropped_objects(out text[], out text[], out oid, out boolean, out boolean, out text, out text, out text, out oid, out integer, out boolean, out text) is 'list objects dropped by the current command';

create function pg_catalog.pg_event_trigger_table_rewrite_oid(out oid oid) returns oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_event_trigger_table_rewrite_oid(out oid) is 'return Oid of the table getting rewritten';

create function pg_catalog.pg_event_trigger_table_rewrite_reason() returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_event_trigger_table_rewrite_reason() is 'return reason code for table getting rewritten';

create function pg_catalog.pg_export_snapshot() returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_export_snapshot() is 'export a snapshot';

create function pg_catalog.pg_extension_config_dump(regclass, text) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_extension_config_dump(regclass, text) is 'flag an extension''s table contents to be emitted by pg_dump';

create function pg_catalog.pg_extension_update_paths(name name, out path text, out source text, out target text) returns setof record
	stable
	strict
	cost 10
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_extension_update_paths(name, out text, out text, out text) is 'list an extension''s version update paths';

create function pg_catalog.pg_filenode_relation(oid, oid) returns regclass
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_filenode_relation(oid, oid) is 'relation OID for filenode and tablespace';

create function pg_catalog.pg_function_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_function_is_visible(oid) is 'is function visible in search path?';

create function pg_catalog.pg_get_constraintdef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_constraintdef(oid) is 'constraint description';

create function pg_catalog.pg_get_constraintdef(oid, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_constraintdef(oid, boolean) is 'constraint description with pretty-print option';

create function pg_catalog.pg_get_expr(pg_node_tree, oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_expr(pg_node_tree, oid) is 'deparse an encoded expression';

create function pg_catalog.pg_get_expr(pg_node_tree, oid, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_expr(pg_node_tree, oid, boolean) is 'deparse an encoded expression with pretty-print option';

create function pg_catalog.pg_get_function_arg_default(oid, integer) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_function_arg_default(oid, integer) is 'function argument default';

create function pg_catalog.pg_get_function_arguments(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_function_arguments(oid) is 'argument list of a function';

create function pg_catalog.pg_get_function_identity_arguments(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_function_identity_arguments(oid) is 'identity argument list of a function';

create function pg_catalog.pg_get_function_result(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_function_result(oid) is 'result type of a function';

create function pg_catalog.pg_get_functiondef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_functiondef(oid) is 'definition of a function';

create function pg_catalog.pg_get_indexdef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_indexdef(oid) is 'index description';

create function pg_catalog.pg_get_indexdef(oid, integer, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_indexdef(oid, integer, boolean) is 'index description (full create statement or single expression) with pretty-print option';

create function pg_catalog.pg_get_keywords(out catcode "char", out catdesc text, out word text) returns setof record
	stable
	strict
	cost 10
	rows 400
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_keywords(out "char", out text, out text) is 'list of SQL keywords';

create function pg_catalog.pg_get_multixact_members(out mode text, multixid xid, out xid xid) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_multixact_members(out text, xid, out xid) is 'view members of a multixactid';

create function pg_catalog.pg_get_object_address(out classid oid, object_args text[], object_names text[], out objid oid, out objsubid integer, type text) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_object_address(out oid, text[], text[], out oid, out integer, text) is 'get OID-based object address from name/args arrays';

create function pg_catalog.pg_get_partition_constraintdef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_partition_constraintdef(oid) is 'partition constraint description';

create function pg_catalog.pg_get_partkeydef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_partkeydef(oid) is 'partition key description';

create function pg_catalog.pg_get_publication_tables(pubname text, out relid oid) returns setof oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_publication_tables(text, out oid) is 'get OIDs of tables in a publication';

create function pg_catalog.pg_get_replica_identity_index(regclass) returns regclass
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_replica_identity_index(regclass) is 'oid of replica identity index if any';

create function pg_catalog.pg_get_replication_slots(out active boolean, out active_pid integer, out catalog_xmin xid, out confirmed_flush_lsn pg_lsn, out datoid oid, out plugin name, out restart_lsn pg_lsn, out slot_name name, out slot_type text, out temporary boolean, out xmin xid) returns setof record
	stable
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_replication_slots(out boolean, out integer, out xid, out pg_lsn, out oid, out name, out pg_lsn, out name, out text, out boolean, out xid) is 'information about replication slots currently in use';

create function pg_catalog.pg_get_ruledef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_ruledef(oid) is 'source text of a rule';

create function pg_catalog.pg_get_ruledef(oid, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_ruledef(oid, boolean) is 'source text of a rule with pretty-print option';

create function pg_catalog.pg_get_serial_sequence(text, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_serial_sequence(text, text) is 'name of sequence for a serial column';

create function pg_catalog.pg_get_statisticsobjdef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_statisticsobjdef(oid) is 'extended statistics object description';

create function pg_catalog.pg_get_triggerdef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_triggerdef(oid) is 'trigger description';

create function pg_catalog.pg_get_triggerdef(oid, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_triggerdef(oid, boolean) is 'trigger description with pretty-print option';

create function pg_catalog.pg_get_userbyid(oid) returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_userbyid(oid) is 'role name by OID (with fallback)';

create function pg_catalog.pg_get_viewdef(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_viewdef(oid) is 'select statement of a view';

create function pg_catalog.pg_get_viewdef(oid, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_viewdef(oid, boolean) is 'select statement of a view with pretty-print option';

create function pg_catalog.pg_get_viewdef(oid, integer) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_viewdef(oid, integer) is 'select statement of a view with pretty-printing and specified line wrapping';

create function pg_catalog.pg_get_viewdef(text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_viewdef(text) is 'select statement of a view';

create function pg_catalog.pg_get_viewdef(text, boolean) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_get_viewdef(text, boolean) is 'select statement of a view with pretty-print option';

create function pg_catalog.pg_has_role(name, name, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_has_role(name, name, text) is 'user privilege on role by username, role name';

create function pg_catalog.pg_has_role(name, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_has_role(name, oid, text) is 'user privilege on role by username, role oid';

create function pg_catalog.pg_has_role(name, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_has_role(name, text) is 'current user privilege on role by role name';

create function pg_catalog.pg_has_role(oid, name, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_has_role(oid, name, text) is 'user privilege on role by user oid, role name';

create function pg_catalog.pg_has_role(oid, oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_has_role(oid, oid, text) is 'user privilege on role by user oid, role oid';

create function pg_catalog.pg_has_role(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_has_role(oid, text) is 'current user privilege on role by role oid';

create function pg_catalog.pg_hba_file_rules(out address text, out auth_method text, out database text[], out error text, out line_number integer, out netmask text, out options text[], out type text, out user_name text[]) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_hba_file_rules(out text, out text, out text[], out text, out integer, out text, out text[], out text, out text[]) is 'show pg_hba.conf rules';

create function pg_catalog.pg_identify_object(classid oid, out identity text, out name text, objid oid, objsubid integer, out schema text, out type text) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_identify_object(oid, out text, out text, oid, integer, out text, out text) is 'get machine-parseable identification of SQL object';

create function pg_catalog.pg_identify_object_as_address(classid oid, out object_args text[], out object_names text[], objid oid, objsubid integer, out type text) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_identify_object_as_address(oid, out text[], out text[], oid, integer, out text) is 'get identification of SQL object for pg_get_object_address()';

create function pg_catalog.pg_import_system_collations(regnamespace) returns integer
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_import_system_collations(regnamespace) is 'import collations from operating system';

create function pg_catalog.pg_index_column_has_property(regclass, integer, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_index_column_has_property(regclass, integer, text) is 'test property of an index column';

create function pg_catalog.pg_index_has_property(regclass, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_index_has_property(regclass, text) is 'test property of an index';

create function pg_catalog.pg_indexam_has_property(oid, text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_indexam_has_property(oid, text) is 'test property of an index access method';

create function pg_catalog.pg_indexam_progress_phasename(oid, bigint) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_indexam_progress_phasename(oid, bigint) is 'return name of given index build phase';

create function pg_catalog.pg_indexes_size(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_indexes_size(regclass) is 'disk space usage for all indexes attached to the specified table';

create function pg_catalog.pg_is_in_backup() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_is_in_backup() is 'true if server is in online backup';

create function pg_catalog.pg_is_in_recovery() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_is_in_recovery() is 'true if server is in recovery';

create function pg_catalog.pg_is_other_temp_schema(oid) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_is_other_temp_schema(oid) is 'is schema another session''s temp schema?';

create function pg_catalog.pg_is_wal_replay_paused() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_is_wal_replay_paused() is 'true if wal replay is paused';

create function pg_catalog.pg_isolation_test_session_is_blocked(integer, integer[]) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_isolation_test_session_is_blocked(integer, integer[]) is 'isolationtester support function';

create function pg_catalog.pg_jit_available() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_jit_available() is 'Is JIT compilation available in this session?';

create function pg_catalog.pg_last_committed_xact(out timestamp timestamp with time zone, out xid xid) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_last_committed_xact(out timestamp with time zone, out xid) is 'get transaction Id and commit timestamp of latest transaction commit';

create function pg_catalog.pg_last_wal_receive_lsn() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_last_wal_receive_lsn() is 'current wal flush location';

create function pg_catalog.pg_last_wal_replay_lsn() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_last_wal_replay_lsn() is 'last wal replay location';

create function pg_catalog.pg_last_xact_replay_timestamp() returns timestamp with time zone
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_last_xact_replay_timestamp() is 'timestamp of last replay xact';

create function pg_catalog.pg_listening_channels() returns setof text
	stable
	strict
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_listening_channels() is 'get the channels that the current backend listens to';

create function pg_catalog.pg_lock_status(out classid oid, out database oid, out fastpath boolean, out granted boolean, out locktype text, out mode text, out objid oid, out objsubid smallint, out page integer, out pid integer, out relation oid, out transactionid xid, out tuple smallint, out virtualtransaction text, out virtualxid text) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lock_status(out oid, out oid, out boolean, out boolean, out text, out text, out oid, out smallint, out integer, out integer, out oid, out xid, out smallint, out text, out text) is 'view system lock information';

create function pg_catalog.pg_logical_emit_message(boolean, text, bytea) returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_logical_emit_message(boolean, text, bytea) is 'emit a binary logical decoding message';

create function pg_catalog.pg_logical_emit_message(boolean, text, text) returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_logical_emit_message(boolean, text, text) is 'emit a textual logical decoding message';

create function pg_catalog.pg_logical_slot_get_binary_changes(out data bytea, out lsn pg_lsn, options text[] default '{}'::text[], slot_name name, upto_lsn pg_lsn, upto_nchanges integer, out xid xid) returns setof record
	cost 1000
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_logical_slot_get_binary_changes(out bytea, out pg_lsn, text[], name, pg_lsn, integer, out xid) is 'get binary changes from replication slot';

create function pg_catalog.pg_logical_slot_get_changes(out data text, out lsn pg_lsn, options text[] default '{}'::text[], slot_name name, upto_lsn pg_lsn, upto_nchanges integer, out xid xid) returns setof record
	cost 1000
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_logical_slot_get_changes(out text, out pg_lsn, text[], name, pg_lsn, integer, out xid) is 'get changes from replication slot';

create function pg_catalog.pg_logical_slot_peek_binary_changes(out data bytea, out lsn pg_lsn, options text[] default '{}'::text[], slot_name name, upto_lsn pg_lsn, upto_nchanges integer, out xid xid) returns setof record
	cost 1000
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_logical_slot_peek_binary_changes(out bytea, out pg_lsn, text[], name, pg_lsn, integer, out xid) is 'peek at binary changes from replication slot';

create function pg_catalog.pg_logical_slot_peek_changes(out data text, out lsn pg_lsn, options text[] default '{}'::text[], slot_name name, upto_lsn pg_lsn, upto_nchanges integer, out xid xid) returns setof record
	cost 1000
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_logical_slot_peek_changes(out text, out pg_lsn, text[], name, pg_lsn, integer, out xid) is 'peek at changes from replication slot';

create function pg_catalog.pg_ls_archive_statusdir(out modification timestamp with time zone, out name text, out size bigint) returns setof record
	strict
	cost 10
	rows 20
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_archive_statusdir(out timestamp with time zone, out text, out bigint) is 'list of files in the archive_status directory';

create function pg_catalog.pg_ls_dir(text) returns setof text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_dir(text) is 'list all files in a directory';

create function pg_catalog.pg_ls_dir(text, boolean, boolean) returns setof text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_dir(text, boolean, boolean) is 'list all files in a directory';

create function pg_catalog.pg_ls_logdir(out modification timestamp with time zone, out name text, out size bigint) returns setof record
	strict
	cost 10
	rows 20
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_logdir(out timestamp with time zone, out text, out bigint) is 'list files in the log directory';

create function pg_catalog.pg_ls_tmpdir(out modification timestamp with time zone, out name text, out size bigint) returns setof record
	strict
	cost 10
	rows 20
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_tmpdir(out timestamp with time zone, out text, out bigint) is 'list files in the pgsql_tmp directory';

create function pg_catalog.pg_ls_tmpdir(out modification timestamp with time zone, out name text, out size bigint, tablespace oid) returns setof record
	strict
	cost 10
	rows 20
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_tmpdir(out timestamp with time zone, out text, out bigint, oid) is 'list files in the pgsql_tmp directory';

create function pg_catalog.pg_ls_waldir(out modification timestamp with time zone, out name text, out size bigint) returns setof record
	strict
	cost 10
	rows 20
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ls_waldir(out timestamp with time zone, out text, out bigint) is 'list of files in the WAL directory';

create function pg_catalog.pg_lsn_cmp(pg_lsn, pg_lsn) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_cmp(pg_lsn, pg_lsn) is 'less-equal-greater';

create function pg_catalog.pg_lsn_eq(pg_lsn, pg_lsn) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_eq(pg_lsn, pg_lsn) is 'implementation of = operator';

create function pg_catalog.pg_lsn_ge(pg_lsn, pg_lsn) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_ge(pg_lsn, pg_lsn) is 'implementation of >= operator';

create function pg_catalog.pg_lsn_gt(pg_lsn, pg_lsn) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_gt(pg_lsn, pg_lsn) is 'implementation of > operator';

create function pg_catalog.pg_lsn_hash(pg_lsn) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_hash(pg_lsn) is 'hash';

create function pg_catalog.pg_lsn_hash_extended(pg_lsn, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_hash_extended(pg_lsn, bigint) is 'hash';

create function pg_catalog.pg_lsn_in(cstring) returns pg_lsn
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_in(cstring) is 'I/O';

create function pg_catalog.pg_lsn_le(pg_lsn, pg_lsn) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_le(pg_lsn, pg_lsn) is 'implementation of <= operator';

create function pg_catalog.pg_lsn_lt(pg_lsn, pg_lsn) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_lt(pg_lsn, pg_lsn) is 'implementation of < operator';

create function pg_catalog.pg_lsn_mi(pg_lsn, pg_lsn) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_mi(pg_lsn, pg_lsn) is 'implementation of - operator';

create function pg_catalog.pg_lsn_ne(pg_lsn, pg_lsn) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_ne(pg_lsn, pg_lsn) is 'implementation of <> operator';

create function pg_catalog.pg_lsn_out(pg_lsn) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_out(pg_lsn) is 'I/O';

create function pg_catalog.pg_lsn_recv(internal) returns pg_lsn
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_recv(internal) is 'I/O';

create function pg_catalog.pg_lsn_send(pg_lsn) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_lsn_send(pg_lsn) is 'I/O';

create function pg_catalog.pg_mcv_list_in(cstring) returns pg_mcv_list
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_mcv_list_in(cstring) is 'I/O';

create function pg_catalog.pg_mcv_list_items(out base_frequency double precision, out frequency double precision, out index integer, mcv_list pg_mcv_list, out nulls boolean[], out values text[]) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_mcv_list_items(out double precision, out double precision, out integer, pg_mcv_list, out boolean[], out text[]) is 'details about MCV list items';

create function pg_catalog.pg_mcv_list_out(pg_mcv_list) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_mcv_list_out(pg_mcv_list) is 'I/O';

create function pg_catalog.pg_mcv_list_recv(internal) returns pg_mcv_list
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_mcv_list_recv(internal) is 'I/O';

create function pg_catalog.pg_mcv_list_send(pg_mcv_list) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_mcv_list_send(pg_mcv_list) is 'I/O';

create function pg_catalog.pg_my_temp_schema() returns oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_my_temp_schema() is 'get OID of current session''s temp schema, if any';

create function pg_catalog.pg_ndistinct_in(cstring) returns pg_ndistinct
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ndistinct_in(cstring) is 'I/O';

create function pg_catalog.pg_ndistinct_out(pg_ndistinct) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ndistinct_out(pg_ndistinct) is 'I/O';

create function pg_catalog.pg_ndistinct_recv(internal) returns pg_ndistinct
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ndistinct_recv(internal) is 'I/O';

create function pg_catalog.pg_ndistinct_send(pg_ndistinct) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ndistinct_send(pg_ndistinct) is 'I/O';

create function pg_catalog.pg_nextoid(regclass, name, regclass) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_nextoid(regclass, name, regclass) is 'return the next oid for a system table';

create function pg_catalog.pg_node_tree_in(cstring) returns pg_node_tree
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_node_tree_in(cstring) is 'I/O';

create function pg_catalog.pg_node_tree_out(pg_node_tree) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_node_tree_out(pg_node_tree) is 'I/O';

create function pg_catalog.pg_node_tree_recv(internal) returns pg_node_tree
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_node_tree_recv(internal) is 'I/O';

create function pg_catalog.pg_node_tree_send(pg_node_tree) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_node_tree_send(pg_node_tree) is 'I/O';

create function pg_catalog.pg_notification_queue_usage() returns double precision
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_notification_queue_usage() is 'get the fraction of the asynchronous notification queue currently in use';

create function pg_catalog.pg_notify(text, text) returns void
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_notify(text, text) is 'send a notification event';

create function pg_catalog.pg_opclass_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_opclass_is_visible(oid) is 'is opclass visible in search path?';

create function pg_catalog.pg_operator_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_operator_is_visible(oid) is 'is operator visible in search path?';

create function pg_catalog.pg_opfamily_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_opfamily_is_visible(oid) is 'is opfamily visible in search path?';

create function pg_catalog.pg_options_to_table(out option_name text, out option_value text, options_array text[]) returns setof record
	stable
	strict
	cost 1
	rows 3
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_options_to_table(out text, out text, text[]) is 'convert generic options array to name/value table';

create function pg_catalog.pg_partition_ancestors(partitionid regclass, out relid regclass) returns setof regclass
	strict
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_partition_ancestors(regclass, out regclass) is 'view ancestors of the partition';

create function pg_catalog.pg_partition_root(regclass) returns regclass
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_partition_root(regclass) is 'get top-most partition root parent';

create function pg_catalog.pg_partition_tree(out isleaf boolean, out level integer, out parentrelid regclass, out relid regclass, rootrelid regclass) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_partition_tree(out boolean, out integer, out regclass, out regclass, regclass) is 'view partition tree tables';

create function pg_catalog.pg_postmaster_start_time() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_postmaster_start_time() is 'postmaster start time';

create function pg_catalog.pg_prepared_statement(out from_sql boolean, out name text, out parameter_types regtype[], out prepare_time timestamp with time zone, out statement text) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_prepared_statement(out boolean, out text, out regtype[], out timestamp with time zone, out text) is 'get the prepared statements for this session';

create function pg_catalog.pg_prepared_xact(out dbid oid, out gid text, out ownerid oid, out prepared timestamp with time zone, out transaction xid) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_prepared_xact(out oid, out text, out oid, out timestamp with time zone, out xid) is 'view two-phase transactions';

create function pg_catalog.pg_promote(wait boolean default true, wait_seconds integer default 60) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_promote(boolean, integer) is 'promote standby server';

create function pg_catalog.pg_read_binary_file(text) returns bytea
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_binary_file(text) is 'read bytea from a file';

create function pg_catalog.pg_read_binary_file(text, bigint, bigint) returns bytea
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_binary_file(text, bigint, bigint) is 'read bytea from a file';

create function pg_catalog.pg_read_binary_file(text, bigint, bigint, boolean) returns bytea
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_binary_file(text, bigint, bigint, boolean) is 'read bytea from a file';

create function pg_catalog.pg_read_file(text) returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_file(text) is 'read text from a file';

create function pg_catalog.pg_read_file(text, bigint, bigint) returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_file(text, bigint, bigint) is 'read text from a file';

create function pg_catalog.pg_read_file(text, bigint, bigint, boolean) returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_file(text, bigint, bigint, boolean) is 'read text from a file';

create function pg_catalog.pg_read_file_old(text, bigint, bigint) returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_read_file_old(text, bigint, bigint) is 'read text from a file - old version for adminpack 1.0';

create function pg_catalog.pg_relation_filenode(regclass) returns oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_relation_filenode(regclass) is 'filenode identifier of relation';

create function pg_catalog.pg_relation_filepath(regclass) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_relation_filepath(regclass) is 'file path of relation';

create function pg_catalog.pg_relation_is_publishable(regclass) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_relation_is_publishable(regclass) is 'returns whether a relation can be part of a publication';

create function pg_catalog.pg_relation_is_updatable(regclass, boolean) returns integer
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_relation_is_updatable(regclass, boolean) is 'is a relation insertable/updatable/deletable';

create function pg_catalog.pg_relation_size(regclass) returns bigint
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_relation_size(regclass) is 'disk space usage for the main fork of the specified table or index';

create function pg_catalog.pg_relation_size(regclass, text) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_relation_size(regclass, text) is 'disk space usage for the specified fork of a table or index';

create function pg_catalog.pg_reload_conf() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_reload_conf() is 'reload configuration files';

create function pg_catalog.pg_replication_origin_advance(text, pg_lsn) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_advance(text, pg_lsn) is 'advance replication origin to specific location';

create function pg_catalog.pg_replication_origin_create(text) returns oid
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_create(text) is 'create a replication origin';

create function pg_catalog.pg_replication_origin_drop(text) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_drop(text) is 'drop replication origin identified by its name';

create function pg_catalog.pg_replication_origin_oid(text) returns oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_oid(text) is 'translate the replication origin''s name to its id';

create function pg_catalog.pg_replication_origin_progress(text, boolean) returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_progress(text, boolean) is 'get an individual replication origin''s replication progress';

create function pg_catalog.pg_replication_origin_session_is_setup() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_session_is_setup() is 'is a replication origin configured in this session';

create function pg_catalog.pg_replication_origin_session_progress(boolean) returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_session_progress(boolean) is 'get the replication progress of the current session';

create function pg_catalog.pg_replication_origin_session_reset() returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_session_reset() is 'teardown configured replication progress tracking';

create function pg_catalog.pg_replication_origin_session_setup(text) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_session_setup(text) is 'configure session to maintain replication progress tracking for the passed in origin';

create function pg_catalog.pg_replication_origin_xact_reset() returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_xact_reset() is 'reset the transaction''s origin lsn and timestamp';

create function pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) is 'setup the transaction''s origin lsn and timestamp';

create function pg_catalog.pg_replication_slot_advance(out end_lsn pg_lsn, slot_name name, out slot_name name, upto_lsn pg_lsn) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_replication_slot_advance(out pg_lsn, name, out name, pg_lsn) is 'advance logical replication slot';

create function pg_catalog.pg_rotate_logfile() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_rotate_logfile() is 'rotate log file';

create function pg_catalog.pg_rotate_logfile_old() returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_rotate_logfile_old() is 'rotate log file - old version for adminpack 1.0';

create function pg_catalog.pg_safe_snapshot_blocking_pids(integer) returns integer[]
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_safe_snapshot_blocking_pids(integer) is 'get array of PIDs of sessions blocking specified backend PID from acquiring a safe snapshot';

create function pg_catalog.pg_sequence_last_value(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_sequence_last_value(regclass) is 'sequence last value';

create function pg_catalog.pg_sequence_parameters(out cache_size bigint, out cycle_option boolean, out data_type oid, out increment bigint, out maximum_value bigint, out minimum_value bigint, sequence_oid oid, out start_value bigint) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_sequence_parameters(out bigint, out boolean, out oid, out bigint, out bigint, out bigint, oid, out bigint) is 'sequence parameters, for use by information schema';

create function pg_catalog.pg_show_all_file_settings(out applied boolean, out error text, out name text, out seqno integer, out setting text, out sourcefile text, out sourceline integer) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_show_all_file_settings(out boolean, out text, out text, out integer, out text, out text, out integer) is 'show config file settings';

create function pg_catalog.pg_show_all_settings(out boot_val text, out category text, out context text, out enumvals text[], out extra_desc text, out max_val text, out min_val text, out name text, out pending_restart boolean, out reset_val text, out setting text, out short_desc text, out source text, out sourcefile text, out sourceline integer, out unit text, out vartype text) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_show_all_settings(out text, out text, out text, out text[], out text, out text, out text, out text, out boolean, out text, out text, out text, out text, out text, out integer, out text, out text) is 'SHOW ALL as a function';

create function pg_catalog.pg_show_replication_origin_status(out external_id text, out local_id oid, out local_lsn pg_lsn, out remote_lsn pg_lsn) returns setof record
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_show_replication_origin_status(out text, out oid, out pg_lsn, out pg_lsn) is 'get progress for all replication origins';

create function pg_catalog.pg_size_bytes(text) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_size_bytes(text) is 'convert a size in human-readable format with size units into bytes';

create function pg_catalog.pg_size_pretty(bigint) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_size_pretty(bigint) is 'convert a long int to a human readable text using size units';

create function pg_catalog.pg_size_pretty(numeric) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_size_pretty(numeric) is 'convert a numeric to a human readable text using size units';

create function pg_catalog.pg_sleep(double precision) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_sleep(double precision) is 'sleep for the specified time in seconds';

create function pg_catalog.pg_sleep_for(interval) returns void
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_sleep_for(interval) is 'sleep for the specified interval';

create function pg_catalog.pg_sleep_until(timestamp with time zone) returns void
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_sleep_until(timestamp with time zone) is 'sleep until the specified time';

create function pg_catalog.pg_start_backup(exclusive boolean default true, fast boolean default false, label text) returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_start_backup(boolean, boolean, text) is 'prepare for taking an online backup';

create function pg_catalog.pg_stat_clear_snapshot() returns void
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_clear_snapshot() is 'statistics: discard current transaction''s statistics snapshot';

create function pg_catalog.pg_stat_file(out access timestamp with time zone, out change timestamp with time zone, out creation timestamp with time zone, filename text, out isdir boolean, out modification timestamp with time zone, out size bigint) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_file(out timestamp with time zone, out timestamp with time zone, out timestamp with time zone, text, out boolean, out timestamp with time zone, out bigint) is 'get information about file';

create function pg_catalog.pg_stat_file(out access timestamp with time zone, out change timestamp with time zone, out creation timestamp with time zone, filename text, out isdir boolean, missing_ok boolean, out modification timestamp with time zone, out size bigint) returns record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_file(out timestamp with time zone, out timestamp with time zone, out timestamp with time zone, text, out boolean, boolean, out timestamp with time zone, out bigint) is 'get information about file';

create function pg_catalog.pg_stat_get_activity(out application_name text, out backend_start timestamp with time zone, out backend_type text, out backend_xid xid, out backend_xmin xid, out client_addr inet, out client_hostname text, out client_port integer, out datid oid, out gss_auth boolean, out gss_enc boolean, out gss_princ text, pid integer, out pid integer, out query text, out query_start timestamp with time zone, out ssl boolean, out ssl_client_dn text, out ssl_client_serial numeric, out ssl_issuer_dn text, out sslbits integer, out sslcipher text, out sslcompression boolean, out sslversion text, out state text, out state_change timestamp with time zone, out usesysid oid, out wait_event text, out wait_event_type text, out xact_start timestamp with time zone) returns setof record
	stable
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_activity(out text, out timestamp with time zone, out text, out xid, out xid, out inet, out text, out integer, out oid, out boolean, out boolean, out text, integer, out integer, out text, out timestamp with time zone, out boolean, out text, out numeric, out text, out integer, out text, out boolean, out text, out text, out timestamp with time zone, out oid, out text, out text, out timestamp with time zone) is 'statistics: information about currently active backends';

create function pg_catalog.pg_stat_get_analyze_count(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_analyze_count(oid) is 'statistics: number of manual analyzes for a table';

create function pg_catalog.pg_stat_get_archiver(out archived_count bigint, out failed_count bigint, out last_archived_time timestamp with time zone, out last_archived_wal text, out last_failed_time timestamp with time zone, out last_failed_wal text, out stats_reset timestamp with time zone) returns record
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_archiver(out bigint, out bigint, out timestamp with time zone, out text, out timestamp with time zone, out text, out timestamp with time zone) is 'statistics: information about WAL archiver';

create function pg_catalog.pg_stat_get_autoanalyze_count(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_autoanalyze_count(oid) is 'statistics: number of auto analyzes for a table';

create function pg_catalog.pg_stat_get_autovacuum_count(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_autovacuum_count(oid) is 'statistics: number of auto vacuums for a table';

create function pg_catalog.pg_stat_get_backend_activity(integer) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_activity(integer) is 'statistics: current query of backend';

create function pg_catalog.pg_stat_get_backend_activity_start(integer) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_activity_start(integer) is 'statistics: start time for current query of backend';

create function pg_catalog.pg_stat_get_backend_client_addr(integer) returns inet
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_client_addr(integer) is 'statistics: address of client connected to backend';

create function pg_catalog.pg_stat_get_backend_client_port(integer) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_client_port(integer) is 'statistics: port number of client connected to backend';

create function pg_catalog.pg_stat_get_backend_dbid(integer) returns oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_dbid(integer) is 'statistics: database ID of backend';

create function pg_catalog.pg_stat_get_backend_idset() returns setof integer
	stable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_idset() is 'statistics: currently active backend IDs';

create function pg_catalog.pg_stat_get_backend_pid(integer) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_pid(integer) is 'statistics: PID of backend';

create function pg_catalog.pg_stat_get_backend_start(integer) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_start(integer) is 'statistics: start time for current backend session';

create function pg_catalog.pg_stat_get_backend_userid(integer) returns oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_userid(integer) is 'statistics: user ID of backend';

create function pg_catalog.pg_stat_get_backend_wait_event(integer) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_wait_event(integer) is 'statistics: wait event on which backend is currently waiting';

create function pg_catalog.pg_stat_get_backend_wait_event_type(integer) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_wait_event_type(integer) is 'statistics: wait event type on which backend is currently waiting';

create function pg_catalog.pg_stat_get_backend_xact_start(integer) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_backend_xact_start(integer) is 'statistics: start time for backend''s current transaction';

create function pg_catalog.pg_stat_get_bgwriter_buf_written_checkpoints() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_bgwriter_buf_written_checkpoints() is 'statistics: number of buffers written by the bgwriter during checkpoints';

create function pg_catalog.pg_stat_get_bgwriter_buf_written_clean() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_bgwriter_buf_written_clean() is 'statistics: number of buffers written by the bgwriter for cleaning dirty buffers';

create function pg_catalog.pg_stat_get_bgwriter_maxwritten_clean() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_bgwriter_maxwritten_clean() is 'statistics: number of times the bgwriter stopped processing when it had written too many buffers while cleaning';

create function pg_catalog.pg_stat_get_bgwriter_requested_checkpoints() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_bgwriter_requested_checkpoints() is 'statistics: number of backend requested checkpoints started by the bgwriter';

create function pg_catalog.pg_stat_get_bgwriter_stat_reset_time() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_bgwriter_stat_reset_time() is 'statistics: last reset for the bgwriter';

create function pg_catalog.pg_stat_get_bgwriter_timed_checkpoints() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_bgwriter_timed_checkpoints() is 'statistics: number of timed checkpoints started by the bgwriter';

create function pg_catalog.pg_stat_get_blocks_fetched(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_blocks_fetched(oid) is 'statistics: number of blocks fetched';

create function pg_catalog.pg_stat_get_blocks_hit(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_blocks_hit(oid) is 'statistics: number of blocks found in cache';

create function pg_catalog.pg_stat_get_buf_alloc() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_buf_alloc() is 'statistics: number of buffer allocations';

create function pg_catalog.pg_stat_get_buf_fsync_backend() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_buf_fsync_backend() is 'statistics: number of backend buffer writes that did their own fsync';

create function pg_catalog.pg_stat_get_buf_written_backend() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_buf_written_backend() is 'statistics: number of buffers written by backends';

create function pg_catalog.pg_stat_get_checkpoint_sync_time() returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_checkpoint_sync_time() is 'statistics: checkpoint time spent synchronizing buffers to disk, in milliseconds';

create function pg_catalog.pg_stat_get_checkpoint_write_time() returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_checkpoint_write_time() is 'statistics: checkpoint time spent writing buffers to disk, in milliseconds';

create function pg_catalog.pg_stat_get_db_blk_read_time(oid) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_blk_read_time(oid) is 'statistics: block read time, in milliseconds';

create function pg_catalog.pg_stat_get_db_blk_write_time(oid) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_blk_write_time(oid) is 'statistics: block write time, in milliseconds';

create function pg_catalog.pg_stat_get_db_blocks_fetched(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_blocks_fetched(oid) is 'statistics: blocks fetched for database';

create function pg_catalog.pg_stat_get_db_blocks_hit(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_blocks_hit(oid) is 'statistics: blocks found in cache for database';

create function pg_catalog.pg_stat_get_db_checksum_failures(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_checksum_failures(oid) is 'statistics: checksum failures detected in database';

create function pg_catalog.pg_stat_get_db_checksum_last_failure(oid) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_checksum_last_failure(oid) is 'statistics: when last checksum failure was detected in database';

create function pg_catalog.pg_stat_get_db_conflict_all(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_conflict_all(oid) is 'statistics: recovery conflicts in database';

create function pg_catalog.pg_stat_get_db_conflict_bufferpin(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_conflict_bufferpin(oid) is 'statistics: recovery conflicts in database caused by shared buffer pin';

create function pg_catalog.pg_stat_get_db_conflict_lock(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_conflict_lock(oid) is 'statistics: recovery conflicts in database caused by relation lock';

create function pg_catalog.pg_stat_get_db_conflict_snapshot(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_conflict_snapshot(oid) is 'statistics: recovery conflicts in database caused by snapshot expiry';

create function pg_catalog.pg_stat_get_db_conflict_startup_deadlock(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_conflict_startup_deadlock(oid) is 'statistics: recovery conflicts in database caused by buffer deadlock';

create function pg_catalog.pg_stat_get_db_conflict_tablespace(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_conflict_tablespace(oid) is 'statistics: recovery conflicts in database caused by drop tablespace';

create function pg_catalog.pg_stat_get_db_deadlocks(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_deadlocks(oid) is 'statistics: deadlocks detected in database';

create function pg_catalog.pg_stat_get_db_numbackends(oid) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_numbackends(oid) is 'statistics: number of backends in database';

create function pg_catalog.pg_stat_get_db_stat_reset_time(oid) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_stat_reset_time(oid) is 'statistics: last reset for a database';

create function pg_catalog.pg_stat_get_db_temp_bytes(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_temp_bytes(oid) is 'statistics: number of bytes in temporary files written';

create function pg_catalog.pg_stat_get_db_temp_files(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_temp_files(oid) is 'statistics: number of temporary files written';

create function pg_catalog.pg_stat_get_db_tuples_deleted(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_tuples_deleted(oid) is 'statistics: tuples deleted in database';

create function pg_catalog.pg_stat_get_db_tuples_fetched(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_tuples_fetched(oid) is 'statistics: tuples fetched for database';

create function pg_catalog.pg_stat_get_db_tuples_inserted(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_tuples_inserted(oid) is 'statistics: tuples inserted in database';

create function pg_catalog.pg_stat_get_db_tuples_returned(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_tuples_returned(oid) is 'statistics: tuples returned for database';

create function pg_catalog.pg_stat_get_db_tuples_updated(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_tuples_updated(oid) is 'statistics: tuples updated in database';

create function pg_catalog.pg_stat_get_db_xact_commit(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_xact_commit(oid) is 'statistics: transactions committed';

create function pg_catalog.pg_stat_get_db_xact_rollback(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_db_xact_rollback(oid) is 'statistics: transactions rolled back';

create function pg_catalog.pg_stat_get_dead_tuples(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_dead_tuples(oid) is 'statistics: number of dead tuples';

create function pg_catalog.pg_stat_get_function_calls(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_function_calls(oid) is 'statistics: number of function calls';

create function pg_catalog.pg_stat_get_function_self_time(oid) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_function_self_time(oid) is 'statistics: self execution time of function, in milliseconds';

create function pg_catalog.pg_stat_get_function_total_time(oid) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_function_total_time(oid) is 'statistics: total execution time of function, in milliseconds';

create function pg_catalog.pg_stat_get_last_analyze_time(oid) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_last_analyze_time(oid) is 'statistics: last manual analyze time for a table';

create function pg_catalog.pg_stat_get_last_autoanalyze_time(oid) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_last_autoanalyze_time(oid) is 'statistics: last auto analyze time for a table';

create function pg_catalog.pg_stat_get_last_autovacuum_time(oid) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_last_autovacuum_time(oid) is 'statistics: last auto vacuum time for a table';

create function pg_catalog.pg_stat_get_last_vacuum_time(oid) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_last_vacuum_time(oid) is 'statistics: last manual vacuum time for a table';

create function pg_catalog.pg_stat_get_live_tuples(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_live_tuples(oid) is 'statistics: number of live tuples';

create function pg_catalog.pg_stat_get_mod_since_analyze(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_mod_since_analyze(oid) is 'statistics: number of tuples changed since last analyze';

create function pg_catalog.pg_stat_get_numscans(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_numscans(oid) is 'statistics: number of scans done for table/index';

create function pg_catalog.pg_stat_get_progress_info(cmdtype text, out datid oid, out param1 bigint, out param10 bigint, out param11 bigint, out param12 bigint, out param13 bigint, out param14 bigint, out param15 bigint, out param16 bigint, out param17 bigint, out param18 bigint, out param19 bigint, out param2 bigint, out param20 bigint, out param3 bigint, out param4 bigint, out param5 bigint, out param6 bigint, out param7 bigint, out param8 bigint, out param9 bigint, out pid integer, out relid oid) returns setof record
	stable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_progress_info(text, out oid, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out integer, out oid) is 'statistics: information about progress of backends running maintenance command';

create function pg_catalog.pg_stat_get_snapshot_timestamp() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_snapshot_timestamp() is 'statistics: timestamp of the current statistics snapshot';

create function pg_catalog.pg_stat_get_subscription(out last_msg_receipt_time timestamp with time zone, out last_msg_send_time timestamp with time zone, out latest_end_lsn pg_lsn, out latest_end_time timestamp with time zone, out pid integer, out received_lsn pg_lsn, out relid oid, subid oid, out subid oid) returns record
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_subscription(out timestamp with time zone, out timestamp with time zone, out pg_lsn, out timestamp with time zone, out integer, out pg_lsn, out oid, oid, out oid) is 'statistics: information about subscription';

create function pg_catalog.pg_stat_get_tuples_deleted(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_tuples_deleted(oid) is 'statistics: number of tuples deleted';

create function pg_catalog.pg_stat_get_tuples_fetched(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_tuples_fetched(oid) is 'statistics: number of tuples fetched by idxscan';

create function pg_catalog.pg_stat_get_tuples_hot_updated(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_tuples_hot_updated(oid) is 'statistics: number of tuples hot updated';

create function pg_catalog.pg_stat_get_tuples_inserted(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_tuples_inserted(oid) is 'statistics: number of tuples inserted';

create function pg_catalog.pg_stat_get_tuples_returned(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_tuples_returned(oid) is 'statistics: number of tuples read by seqscan';

create function pg_catalog.pg_stat_get_tuples_updated(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_tuples_updated(oid) is 'statistics: number of tuples updated';

create function pg_catalog.pg_stat_get_vacuum_count(oid) returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_vacuum_count(oid) is 'statistics: number of manual vacuums for a table';

create function pg_catalog.pg_stat_get_wal_receiver(out conninfo text, out last_msg_receipt_time timestamp with time zone, out last_msg_send_time timestamp with time zone, out latest_end_lsn pg_lsn, out latest_end_time timestamp with time zone, out pid integer, out receive_start_lsn pg_lsn, out receive_start_tli integer, out received_lsn pg_lsn, out received_tli integer, out sender_host text, out sender_port integer, out slot_name text, out status text) returns record
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_wal_receiver(out text, out timestamp with time zone, out timestamp with time zone, out pg_lsn, out timestamp with time zone, out integer, out pg_lsn, out integer, out pg_lsn, out integer, out text, out integer, out text, out text) is 'statistics: information about WAL receiver';

create function pg_catalog.pg_stat_get_wal_senders(out flush_lag interval, out flush_lsn pg_lsn, out pid integer, out replay_lag interval, out replay_lsn pg_lsn, out reply_time timestamp with time zone, out sent_lsn pg_lsn, out state text, out sync_priority integer, out sync_state text, out write_lag interval, out write_lsn pg_lsn) returns setof record
	stable
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_wal_senders(out interval, out pg_lsn, out integer, out interval, out pg_lsn, out timestamp with time zone, out pg_lsn, out text, out integer, out text, out interval, out pg_lsn) is 'statistics: information about currently active replication';

create function pg_catalog.pg_stat_get_xact_blocks_fetched(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_blocks_fetched(oid) is 'statistics: number of blocks fetched in current transaction';

create function pg_catalog.pg_stat_get_xact_blocks_hit(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_blocks_hit(oid) is 'statistics: number of blocks found in cache in current transaction';

create function pg_catalog.pg_stat_get_xact_function_calls(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_function_calls(oid) is 'statistics: number of function calls in current transaction';

create function pg_catalog.pg_stat_get_xact_function_self_time(oid) returns double precision
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_function_self_time(oid) is 'statistics: self execution time of function in current transaction, in milliseconds';

create function pg_catalog.pg_stat_get_xact_function_total_time(oid) returns double precision
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_function_total_time(oid) is 'statistics: total execution time of function in current transaction, in milliseconds';

create function pg_catalog.pg_stat_get_xact_numscans(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_numscans(oid) is 'statistics: number of scans done for table/index in current transaction';

create function pg_catalog.pg_stat_get_xact_tuples_deleted(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_tuples_deleted(oid) is 'statistics: number of tuples deleted in current transaction';

create function pg_catalog.pg_stat_get_xact_tuples_fetched(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_tuples_fetched(oid) is 'statistics: number of tuples fetched by idxscan in current transaction';

create function pg_catalog.pg_stat_get_xact_tuples_hot_updated(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_tuples_hot_updated(oid) is 'statistics: number of tuples hot updated in current transaction';

create function pg_catalog.pg_stat_get_xact_tuples_inserted(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_tuples_inserted(oid) is 'statistics: number of tuples inserted in current transaction';

create function pg_catalog.pg_stat_get_xact_tuples_returned(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_tuples_returned(oid) is 'statistics: number of tuples read by seqscan in current transaction';

create function pg_catalog.pg_stat_get_xact_tuples_updated(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_get_xact_tuples_updated(oid) is 'statistics: number of tuples updated in current transaction';

create function pg_catalog.pg_stat_reset() returns void
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_reset() is 'statistics: reset collected statistics for current database';

create function pg_catalog.pg_stat_reset_shared(text) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_reset_shared(text) is 'statistics: reset collected statistics shared across the cluster';

create function pg_catalog.pg_stat_reset_single_function_counters(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_reset_single_function_counters(oid) is 'statistics: reset collected statistics for a single function in the current database';

create function pg_catalog.pg_stat_reset_single_table_counters(oid) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stat_reset_single_table_counters(oid) is 'statistics: reset collected statistics for a single table or index in the current database';

create function pg_catalog.pg_statistics_obj_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_statistics_obj_is_visible(oid) is 'is statistics object visible in search path?';

create function pg_catalog.pg_stop_backup() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stop_backup() is 'finish taking an online backup';

create function pg_catalog.pg_stop_backup(exclusive boolean, out labelfile text, out lsn pg_lsn, out spcmapfile text, wait_for_archive boolean default true) returns setof record
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_stop_backup(boolean, out text, out pg_lsn, out text, boolean) is 'finish taking an online backup';

create function pg_catalog.pg_switch_wal() returns pg_lsn
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_switch_wal() is 'switch to new wal file';

create function pg_catalog.pg_table_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_table_is_visible(oid) is 'is table visible in search path?';

create function pg_catalog.pg_table_size(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_table_size(regclass) is 'disk space usage for the specified table, including TOAST, free space and visibility map';

create function pg_catalog.pg_tablespace_databases(oid) returns setof oid
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_tablespace_databases(oid) is 'get OIDs of databases in a tablespace';

create function pg_catalog.pg_tablespace_location(oid) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_tablespace_location(oid) is 'tablespace location';

create function pg_catalog.pg_tablespace_size(name) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_tablespace_size(name) is 'total disk space usage for the specified tablespace';

create function pg_catalog.pg_tablespace_size(oid) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_tablespace_size(oid) is 'total disk space usage for the specified tablespace';

create function pg_catalog.pg_terminate_backend(integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_terminate_backend(integer) is 'terminate a server process';

create function pg_catalog.pg_timezone_abbrevs(out abbrev text, out is_dst boolean, out utc_offset interval) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_timezone_abbrevs(out text, out boolean, out interval) is 'get the available time zone abbreviations';

create function pg_catalog.pg_timezone_names(out abbrev text, out is_dst boolean, out name text, out utc_offset interval) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_timezone_names(out text, out boolean, out text, out interval) is 'get the available time zone names';

create function pg_catalog.pg_total_relation_size(regclass) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_total_relation_size(regclass) is 'total disk space usage for the specified table and associated indexes';

create function pg_catalog.pg_trigger_depth() returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_trigger_depth() is 'current trigger depth';

create function pg_catalog.pg_try_advisory_lock(bigint) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_lock(bigint) is 'obtain exclusive advisory lock if available';

create function pg_catalog.pg_try_advisory_lock(integer, integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_lock(integer, integer) is 'obtain exclusive advisory lock if available';

create function pg_catalog.pg_try_advisory_lock_shared(bigint) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_lock_shared(bigint) is 'obtain shared advisory lock if available';

create function pg_catalog.pg_try_advisory_lock_shared(integer, integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_lock_shared(integer, integer) is 'obtain shared advisory lock if available';

create function pg_catalog.pg_try_advisory_xact_lock(bigint) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_xact_lock(bigint) is 'obtain exclusive advisory lock if available';

create function pg_catalog.pg_try_advisory_xact_lock(integer, integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_xact_lock(integer, integer) is 'obtain exclusive advisory lock if available';

create function pg_catalog.pg_try_advisory_xact_lock_shared(bigint) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_xact_lock_shared(bigint) is 'obtain shared advisory lock if available';

create function pg_catalog.pg_try_advisory_xact_lock_shared(integer, integer) returns boolean
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_try_advisory_xact_lock_shared(integer, integer) is 'obtain shared advisory lock if available';

create function pg_catalog.pg_ts_config_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ts_config_is_visible(oid) is 'is text search configuration visible in search path?';

create function pg_catalog.pg_ts_dict_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ts_dict_is_visible(oid) is 'is text search dictionary visible in search path?';

create function pg_catalog.pg_ts_parser_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ts_parser_is_visible(oid) is 'is text search parser visible in search path?';

create function pg_catalog.pg_ts_template_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_ts_template_is_visible(oid) is 'is text search template visible in search path?';

create function pg_catalog.pg_type_is_visible(oid) returns boolean
	stable
	strict
	cost 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_type_is_visible(oid) is 'is type visible in search path?';

create function pg_catalog.pg_typeof("any") returns regtype
	stable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_typeof("any") is 'type of the argument';

create function pg_catalog.pg_wal_lsn_diff(pg_lsn, pg_lsn) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_wal_lsn_diff(pg_lsn, pg_lsn) is 'difference in bytes, given two wal locations';

create function pg_catalog.pg_wal_replay_pause() returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_wal_replay_pause() is 'pause wal replay';

create function pg_catalog.pg_wal_replay_resume() returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_wal_replay_resume() is 'resume wal replay, if it was paused';

create function pg_catalog.pg_walfile_name(pg_lsn) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_walfile_name(pg_lsn) is 'wal filename, given a wal location';

create function pg_catalog.pg_walfile_name_offset(out file_name text, out file_offset integer, lsn pg_lsn) returns record
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_walfile_name_offset(out text, out integer, pg_lsn) is 'wal filename and byte offset, given a wal location';

create function pg_catalog.pg_xact_commit_timestamp(xid) returns timestamp with time zone
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pg_xact_commit_timestamp(xid) is 'get commit timestamp of a transaction';

create function pg_catalog.phraseto_tsquery(regconfig, text) returns tsquery
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.phraseto_tsquery(regconfig, text) is 'transform to tsquery';

create function pg_catalog.phraseto_tsquery(text) returns tsquery
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.phraseto_tsquery(text) is 'transform to tsquery';

create function pg_catalog.pi() returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pi() is 'PI';

create function pg_catalog.plainto_tsquery(regconfig, text) returns tsquery
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.plainto_tsquery(regconfig, text) is 'transform to tsquery';

create function pg_catalog.plainto_tsquery(text) returns tsquery
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.plainto_tsquery(text) is 'transform to tsquery';

create function pg_catalog.plpgsql_call_handler() returns language_handler
	language c
as $$
begin
-- missing source code
end;
$$;

create function pg_catalog.plpgsql_inline_handler(internal) returns void
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

create function pg_catalog.plpgsql_validator(oid) returns void
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

create function pg_catalog.point(box) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point(box) is 'center of';

create function pg_catalog.point(circle) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point(circle) is 'center of';

create function pg_catalog.point(double precision, double precision) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point(double precision, double precision) is 'convert x, y to point';

create function pg_catalog.point(lseg) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point(lseg) is 'center of';

create function pg_catalog.point(path) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point(path) is 'center of';

create function pg_catalog.point(polygon) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point(polygon) is 'center of';

create function pg_catalog.point_above(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_above(point, point) is 'implementation of >^ operator';

create function pg_catalog.point_add(point, point) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_add(point, point) is 'implementation of + operator';

create function pg_catalog.point_below(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_below(point, point) is 'implementation of <^ operator';

create function pg_catalog.point_distance(point, point) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_distance(point, point) is 'implementation of <-> operator';

create function pg_catalog.point_div(point, point) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_div(point, point) is 'implementation of / operator';

create function pg_catalog.point_eq(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_eq(point, point) is 'implementation of ~= operator';

create function pg_catalog.point_horiz(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_horiz(point, point) is 'implementation of ?- operator';

create function pg_catalog.point_in(cstring) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_in(cstring) is 'I/O';

create function pg_catalog.point_left(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_left(point, point) is 'implementation of << operator';

create function pg_catalog.point_mul(point, point) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_mul(point, point) is 'implementation of * operator';

create function pg_catalog.point_ne(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_ne(point, point) is 'implementation of <> operator';

create function pg_catalog.point_out(point) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_out(point) is 'I/O';

create function pg_catalog.point_recv(internal) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_recv(internal) is 'I/O';

create function pg_catalog.point_right(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_right(point, point) is 'implementation of >> operator';

create function pg_catalog.point_send(point) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_send(point) is 'I/O';

create function pg_catalog.point_sub(point, point) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_sub(point, point) is 'implementation of - operator';

create function pg_catalog.point_vert(point, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.point_vert(point, point) is 'implementation of ?| operator';

create function pg_catalog.poly_above(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_above(polygon, polygon) is 'implementation of |>> operator';

create function pg_catalog.poly_below(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_below(polygon, polygon) is 'implementation of <<| operator';

create function pg_catalog.poly_center(polygon) returns point
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_center(polygon) is 'implementation of @@ operator';

create function pg_catalog.poly_contain(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_contain(polygon, polygon) is 'implementation of @> operator';

create function pg_catalog.poly_contain_pt(polygon, point) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_contain_pt(polygon, point) is 'implementation of @> operator';

create function pg_catalog.poly_contained(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_contained(polygon, polygon) is 'implementation of <@ operator';

create function pg_catalog.poly_distance(polygon, polygon) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_distance(polygon, polygon) is 'implementation of <-> operator';

create function pg_catalog.poly_in(cstring) returns polygon
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_in(cstring) is 'I/O';

create function pg_catalog.poly_left(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_left(polygon, polygon) is 'implementation of << operator';

create function pg_catalog.poly_npoints(polygon) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_npoints(polygon) is 'implementation of # operator';

create function pg_catalog.poly_out(polygon) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_out(polygon) is 'I/O';

create function pg_catalog.poly_overabove(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_overabove(polygon, polygon) is 'implementation of |&> operator';

create function pg_catalog.poly_overbelow(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_overbelow(polygon, polygon) is 'implementation of &<| operator';

create function pg_catalog.poly_overlap(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_overlap(polygon, polygon) is 'implementation of && operator';

create function pg_catalog.poly_overleft(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_overleft(polygon, polygon) is 'implementation of &< operator';

create function pg_catalog.poly_overright(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_overright(polygon, polygon) is 'implementation of &> operator';

create function pg_catalog.poly_recv(internal) returns polygon
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_recv(internal) is 'I/O';

create function pg_catalog.poly_right(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_right(polygon, polygon) is 'implementation of >> operator';

create function pg_catalog.poly_same(polygon, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_same(polygon, polygon) is 'implementation of ~= operator';

create function pg_catalog.poly_send(polygon) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.poly_send(polygon) is 'I/O';

create function pg_catalog.polygon(box) returns polygon
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.polygon(box) is 'convert box to polygon';

create function pg_catalog.polygon(circle) returns polygon
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.polygon(circle) is 'convert circle to 12-vertex polygon';

create function pg_catalog.polygon(integer, circle) returns polygon
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.polygon(integer, circle) is 'convert vertex count and circle to polygon';

create function pg_catalog.polygon(path) returns polygon
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.polygon(path) is 'convert path to polygon';

create function pg_catalog.popen(path) returns path
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.popen(path) is 'open path';

create function pg_catalog.position(bit, bit) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.position(bit, bit) is 'position of sub-bitstring';

create function pg_catalog.position(bytea, bytea) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.position(bytea, bytea) is 'position of substring';

create function pg_catalog.position(text, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.position(text, text) is 'position of substring';

create function pg_catalog.positionjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.positionjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity for position-comparison operators';

create function pg_catalog.positionsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.positionsel(internal, oid, internal, integer) is 'restriction selectivity for position-comparison operators';

create function pg_catalog.postgresql_fdw_validator(text[], oid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.postgresql_fdw_validator(text[], oid) is '(internal)';

create function pg_catalog.pow(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pow(double precision, double precision) is 'exponentiation';

create function pg_catalog.pow(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pow(numeric, numeric) is 'exponentiation';

create function pg_catalog.power(double precision, double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.power(double precision, double precision) is 'exponentiation';

create function pg_catalog.power(numeric, numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.power(numeric, numeric) is 'exponentiation';

create function pg_catalog.prefixjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prefixjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of exact prefix';

create function pg_catalog.prefixsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prefixsel(internal, oid, internal, integer) is 'restriction selectivity of exact prefix';

create function pg_catalog.prsd_end(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prsd_end(internal) is '(internal)';

create function pg_catalog.prsd_headline(internal, internal, tsquery) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prsd_headline(internal, internal, tsquery) is '(internal)';

create function pg_catalog.prsd_lextype(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prsd_lextype(internal) is '(internal)';

create function pg_catalog.prsd_nexttoken(internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prsd_nexttoken(internal, internal, internal) is '(internal)';

create function pg_catalog.prsd_start(internal, integer) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.prsd_start(internal, integer) is '(internal)';

create function pg_catalog.pt_contained_circle(point, circle) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pt_contained_circle(point, circle) is 'implementation of <@ operator';

create function pg_catalog.pt_contained_poly(point, polygon) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.pt_contained_poly(point, polygon) is 'implementation of <@ operator';

create function pg_catalog.query_to_xml(nulls boolean, query text, tableforest boolean, targetns text) returns xml
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.query_to_xml(boolean, text, boolean, text) is 'map query result to XML';

create function pg_catalog.query_to_xml_and_xmlschema(nulls boolean, query text, tableforest boolean, targetns text) returns xml
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.query_to_xml_and_xmlschema(boolean, text, boolean, text) is 'map query result and structure to XML and XML Schema';

create function pg_catalog.query_to_xmlschema(nulls boolean, query text, tableforest boolean, targetns text) returns xml
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.query_to_xmlschema(boolean, text, boolean, text) is 'map query result structure to XML Schema';

create function pg_catalog.querytree(tsquery) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.querytree(tsquery) is 'show real useful query for GiST index';

create function pg_catalog.quote_ident(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.quote_ident(text) is 'quote an identifier for usage in a querystring';

create function pg_catalog.quote_literal(anyelement) returns text
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.quote_literal(anyelement) is 'quote a data value for usage in a querystring';

create function pg_catalog.quote_literal(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.quote_literal(text) is 'quote a literal for usage in a querystring';

create function pg_catalog.quote_nullable(anyelement) returns text
	stable
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.quote_nullable(anyelement) is 'quote a possibly-null data value for usage in a querystring';

create function pg_catalog.quote_nullable(text) returns text
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.quote_nullable(text) is 'quote a possibly-null literal for usage in a querystring';

create function pg_catalog.radians(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.radians(double precision) is 'degrees to radians';

create function pg_catalog.radius(circle) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.radius(circle) is 'radius of circle';

create function pg_catalog.random() returns double precision
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.random() is 'random value';

create function pg_catalog.range_adjacent(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_adjacent(anyrange, anyrange) is 'implementation of -|- operator';

create function pg_catalog.range_after(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_after(anyrange, anyrange) is 'implementation of >> operator';

create function pg_catalog.range_before(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_before(anyrange, anyrange) is 'implementation of << operator';

create function pg_catalog.range_cmp(anyrange, anyrange) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_cmp(anyrange, anyrange) is 'less-equal-greater';

create function pg_catalog.range_contained_by(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_contained_by(anyrange, anyrange) is 'implementation of <@ operator';

create function pg_catalog.range_contains(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_contains(anyrange, anyrange) is 'implementation of @> operator';

create function pg_catalog.range_contains_elem(anyrange, anyelement) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_contains_elem(anyrange, anyelement) is 'implementation of @> operator';

create function pg_catalog.range_eq(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_eq(anyrange, anyrange) is 'implementation of = operator';

create function pg_catalog.range_ge(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_ge(anyrange, anyrange) is 'implementation of >= operator';

create function pg_catalog.range_gist_consistent(internal, anyrange, smallint, oid, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_gist_consistent(internal, anyrange, smallint, oid, internal) is 'GiST support';

create function pg_catalog.range_gist_penalty(internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_gist_penalty(internal, internal, internal) is 'GiST support';

create function pg_catalog.range_gist_picksplit(internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_gist_picksplit(internal, internal) is 'GiST support';

create function pg_catalog.range_gist_same(anyrange, anyrange, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_gist_same(anyrange, anyrange, internal) is 'GiST support';

create function pg_catalog.range_gist_union(internal, internal) returns anyrange
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_gist_union(internal, internal) is 'GiST support';

create function pg_catalog.range_gt(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_gt(anyrange, anyrange) is 'implementation of > operator';

create function pg_catalog.range_in(cstring, oid, integer) returns anyrange
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.range_intersect(anyrange, anyrange) returns anyrange
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_intersect(anyrange, anyrange) is 'implementation of * operator';

create function pg_catalog.range_le(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_le(anyrange, anyrange) is 'implementation of <= operator';

create function pg_catalog.range_lt(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_lt(anyrange, anyrange) is 'implementation of < operator';

create function pg_catalog.range_merge(anyrange, anyrange) returns anyrange
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_merge(anyrange, anyrange) is 'the smallest range which includes both of the given ranges';

create function pg_catalog.range_minus(anyrange, anyrange) returns anyrange
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_minus(anyrange, anyrange) is 'implementation of - operator';

create function pg_catalog.range_ne(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_ne(anyrange, anyrange) is 'implementation of <> operator';

create function pg_catalog.range_out(anyrange) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_out(anyrange) is 'I/O';

create function pg_catalog.range_overlaps(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_overlaps(anyrange, anyrange) is 'implementation of && operator';

create function pg_catalog.range_overleft(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_overleft(anyrange, anyrange) is 'implementation of &< operator';

create function pg_catalog.range_overright(anyrange, anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_overright(anyrange, anyrange) is 'implementation of &> operator';

create function pg_catalog.range_recv(internal, oid, integer) returns anyrange
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.range_send(anyrange) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_send(anyrange) is 'I/O';

create function pg_catalog.range_typanalyze(internal) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_typanalyze(internal) is 'range typanalyze';

create function pg_catalog.range_union(anyrange, anyrange) returns anyrange
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.range_union(anyrange, anyrange) is 'implementation of + operator';

create function pg_catalog.rangesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rangesel(internal, oid, internal, integer) is 'restriction selectivity for range operators';

create function pg_catalog.rank() returns bigint
	immutable
	window
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rank() is 'integer rank with gaps';

create function pg_catalog.rank_final(internal, "any") returns bigint
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rank_final(internal, "any") is 'aggregate final function';

create function pg_catalog.record_eq(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_eq(record, record) is 'implementation of = operator';

create function pg_catalog.record_ge(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_ge(record, record) is 'implementation of >= operator';

create function pg_catalog.record_gt(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_gt(record, record) is 'implementation of > operator';

create function pg_catalog.record_image_eq(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_image_eq(record, record) is 'implementation of *= operator';

create function pg_catalog.record_image_ge(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_image_ge(record, record) is 'implementation of *>= operator';

create function pg_catalog.record_image_gt(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_image_gt(record, record) is 'implementation of *> operator';

create function pg_catalog.record_image_le(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_image_le(record, record) is 'implementation of *<= operator';

create function pg_catalog.record_image_lt(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_image_lt(record, record) is 'implementation of *< operator';

create function pg_catalog.record_image_ne(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_image_ne(record, record) is 'implementation of *<> operator';

create function pg_catalog.record_in(cstring, oid, integer) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.record_le(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_le(record, record) is 'implementation of <= operator';

create function pg_catalog.record_lt(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_lt(record, record) is 'implementation of < operator';

create function pg_catalog.record_ne(record, record) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_ne(record, record) is 'implementation of <> operator';

create function pg_catalog.record_out(record) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_out(record) is 'I/O';

create function pg_catalog.record_recv(internal, oid, integer) returns record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.record_send(record) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.record_send(record) is 'I/O';

create function pg_catalog.regclass(text) returns regclass
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regclass(text) is 'convert text to regclass';

create function pg_catalog.regclassin(cstring) returns regclass
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regclassin(cstring) is 'I/O';

create function pg_catalog.regclassout(regclass) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regclassout(regclass) is 'I/O';

create function pg_catalog.regclassrecv(internal) returns regclass
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regclassrecv(internal) is 'I/O';

create function pg_catalog.regclasssend(regclass) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regclasssend(regclass) is 'I/O';

create function pg_catalog.regconfigin(cstring) returns regconfig
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regconfigin(cstring) is 'I/O';

create function pg_catalog.regconfigout(regconfig) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regconfigout(regconfig) is 'I/O';

create function pg_catalog.regconfigrecv(internal) returns regconfig
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regconfigrecv(internal) is 'I/O';

create function pg_catalog.regconfigsend(regconfig) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regconfigsend(regconfig) is 'I/O';

create function pg_catalog.regdictionaryin(cstring) returns regdictionary
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regdictionaryin(cstring) is 'I/O';

create function pg_catalog.regdictionaryout(regdictionary) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regdictionaryout(regdictionary) is 'I/O';

create function pg_catalog.regdictionaryrecv(internal) returns regdictionary
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regdictionaryrecv(internal) is 'I/O';

create function pg_catalog.regdictionarysend(regdictionary) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regdictionarysend(regdictionary) is 'I/O';

create function pg_catalog.regexeqjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexeqjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of regex match';

create function pg_catalog.regexeqsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexeqsel(internal, oid, internal, integer) is 'restriction selectivity of regex match';

create function pg_catalog.regexnejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexnejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of regex non-match';

create function pg_catalog.regexnesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexnesel(internal, oid, internal, integer) is 'restriction selectivity of regex non-match';

create function pg_catalog.regexp_match(text, text) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_match(text, text) is 'find first match for regexp';

create function pg_catalog.regexp_match(text, text, text) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_match(text, text, text) is 'find first match for regexp';

create function pg_catalog.regexp_matches(text, text) returns setof text[]
	immutable
	strict
	cost 1
	rows 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_matches(text, text) is 'find match(es) for regexp';

create function pg_catalog.regexp_matches(text, text, text) returns setof text[]
	immutable
	strict
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_matches(text, text, text) is 'find match(es) for regexp';

create function pg_catalog.regexp_replace(text, text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_replace(text, text, text) is 'replace text using regexp';

create function pg_catalog.regexp_replace(text, text, text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_replace(text, text, text, text) is 'replace text using regexp';

create function pg_catalog.regexp_split_to_array(text, text) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_split_to_array(text, text) is 'split string by pattern';

create function pg_catalog.regexp_split_to_array(text, text, text) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_split_to_array(text, text, text) is 'split string by pattern';

create function pg_catalog.regexp_split_to_table(text, text) returns setof text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_split_to_table(text, text) is 'split string by pattern';

create function pg_catalog.regexp_split_to_table(text, text, text) returns setof text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regexp_split_to_table(text, text, text) is 'split string by pattern';

create function pg_catalog.regnamespacein(cstring) returns regnamespace
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regnamespacein(cstring) is 'I/O';

create function pg_catalog.regnamespaceout(regnamespace) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regnamespaceout(regnamespace) is 'I/O';

create function pg_catalog.regnamespacerecv(internal) returns regnamespace
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regnamespacerecv(internal) is 'I/O';

create function pg_catalog.regnamespacesend(regnamespace) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regnamespacesend(regnamespace) is 'I/O';

create function pg_catalog.regoperatorin(cstring) returns regoperator
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperatorin(cstring) is 'I/O';

create function pg_catalog.regoperatorout(regoperator) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperatorout(regoperator) is 'I/O';

create function pg_catalog.regoperatorrecv(internal) returns regoperator
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperatorrecv(internal) is 'I/O';

create function pg_catalog.regoperatorsend(regoperator) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperatorsend(regoperator) is 'I/O';

create function pg_catalog.regoperin(cstring) returns regoper
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperin(cstring) is 'I/O';

create function pg_catalog.regoperout(regoper) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperout(regoper) is 'I/O';

create function pg_catalog.regoperrecv(internal) returns regoper
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regoperrecv(internal) is 'I/O';

create function pg_catalog.regopersend(regoper) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regopersend(regoper) is 'I/O';

create function pg_catalog.regprocedurein(cstring) returns regprocedure
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocedurein(cstring) is 'I/O';

create function pg_catalog.regprocedureout(regprocedure) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocedureout(regprocedure) is 'I/O';

create function pg_catalog.regprocedurerecv(internal) returns regprocedure
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocedurerecv(internal) is 'I/O';

create function pg_catalog.regproceduresend(regprocedure) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regproceduresend(regprocedure) is 'I/O';

create function pg_catalog.regprocin(cstring) returns regproc
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocin(cstring) is 'I/O';

create function pg_catalog.regprocout(regproc) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocout(regproc) is 'I/O';

create function pg_catalog.regprocrecv(internal) returns regproc
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocrecv(internal) is 'I/O';

create function pg_catalog.regprocsend(regproc) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regprocsend(regproc) is 'I/O';

create function pg_catalog.regrolein(cstring) returns regrole
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regrolein(cstring) is 'I/O';

create function pg_catalog.regroleout(regrole) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regroleout(regrole) is 'I/O';

create function pg_catalog.regrolerecv(internal) returns regrole
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regrolerecv(internal) is 'I/O';

create function pg_catalog.regrolesend(regrole) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regrolesend(regrole) is 'I/O';

create function pg_catalog.regtypein(cstring) returns regtype
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regtypein(cstring) is 'I/O';

create function pg_catalog.regtypeout(regtype) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regtypeout(regtype) is 'I/O';

create function pg_catalog.regtyperecv(internal) returns regtype
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regtyperecv(internal) is 'I/O';

create function pg_catalog.regtypesend(regtype) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.regtypesend(regtype) is 'I/O';

create function pg_catalog.repeat(text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.repeat(text, integer) is 'replicate string n times';

create function pg_catalog.replace(text, text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.replace(text, text, text) is 'replace all occurrences in string of old_substr with new_substr';

create function pg_catalog.reverse(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.reverse(text) is 'reverse text';

create function pg_catalog."right"(text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."right"(text, integer) is 'extract the last n characters';

create function pg_catalog.round(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.round(double precision) is 'round to nearest integer';

create function pg_catalog.round(numeric) returns numeric
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.round(numeric) is 'value rounded to ''scale'' of zero';

create function pg_catalog.round(numeric, integer) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.round(numeric, integer) is 'value rounded to ''scale''';

create function pg_catalog.row_number() returns bigint
	immutable
	window
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.row_number() is 'row number within partition';

create function pg_catalog.row_security_active(oid) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.row_security_active(oid) is 'row security for current context active on table by table oid';

create function pg_catalog.row_security_active(text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.row_security_active(text) is 'row security for current context active on table by table name';

create function pg_catalog.row_to_json(record) returns json
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.row_to_json(record) is 'map row to json';

create function pg_catalog.row_to_json(record, boolean) returns json
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.row_to_json(record, boolean) is 'map row to json with optional pretty printing';

create function pg_catalog.rpad(text, integer) returns text
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rpad(text, integer) is 'right-pad string to length';

create function pg_catalog.rpad(text, integer, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rpad(text, integer, text) is 'right-pad string to length';

create function pg_catalog.rtrim(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rtrim(text) is 'trim spaces from right end of string';

create function pg_catalog.rtrim(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.rtrim(text, text) is 'trim selected characters from right end of string';

create function pg_catalog.satisfies_hash_partition(oid, integer, integer, "any") returns boolean
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.satisfies_hash_partition(oid, integer, integer, "any") is 'hash partition CHECK constraint';

create function pg_catalog.scalargejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalargejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of >= and related operators on scalar datatypes';

create function pg_catalog.scalargesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalargesel(internal, oid, internal, integer) is 'restriction selectivity of >= and related operators on scalar datatypes';

create function pg_catalog.scalargtjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalargtjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of > and related operators on scalar datatypes';

create function pg_catalog.scalargtsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalargtsel(internal, oid, internal, integer) is 'restriction selectivity of > and related operators on scalar datatypes';

create function pg_catalog.scalarlejoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalarlejoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of <= and related operators on scalar datatypes';

create function pg_catalog.scalarlesel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalarlesel(internal, oid, internal, integer) is 'restriction selectivity of <= and related operators on scalar datatypes';

create function pg_catalog.scalarltjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalarltjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of < and related operators on scalar datatypes';

create function pg_catalog.scalarltsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scalarltsel(internal, oid, internal, integer) is 'restriction selectivity of < and related operators on scalar datatypes';

create function pg_catalog.scale(numeric) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.scale(numeric) is 'number of decimal digits in the fractional part';

create function pg_catalog.schema_to_xml(nulls boolean, schema name, tableforest boolean, targetns text) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.schema_to_xml(boolean, name, boolean, text) is 'map schema contents to XML';

create function pg_catalog.schema_to_xml_and_xmlschema(nulls boolean, schema name, tableforest boolean, targetns text) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.schema_to_xml_and_xmlschema(boolean, name, boolean, text) is 'map schema contents and structure to XML and XML Schema';

create function pg_catalog.schema_to_xmlschema(nulls boolean, schema name, tableforest boolean, targetns text) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.schema_to_xmlschema(boolean, name, boolean, text) is 'map schema structure to XML Schema';

create function pg_catalog."session_user"() returns name
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog."session_user"() is 'session user name';

create function pg_catalog.set_bit(bit, integer, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.set_bit(bit, integer, integer) is 'set bit';

create function pg_catalog.set_bit(bytea, integer, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.set_bit(bytea, integer, integer) is 'set bit';

create function pg_catalog.set_byte(bytea, integer, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.set_byte(bytea, integer, integer) is 'set byte';

create function pg_catalog.set_config(text, text, boolean) returns text
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.set_config(text, text, boolean) is 'SET X as a function';

create function pg_catalog.set_masklen(cidr, integer) returns cidr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.set_masklen(cidr, integer) is 'change netmask of cidr';

create function pg_catalog.set_masklen(inet, integer) returns inet
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.set_masklen(inet, integer) is 'change netmask of inet';

create function pg_catalog.setseed(double precision) returns void
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.setseed(double precision) is 'set random seed';

create function pg_catalog.setval(regclass, bigint) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.setval(regclass, bigint) is 'set sequence value';

create function pg_catalog.setval(regclass, bigint, boolean) returns bigint
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.setval(regclass, bigint, boolean) is 'set sequence value and is_called status';

create function pg_catalog.setweight(tsvector, "char") returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.setweight(tsvector, "char") is 'set given weight for whole tsvector';

create function pg_catalog.setweight(tsvector, "char", text[]) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.setweight(tsvector, "char", text[]) is 'set given weight for given lexemes';

create function pg_catalog.sha224(bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sha224(bytea) is 'SHA-224 hash';

create function pg_catalog.sha256(bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sha256(bytea) is 'SHA-256 hash';

create function pg_catalog.sha384(bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sha384(bytea) is 'SHA-384 hash';

create function pg_catalog.sha512(bytea) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sha512(bytea) is 'SHA-512 hash';

create function pg_catalog.shell_in(cstring) returns opaque
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.shell_in(cstring) is 'I/O';

create function pg_catalog.shell_out(opaque) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.shell_out(opaque) is 'I/O';

create function pg_catalog.shift_jis_2004_to_euc_jis_2004(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.shift_jis_2004_to_euc_jis_2004(integer, integer, cstring, internal, integer) is 'internal conversion function for SHIFT_JIS_2004 to EUC_JIS_2004';

create function pg_catalog.shift_jis_2004_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.shift_jis_2004_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for SHIFT_JIS_2004 to UTF8';

create function pg_catalog.shobj_description(oid, name) returns text
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.shobj_description(oid, name) is 'get description for object id and shared catalog name';

create function pg_catalog.sign(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sign(double precision) is 'sign of value';

create function pg_catalog.sign(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sign(numeric) is 'sign of value';

create function pg_catalog.similar_escape(text, text) returns text
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.similar_escape(text, text) is 'convert SQL99 regexp pattern to POSIX style';

create function pg_catalog.sin(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sin(double precision) is 'sine';

create function pg_catalog.sind(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sind(double precision) is 'sine, degrees';

create function pg_catalog.sinh(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sinh(double precision) is 'hyperbolic sine';

create function pg_catalog.sjis_to_euc_jp(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sjis_to_euc_jp(integer, integer, cstring, internal, integer) is 'internal conversion function for SJIS to EUC_JP';

create function pg_catalog.sjis_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sjis_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for SJIS to MULE_INTERNAL';

create function pg_catalog.sjis_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sjis_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for SJIS to UTF8';

create function pg_catalog.slope(point, point) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.slope(point, point) is 'slope between points';

create function pg_catalog.spg_bbox_quad_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_bbox_quad_config(internal, internal) is 'SP-GiST support for quad tree over 2-D types represented by their bounding boxes';

create function pg_catalog.spg_box_quad_choose(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_box_quad_choose(internal, internal) is 'SP-GiST support for quad tree over box';

create function pg_catalog.spg_box_quad_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_box_quad_config(internal, internal) is 'SP-GiST support for quad tree over box';

create function pg_catalog.spg_box_quad_inner_consistent(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_box_quad_inner_consistent(internal, internal) is 'SP-GiST support for quad tree over box';

create function pg_catalog.spg_box_quad_leaf_consistent(internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_box_quad_leaf_consistent(internal, internal) is 'SP-GiST support for quad tree over box';

create function pg_catalog.spg_box_quad_picksplit(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_box_quad_picksplit(internal, internal) is 'SP-GiST support for quad tree over box';

create function pg_catalog.spg_kd_choose(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_kd_choose(internal, internal) is 'SP-GiST support for k-d tree over point';

create function pg_catalog.spg_kd_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_kd_config(internal, internal) is 'SP-GiST support for k-d tree over point';

create function pg_catalog.spg_kd_inner_consistent(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_kd_inner_consistent(internal, internal) is 'SP-GiST support for k-d tree over point';

create function pg_catalog.spg_kd_picksplit(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_kd_picksplit(internal, internal) is 'SP-GiST support for k-d tree over point';

create function pg_catalog.spg_poly_quad_compress(polygon) returns box
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_poly_quad_compress(polygon) is 'SP-GiST support for quad tree over polygons';

create function pg_catalog.spg_quad_choose(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_quad_choose(internal, internal) is 'SP-GiST support for quad tree over point';

create function pg_catalog.spg_quad_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_quad_config(internal, internal) is 'SP-GiST support for quad tree over point';

create function pg_catalog.spg_quad_inner_consistent(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_quad_inner_consistent(internal, internal) is 'SP-GiST support for quad tree over point';

create function pg_catalog.spg_quad_leaf_consistent(internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_quad_leaf_consistent(internal, internal) is 'SP-GiST support for quad tree and k-d tree over point';

create function pg_catalog.spg_quad_picksplit(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_quad_picksplit(internal, internal) is 'SP-GiST support for quad tree over point';

create function pg_catalog.spg_range_quad_choose(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_range_quad_choose(internal, internal) is 'SP-GiST support for quad tree over range';

create function pg_catalog.spg_range_quad_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_range_quad_config(internal, internal) is 'SP-GiST support for quad tree over range';

create function pg_catalog.spg_range_quad_inner_consistent(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_range_quad_inner_consistent(internal, internal) is 'SP-GiST support for quad tree over range';

create function pg_catalog.spg_range_quad_leaf_consistent(internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_range_quad_leaf_consistent(internal, internal) is 'SP-GiST support for quad tree over range';

create function pg_catalog.spg_range_quad_picksplit(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_range_quad_picksplit(internal, internal) is 'SP-GiST support for quad tree over range';

create function pg_catalog.spg_text_choose(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_text_choose(internal, internal) is 'SP-GiST support for radix tree over text';

create function pg_catalog.spg_text_config(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_text_config(internal, internal) is 'SP-GiST support for radix tree over text';

create function pg_catalog.spg_text_inner_consistent(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_text_inner_consistent(internal, internal) is 'SP-GiST support for radix tree over text';

create function pg_catalog.spg_text_leaf_consistent(internal, internal) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_text_leaf_consistent(internal, internal) is 'SP-GiST support for radix tree over text';

create function pg_catalog.spg_text_picksplit(internal, internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spg_text_picksplit(internal, internal) is 'SP-GiST support for radix tree over text';

create function pg_catalog.spghandler(internal) returns index_am_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.spghandler(internal) is 'spgist index access method handler';

create function pg_catalog.split_part(text, text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.split_part(text, text, integer) is 'split string by field_sep and return field_num';

create function pg_catalog.sqrt(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sqrt(double precision) is 'square root';

create function pg_catalog.sqrt(numeric) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.sqrt(numeric) is 'square root';

create function pg_catalog.starts_with(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.starts_with(text, text) is 'implementation of ^@ operator';

create function pg_catalog.statement_timestamp() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.statement_timestamp() is 'current statement time';

create function pg_catalog.string_agg_finalfn(internal) returns text
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.string_agg_finalfn(internal) is 'aggregate final function';

create function pg_catalog.string_agg_transfn(internal, text, text) returns internal
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.string_agg_transfn(internal, text, text) is 'aggregate transition function';

create function pg_catalog.string_to_array(text, text) returns text[]
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.string_to_array(text, text) is 'split delimited text into text[]';

create function pg_catalog.string_to_array(text, text, text) returns text[]
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.string_to_array(text, text, text) is 'split delimited text into text[], with null string';

create function pg_catalog.strip(tsvector) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.strip(tsvector) is 'strip position information';

create function pg_catalog.strpos(text, text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.strpos(text, text) is 'position of substring';

create function pg_catalog.substr(bytea, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substr(bytea, integer) is 'extract portion of string';

create function pg_catalog.substr(bytea, integer, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substr(bytea, integer, integer) is 'extract portion of string';

create function pg_catalog.substr(text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substr(text, integer) is 'extract portion of string';

create function pg_catalog.substr(text, integer, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substr(text, integer, integer) is 'extract portion of string';

create function pg_catalog.substring(bit, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(bit, integer) is 'extract portion of bitstring';

create function pg_catalog.substring(bit, integer, integer) returns bit
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(bit, integer, integer) is 'extract portion of bitstring';

create function pg_catalog.substring(bytea, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(bytea, integer) is 'extract portion of string';

create function pg_catalog.substring(bytea, integer, integer) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(bytea, integer, integer) is 'extract portion of string';

create function pg_catalog.substring(text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(text, integer) is 'extract portion of string';

create function pg_catalog.substring(text, integer, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(text, integer, integer) is 'extract portion of string';

create function pg_catalog.substring(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(text, text) is 'extract text matching regular expression';

create function pg_catalog.substring(text, text, text) returns text
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.substring(text, text, text) is 'extract text matching SQL99 regular expression';

create function pg_catalog.suppress_redundant_updates_trigger() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.suppress_redundant_updates_trigger() is 'trigger to suppress updates when new and old records match';

create function pg_catalog.system(internal) returns tsm_handler
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.system(internal) is 'SYSTEM tablesample method handler';

create function pg_catalog.table_am_handler_in(cstring) returns table_am_handler
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.table_am_handler_in(cstring) is 'I/O';

create function pg_catalog.table_am_handler_out(table_am_handler) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.table_am_handler_out(table_am_handler) is 'I/O';

create function pg_catalog.table_to_xml(nulls boolean, tableforest boolean, targetns text, tbl regclass) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.table_to_xml(boolean, boolean, text, regclass) is 'map table contents to XML';

create function pg_catalog.table_to_xml_and_xmlschema(nulls boolean, tableforest boolean, targetns text, tbl regclass) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.table_to_xml_and_xmlschema(boolean, boolean, text, regclass) is 'map table contents and structure to XML and XML Schema';

create function pg_catalog.table_to_xmlschema(nulls boolean, tableforest boolean, targetns text, tbl regclass) returns xml
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.table_to_xmlschema(boolean, boolean, text, regclass) is 'map table structure to XML Schema';

create function pg_catalog.tan(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tan(double precision) is 'tangent';

create function pg_catalog.tand(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tand(double precision) is 'tangent, degrees';

create function pg_catalog.tanh(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tanh(double precision) is 'hyperbolic tangent';

create function pg_catalog.text("char") returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text("char") is 'convert char to text';

create function pg_catalog.text(boolean) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text(boolean) is 'convert boolean to text';

create function pg_catalog.text(char) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text(char) is 'convert char(n) to text';

create function pg_catalog.text(inet) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text(inet) is 'show all parts of inet/cidr value';

create function pg_catalog.text(name) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text(name) is 'convert name to text';

create function pg_catalog.text(xml) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text(xml) is 'serialize an XML value to a character string';

create function pg_catalog.text_ge(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_ge(text, text) is 'implementation of >= operator';

create function pg_catalog.text_gt(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_gt(text, text) is 'implementation of > operator';

create function pg_catalog.text_larger(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_larger(text, text) is 'larger of two';

create function pg_catalog.text_le(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_le(text, text) is 'implementation of <= operator';

create function pg_catalog.text_lt(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_lt(text, text) is 'implementation of < operator';

create function pg_catalog.text_pattern_ge(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_pattern_ge(text, text) is 'implementation of ~>=~ operator';

create function pg_catalog.text_pattern_gt(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_pattern_gt(text, text) is 'implementation of ~>~ operator';

create function pg_catalog.text_pattern_le(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_pattern_le(text, text) is 'implementation of ~<=~ operator';

create function pg_catalog.text_pattern_lt(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_pattern_lt(text, text) is 'implementation of ~<~ operator';

create function pg_catalog.text_smaller(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.text_smaller(text, text) is 'smaller of two';

create function pg_catalog.textanycat(text, anynonarray) returns text
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textanycat(text, anynonarray) is 'implementation of || operator';

create function pg_catalog.textcat(text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textcat(text, text) is 'implementation of || operator';

create function pg_catalog.texteq(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texteq(text, text) is 'implementation of = operator';

create function pg_catalog.texteqname(text, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texteqname(text, name) is 'implementation of = operator';

create function pg_catalog.textgename(text, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textgename(text, name) is 'implementation of >= operator';

create function pg_catalog.textgtname(text, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textgtname(text, name) is 'implementation of > operator';

create function pg_catalog.texticlike(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texticlike(text, text) is 'implementation of ~~* operator';

create function pg_catalog.texticlike_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texticlike_support(internal) is 'planner support for texticlike';

create function pg_catalog.texticnlike(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texticnlike(text, text) is 'implementation of !~~* operator';

create function pg_catalog.texticregexeq(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texticregexeq(text, text) is 'implementation of ~* operator';

create function pg_catalog.texticregexeq_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texticregexeq_support(internal) is 'planner support for texticregexeq';

create function pg_catalog.texticregexne(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.texticregexne(text, text) is 'implementation of !~* operator';

create function pg_catalog.textin(cstring) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textin(cstring) is 'I/O';

create function pg_catalog.textlen(text) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textlen(text) is 'length';

create function pg_catalog.textlename(text, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textlename(text, name) is 'implementation of <= operator';

create function pg_catalog.textlike(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textlike(text, text) is 'implementation of ~~ operator';

create function pg_catalog.textlike_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textlike_support(internal) is 'planner support for textlike';

create function pg_catalog.textltname(text, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textltname(text, name) is 'implementation of < operator';

create function pg_catalog.textne(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textne(text, text) is 'implementation of <> operator';

create function pg_catalog.textnename(text, name) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textnename(text, name) is 'implementation of <> operator';

create function pg_catalog.textnlike(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textnlike(text, text) is 'implementation of !~~ operator';

create function pg_catalog.textout(text) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textout(text) is 'I/O';

create function pg_catalog.textrecv(internal) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textrecv(internal) is 'I/O';

create function pg_catalog.textregexeq(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textregexeq(text, text) is 'implementation of ~ operator';

create function pg_catalog.textregexeq_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textregexeq_support(internal) is 'planner support for textregexeq';

create function pg_catalog.textregexne(text, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textregexne(text, text) is 'implementation of !~ operator';

create function pg_catalog.textsend(text) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.textsend(text) is 'I/O';

create function pg_catalog.thesaurus_init(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.thesaurus_init(internal) is '(internal)';

create function pg_catalog.thesaurus_lexize(internal, internal, internal, internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.thesaurus_lexize(internal, internal, internal, internal) is '(internal)';

create function pg_catalog.tideq(tid, tid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tideq(tid, tid) is 'implementation of = operator';

create function pg_catalog.tidge(tid, tid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidge(tid, tid) is 'implementation of >= operator';

create function pg_catalog.tidgt(tid, tid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidgt(tid, tid) is 'implementation of > operator';

create function pg_catalog.tidin(cstring) returns tid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidin(cstring) is 'I/O';

create function pg_catalog.tidlarger(tid, tid) returns tid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidlarger(tid, tid) is 'larger of two';

create function pg_catalog.tidle(tid, tid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidle(tid, tid) is 'implementation of <= operator';

create function pg_catalog.tidlt(tid, tid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidlt(tid, tid) is 'implementation of < operator';

create function pg_catalog.tidne(tid, tid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidne(tid, tid) is 'implementation of <> operator';

create function pg_catalog.tidout(tid) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidout(tid) is 'I/O';

create function pg_catalog.tidrecv(internal) returns tid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidrecv(internal) is 'I/O';

create function pg_catalog.tidsend(tid) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidsend(tid) is 'I/O';

create function pg_catalog.tidsmaller(tid, tid) returns tid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tidsmaller(tid, tid) is 'smaller of two';

create function pg_catalog.time(interval) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time(interval) is 'convert interval to time';

create function pg_catalog.time(time with time zone) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time(time with time zone) is 'convert time with time zone to time';

create function pg_catalog.time(time, integer) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time(time, integer) is 'adjust time precision';

create function pg_catalog.time(timestamp with time zone) returns time
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time(timestamp with time zone) is 'convert timestamp with time zone to time';

create function pg_catalog.time(timestamp) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time(timestamp) is 'convert timestamp to time';

create function pg_catalog.time_cmp(time, time) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_cmp(time, time) is 'less-equal-greater';

create function pg_catalog.time_eq(time, time) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_eq(time, time) is 'implementation of = operator';

create function pg_catalog.time_ge(time, time) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_ge(time, time) is 'implementation of >= operator';

create function pg_catalog.time_gt(time, time) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_gt(time, time) is 'implementation of > operator';

create function pg_catalog.time_hash(time) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_hash(time) is 'hash';

create function pg_catalog.time_hash_extended(time, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_hash_extended(time, bigint) is 'hash';

create function pg_catalog.time_in(cstring, oid, integer) returns time
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.time_larger(time, time) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_larger(time, time) is 'larger of two';

create function pg_catalog.time_le(time, time) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_le(time, time) is 'implementation of <= operator';

create function pg_catalog.time_lt(time, time) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_lt(time, time) is 'implementation of < operator';

create function pg_catalog.time_mi_interval(time, interval) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_mi_interval(time, interval) is 'implementation of - operator';

create function pg_catalog.time_mi_time(time, time) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_mi_time(time, time) is 'implementation of - operator';

create function pg_catalog.time_ne(time, time) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_ne(time, time) is 'implementation of <> operator';

create function pg_catalog.time_out(time) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_out(time) is 'I/O';

create function pg_catalog.time_pl_interval(time, interval) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_pl_interval(time, interval) is 'implementation of + operator';

create function pg_catalog.time_recv(internal, oid, integer) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.time_send(time) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_send(time) is 'I/O';

create function pg_catalog.time_smaller(time, time) returns time
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_smaller(time, time) is 'smaller of two';

create function pg_catalog.time_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.time_support(internal) is 'planner support for time length coercion';

create function pg_catalog.timedate_pl(time without time zone, date) returns timestamp without time zone
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timedate_pl(time, date) is 'implementation of + operator';

create function pg_catalog.timeofday() returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timeofday() is 'current date and time - increments during transactions';

create function pg_catalog.timestamp(date) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp(date) is 'convert date to timestamp';

create function pg_catalog.timestamp(date, time) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp(date, time) is 'convert date and time to timestamp';

create function pg_catalog.timestamp(timestamp with time zone) returns timestamp
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp(timestamp with time zone) is 'convert timestamp with time zone to timestamp';

create function pg_catalog.timestamp(timestamp, integer) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp(timestamp, integer) is 'adjust timestamp precision';

create function pg_catalog.timestamp_cmp(timestamp, timestamp) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_cmp(timestamp, timestamp) is 'less-equal-greater';

create function pg_catalog.timestamp_cmp_date(timestamp, date) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_cmp_date(timestamp, date) is 'less-equal-greater';

create function pg_catalog.timestamp_cmp_timestamptz(timestamp, timestamp with time zone) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_cmp_timestamptz(timestamp, timestamp with time zone) is 'less-equal-greater';

create function pg_catalog.timestamp_eq(timestamp, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_eq(timestamp, timestamp) is 'implementation of = operator';

create function pg_catalog.timestamp_eq_date(timestamp, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_eq_date(timestamp, date) is 'implementation of = operator';

create function pg_catalog.timestamp_eq_timestamptz(timestamp, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_eq_timestamptz(timestamp, timestamp with time zone) is 'implementation of = operator';

create function pg_catalog.timestamp_ge(timestamp, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_ge(timestamp, timestamp) is 'implementation of >= operator';

create function pg_catalog.timestamp_ge_date(timestamp, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_ge_date(timestamp, date) is 'implementation of >= operator';

create function pg_catalog.timestamp_ge_timestamptz(timestamp, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_ge_timestamptz(timestamp, timestamp with time zone) is 'implementation of >= operator';

create function pg_catalog.timestamp_gt(timestamp, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_gt(timestamp, timestamp) is 'implementation of > operator';

create function pg_catalog.timestamp_gt_date(timestamp, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_gt_date(timestamp, date) is 'implementation of > operator';

create function pg_catalog.timestamp_gt_timestamptz(timestamp, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_gt_timestamptz(timestamp, timestamp with time zone) is 'implementation of > operator';

create function pg_catalog.timestamp_hash(timestamp) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_hash(timestamp) is 'hash';

create function pg_catalog.timestamp_hash_extended(timestamp, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_hash_extended(timestamp, bigint) is 'hash';

create function pg_catalog.timestamp_in(cstring, oid, integer) returns timestamp
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.timestamp_larger(timestamp, timestamp) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_larger(timestamp, timestamp) is 'larger of two';

create function pg_catalog.timestamp_le(timestamp, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_le(timestamp, timestamp) is 'implementation of <= operator';

create function pg_catalog.timestamp_le_date(timestamp, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_le_date(timestamp, date) is 'implementation of <= operator';

create function pg_catalog.timestamp_le_timestamptz(timestamp, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_le_timestamptz(timestamp, timestamp with time zone) is 'implementation of <= operator';

create function pg_catalog.timestamp_lt(timestamp, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_lt(timestamp, timestamp) is 'implementation of < operator';

create function pg_catalog.timestamp_lt_date(timestamp, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_lt_date(timestamp, date) is 'implementation of < operator';

create function pg_catalog.timestamp_lt_timestamptz(timestamp, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_lt_timestamptz(timestamp, timestamp with time zone) is 'implementation of < operator';

create function pg_catalog.timestamp_mi(timestamp, timestamp) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_mi(timestamp, timestamp) is 'implementation of - operator';

create function pg_catalog.timestamp_mi_interval(timestamp, interval) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_mi_interval(timestamp, interval) is 'implementation of - operator';

create function pg_catalog.timestamp_ne(timestamp, timestamp) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_ne(timestamp, timestamp) is 'implementation of <> operator';

create function pg_catalog.timestamp_ne_date(timestamp, date) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_ne_date(timestamp, date) is 'implementation of <> operator';

create function pg_catalog.timestamp_ne_timestamptz(timestamp, timestamp with time zone) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_ne_timestamptz(timestamp, timestamp with time zone) is 'implementation of <> operator';

create function pg_catalog.timestamp_out(timestamp) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_out(timestamp) is 'I/O';

create function pg_catalog.timestamp_pl_interval(timestamp, interval) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_pl_interval(timestamp, interval) is 'implementation of + operator';

create function pg_catalog.timestamp_recv(internal, oid, integer) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.timestamp_send(timestamp) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_send(timestamp) is 'I/O';

create function pg_catalog.timestamp_smaller(timestamp, timestamp) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_smaller(timestamp, timestamp) is 'smaller of two';

create function pg_catalog.timestamp_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_sortsupport(internal) is 'sort support';

create function pg_catalog.timestamp_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamp_support(internal) is 'planner support for timestamp length coercion';

create function pg_catalog.timestamptypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.timestamptypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptypmodout(integer) is 'I/O typmod';

create function pg_catalog.timestamptz(date) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz(date) is 'convert date to timestamp with time zone';

create function pg_catalog.timestamptz(date, time with time zone) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz(date, time with time zone) is 'convert date and time with time zone to timestamp with time zone';

create function pg_catalog.timestamptz(date, time without time zone) returns timestamp with time zone
	stable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz(date, time) is 'convert date and time to timestamp with time zone';

create function pg_catalog.timestamptz(timestamp with time zone, integer) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz(timestamp with time zone, integer) is 'adjust timestamptz precision';

create function pg_catalog.timestamptz(timestamp) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz(timestamp) is 'convert timestamp to timestamp with time zone';

create function pg_catalog.timestamptz_cmp(timestamp with time zone, timestamp with time zone) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_cmp(timestamp with time zone, timestamp with time zone) is 'less-equal-greater';

create function pg_catalog.timestamptz_cmp_date(timestamp with time zone, date) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_cmp_date(timestamp with time zone, date) is 'less-equal-greater';

create function pg_catalog.timestamptz_cmp_timestamp(timestamp with time zone, timestamp) returns integer
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_cmp_timestamp(timestamp with time zone, timestamp) is 'less-equal-greater';

create function pg_catalog.timestamptz_eq(timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_eq(timestamp with time zone, timestamp with time zone) is 'implementation of = operator';

create function pg_catalog.timestamptz_eq_date(timestamp with time zone, date) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_eq_date(timestamp with time zone, date) is 'implementation of = operator';

create function pg_catalog.timestamptz_eq_timestamp(timestamp with time zone, timestamp) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_eq_timestamp(timestamp with time zone, timestamp) is 'implementation of = operator';

create function pg_catalog.timestamptz_ge(timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_ge(timestamp with time zone, timestamp with time zone) is 'implementation of >= operator';

create function pg_catalog.timestamptz_ge_date(timestamp with time zone, date) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_ge_date(timestamp with time zone, date) is 'implementation of >= operator';

create function pg_catalog.timestamptz_ge_timestamp(timestamp with time zone, timestamp) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_ge_timestamp(timestamp with time zone, timestamp) is 'implementation of >= operator';

create function pg_catalog.timestamptz_gt(timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_gt(timestamp with time zone, timestamp with time zone) is 'implementation of > operator';

create function pg_catalog.timestamptz_gt_date(timestamp with time zone, date) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_gt_date(timestamp with time zone, date) is 'implementation of > operator';

create function pg_catalog.timestamptz_gt_timestamp(timestamp with time zone, timestamp) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_gt_timestamp(timestamp with time zone, timestamp) is 'implementation of > operator';

create function pg_catalog.timestamptz_in(cstring, oid, integer) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.timestamptz_larger(timestamp with time zone, timestamp with time zone) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_larger(timestamp with time zone, timestamp with time zone) is 'larger of two';

create function pg_catalog.timestamptz_le(timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_le(timestamp with time zone, timestamp with time zone) is 'implementation of <= operator';

create function pg_catalog.timestamptz_le_date(timestamp with time zone, date) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_le_date(timestamp with time zone, date) is 'implementation of <= operator';

create function pg_catalog.timestamptz_le_timestamp(timestamp with time zone, timestamp) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_le_timestamp(timestamp with time zone, timestamp) is 'implementation of <= operator';

create function pg_catalog.timestamptz_lt(timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_lt(timestamp with time zone, timestamp with time zone) is 'implementation of < operator';

create function pg_catalog.timestamptz_lt_date(timestamp with time zone, date) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_lt_date(timestamp with time zone, date) is 'implementation of < operator';

create function pg_catalog.timestamptz_lt_timestamp(timestamp with time zone, timestamp) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_lt_timestamp(timestamp with time zone, timestamp) is 'implementation of < operator';

create function pg_catalog.timestamptz_mi(timestamp with time zone, timestamp with time zone) returns interval
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_mi(timestamp with time zone, timestamp with time zone) is 'implementation of - operator';

create function pg_catalog.timestamptz_mi_interval(timestamp with time zone, interval) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_mi_interval(timestamp with time zone, interval) is 'implementation of - operator';

create function pg_catalog.timestamptz_ne(timestamp with time zone, timestamp with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_ne(timestamp with time zone, timestamp with time zone) is 'implementation of <> operator';

create function pg_catalog.timestamptz_ne_date(timestamp with time zone, date) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_ne_date(timestamp with time zone, date) is 'implementation of <> operator';

create function pg_catalog.timestamptz_ne_timestamp(timestamp with time zone, timestamp) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_ne_timestamp(timestamp with time zone, timestamp) is 'implementation of <> operator';

create function pg_catalog.timestamptz_out(timestamp with time zone) returns cstring
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_out(timestamp with time zone) is 'I/O';

create function pg_catalog.timestamptz_pl_interval(timestamp with time zone, interval) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_pl_interval(timestamp with time zone, interval) is 'implementation of + operator';

create function pg_catalog.timestamptz_recv(internal, oid, integer) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.timestamptz_send(timestamp with time zone) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_send(timestamp with time zone) is 'I/O';

create function pg_catalog.timestamptz_smaller(timestamp with time zone, timestamp with time zone) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptz_smaller(timestamp with time zone, timestamp with time zone) is 'smaller of two';

create function pg_catalog.timestamptztypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptztypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.timestamptztypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timestamptztypmodout(integer) is 'I/O typmod';

create function pg_catalog.timetypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.timetypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetypmodout(integer) is 'I/O typmod';

create function pg_catalog.timetz(time with time zone, integer) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz(time with time zone, integer) is 'adjust time with time zone precision';

create function pg_catalog.timetz(time) returns time with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz(time) is 'convert time to time with time zone';

create function pg_catalog.timetz(timestamp with time zone) returns time with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz(timestamp with time zone) is 'convert timestamp with time zone to time with time zone';

create function pg_catalog.timetz_cmp(time with time zone, time with time zone) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_cmp(time with time zone, time with time zone) is 'less-equal-greater';

create function pg_catalog.timetz_eq(time with time zone, time with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_eq(time with time zone, time with time zone) is 'implementation of = operator';

create function pg_catalog.timetz_ge(time with time zone, time with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_ge(time with time zone, time with time zone) is 'implementation of >= operator';

create function pg_catalog.timetz_gt(time with time zone, time with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_gt(time with time zone, time with time zone) is 'implementation of > operator';

create function pg_catalog.timetz_hash(time with time zone) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_hash(time with time zone) is 'hash';

create function pg_catalog.timetz_hash_extended(time with time zone, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_hash_extended(time with time zone, bigint) is 'hash';

create function pg_catalog.timetz_in(cstring, oid, integer) returns time with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.timetz_larger(time with time zone, time with time zone) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_larger(time with time zone, time with time zone) is 'larger of two';

create function pg_catalog.timetz_le(time with time zone, time with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_le(time with time zone, time with time zone) is 'implementation of <= operator';

create function pg_catalog.timetz_lt(time with time zone, time with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_lt(time with time zone, time with time zone) is 'implementation of < operator';

create function pg_catalog.timetz_mi_interval(time with time zone, interval) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_mi_interval(time with time zone, interval) is 'implementation of - operator';

create function pg_catalog.timetz_ne(time with time zone, time with time zone) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_ne(time with time zone, time with time zone) is 'implementation of <> operator';

create function pg_catalog.timetz_out(time with time zone) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_out(time with time zone) is 'I/O';

create function pg_catalog.timetz_pl_interval(time with time zone, interval) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_pl_interval(time with time zone, interval) is 'implementation of + operator';

create function pg_catalog.timetz_recv(internal, oid, integer) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.timetz_send(time with time zone) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_send(time with time zone) is 'I/O';

create function pg_catalog.timetz_smaller(time with time zone, time with time zone) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetz_smaller(time with time zone, time with time zone) is 'smaller of two';

create function pg_catalog.timetzdate_pl(time with time zone, date) returns timestamp with time zone
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetzdate_pl(time with time zone, date) is 'implementation of + operator';

create function pg_catalog.timetztypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetztypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.timetztypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timetztypmodout(integer) is 'I/O typmod';

create function pg_catalog.timezone(interval, time with time zone) returns time with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timezone(interval, time with time zone) is 'adjust time with time zone to new zone';

create function pg_catalog.timezone(interval, timestamp with time zone) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timezone(interval, timestamp with time zone) is 'adjust timestamp to new time zone';

create function pg_catalog.timezone(interval, timestamp) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timezone(interval, timestamp) is 'adjust timestamp to new time zone';

create function pg_catalog.timezone(text, time with time zone) returns time with time zone
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timezone(text, time with time zone) is 'adjust time with time zone to new zone';

create function pg_catalog.timezone(text, timestamp with time zone) returns timestamp
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timezone(text, timestamp with time zone) is 'adjust timestamp to new time zone';

create function pg_catalog.timezone(text, timestamp) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.timezone(text, timestamp) is 'adjust timestamp to new time zone';

create function pg_catalog.to_ascii(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_ascii(text) is 'encode text from DB encoding to ASCII text';

create function pg_catalog.to_ascii(text, integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_ascii(text, integer) is 'encode text from encoding to ASCII text';

create function pg_catalog.to_ascii(text, name) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_ascii(text, name) is 'encode text from encoding to ASCII text';

create function pg_catalog.to_char(bigint, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(bigint, text) is 'format int8 to text';

create function pg_catalog.to_char(double precision, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(double precision, text) is 'format float8 to text';

create function pg_catalog.to_char(integer, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(integer, text) is 'format int4 to text';

create function pg_catalog.to_char(interval, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(interval, text) is 'format interval to text';

create function pg_catalog.to_char(numeric, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(numeric, text) is 'format numeric to text';

create function pg_catalog.to_char(real, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(real, text) is 'format float4 to text';

create function pg_catalog.to_char(timestamp with time zone, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(timestamp with time zone, text) is 'format timestamp with time zone to text';

create function pg_catalog.to_char(timestamp, text) returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_char(timestamp, text) is 'format timestamp to text';

create function pg_catalog.to_date(text, text) returns date
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_date(text, text) is 'convert text to date';

create function pg_catalog.to_hex(bigint) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_hex(bigint) is 'convert int8 number to hex';

create function pg_catalog.to_hex(integer) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_hex(integer) is 'convert int4 number to hex';

create function pg_catalog.to_json(anyelement) returns json
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_json(anyelement) is 'map input to json';

create function pg_catalog.to_jsonb(anyelement) returns jsonb
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_jsonb(anyelement) is 'map input to jsonb';

create function pg_catalog.to_number(text, text) returns numeric
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_number(text, text) is 'convert text to numeric';

create function pg_catalog.to_regclass(text) returns regclass
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regclass(text) is 'convert classname to regclass';

create function pg_catalog.to_regnamespace(text) returns regnamespace
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regnamespace(text) is 'convert namespace name to regnamespace';

create function pg_catalog.to_regoper(text) returns regoper
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regoper(text) is 'convert operator name to regoper';

create function pg_catalog.to_regoperator(text) returns regoperator
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regoperator(text) is 'convert operator name to regoperator';

create function pg_catalog.to_regproc(text) returns regproc
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regproc(text) is 'convert proname to regproc';

create function pg_catalog.to_regprocedure(text) returns regprocedure
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regprocedure(text) is 'convert proname to regprocedure';

create function pg_catalog.to_regrole(text) returns regrole
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regrole(text) is 'convert role name to regrole';

create function pg_catalog.to_regtype(text) returns regtype
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_regtype(text) is 'convert type name to regtype';

create function pg_catalog.to_timestamp(double precision) returns timestamp with time zone
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_timestamp(double precision) is 'convert UNIX epoch to timestamptz';

create function pg_catalog.to_timestamp(text, text) returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_timestamp(text, text) is 'convert text to timestamp with time zone';

create function pg_catalog.to_tsquery(regconfig, text) returns tsquery
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsquery(regconfig, text) is 'make tsquery';

create function pg_catalog.to_tsquery(text) returns tsquery
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsquery(text) is 'make tsquery';

create function pg_catalog.to_tsvector(json) returns tsvector
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsvector(json) is 'transform string values from json to tsvector';

create function pg_catalog.to_tsvector(jsonb) returns tsvector
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsvector(jsonb) is 'transform string values from jsonb to tsvector';

create function pg_catalog.to_tsvector(regconfig, json) returns tsvector
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsvector(regconfig, json) is 'transform string values from json to tsvector';

create function pg_catalog.to_tsvector(regconfig, jsonb) returns tsvector
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsvector(regconfig, jsonb) is 'transform string values from jsonb to tsvector';

create function pg_catalog.to_tsvector(regconfig, text) returns tsvector
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsvector(regconfig, text) is 'transform to tsvector';

create function pg_catalog.to_tsvector(text) returns tsvector
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.to_tsvector(text) is 'transform to tsvector';

create function pg_catalog.transaction_timestamp() returns timestamp with time zone
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.transaction_timestamp() is 'current transaction time';

create function pg_catalog.translate(text, text, text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.translate(text, text, text) is 'map a set of characters appearing in string';

create function pg_catalog.trigger_in(cstring) returns trigger
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trigger_in(cstring) is 'I/O';

create function pg_catalog.trigger_out(trigger) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trigger_out(trigger) is 'I/O';

create function pg_catalog.trunc(double precision) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trunc(double precision) is 'truncate to integer';

create function pg_catalog.trunc(macaddr) returns macaddr
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trunc(macaddr) is 'MACADDR manufacturer fields';

create function pg_catalog.trunc(macaddr8) returns macaddr8
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trunc(macaddr8) is 'MACADDR8 manufacturer fields';

create function pg_catalog.trunc(numeric) returns numeric
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trunc(numeric) is 'value truncated to ''scale'' of zero';

create function pg_catalog.trunc(numeric, integer) returns numeric
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.trunc(numeric, integer) is 'value truncated to ''scale''';

create function pg_catalog.ts_debug(config regconfig, document text, OUT alias text, OUT description text, OUT token text, OUT dictionaries regdictionary[], OUT dictionary regdictionary, OUT lexemes text[]) returns SETOF record
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_debug(out text, regconfig, out text, out regdictionary[], out regdictionary, text, out text[], out text) is 'debug function for text search configuration';

create function pg_catalog.ts_debug(document text, OUT alias text, OUT description text, OUT token text, OUT dictionaries regdictionary[], OUT dictionary regdictionary, OUT lexemes text[]) returns SETOF record
	stable
	strict
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_debug(out text, out text, out regdictionary[], out regdictionary, text, out text[], out text) is 'debug function for current text search configuration';

create function pg_catalog.ts_delete(tsvector, text) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_delete(tsvector, text) is 'delete lexeme';

create function pg_catalog.ts_delete(tsvector, text[]) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_delete(tsvector, text[]) is 'delete given lexemes';

create function pg_catalog.ts_filter(tsvector, "char"[]) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_filter(tsvector, "char"[]) is 'delete lexemes that do not have one of the given weights';

create function pg_catalog.ts_headline(json, tsquery) returns json
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(json, tsquery) is 'generate headline from json';

create function pg_catalog.ts_headline(json, tsquery, text) returns json
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(json, tsquery, text) is 'generate headline from json';

create function pg_catalog.ts_headline(jsonb, tsquery) returns jsonb
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(jsonb, tsquery) is 'generate headline from jsonb';

create function pg_catalog.ts_headline(jsonb, tsquery, text) returns jsonb
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(jsonb, tsquery, text) is 'generate headline from jsonb';

create function pg_catalog.ts_headline(regconfig, json, tsquery) returns json
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(regconfig, json, tsquery) is 'generate headline from json';

create function pg_catalog.ts_headline(regconfig, json, tsquery, text) returns json
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(regconfig, json, tsquery, text) is 'generate headline from json';

create function pg_catalog.ts_headline(regconfig, jsonb, tsquery) returns jsonb
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(regconfig, jsonb, tsquery) is 'generate headline from jsonb';

create function pg_catalog.ts_headline(regconfig, jsonb, tsquery, text) returns jsonb
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(regconfig, jsonb, tsquery, text) is 'generate headline from jsonb';

create function pg_catalog.ts_headline(regconfig, text, tsquery) returns text
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(regconfig, text, tsquery) is 'generate headline';

create function pg_catalog.ts_headline(regconfig, text, tsquery, text) returns text
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(regconfig, text, tsquery, text) is 'generate headline';

create function pg_catalog.ts_headline(text, tsquery) returns text
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(text, tsquery) is 'generate headline';

create function pg_catalog.ts_headline(text, tsquery, text) returns text
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_headline(text, tsquery, text) is 'generate headline';

create function pg_catalog.ts_lexize(regdictionary, text) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_lexize(regdictionary, text) is 'normalize one word by dictionary';

create function pg_catalog.ts_match_qv(tsquery, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_match_qv(tsquery, tsvector) is 'implementation of @@ operator';

create function pg_catalog.ts_match_tq(text, tsquery) returns boolean
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_match_tq(text, tsquery) is 'implementation of @@ operator';

create function pg_catalog.ts_match_tt(text, text) returns boolean
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_match_tt(text, text) is 'implementation of @@ operator';

create function pg_catalog.ts_match_vq(tsvector, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_match_vq(tsvector, tsquery) is 'implementation of @@ operator';

create function pg_catalog.ts_parse(parser_oid oid, out token text, out tokid integer, txt text) returns setof record
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_parse(oid, out text, out integer, text) is 'parse text to tokens';

create function pg_catalog.ts_parse(parser_name text, out token text, out tokid integer, txt text) returns setof record
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_parse(text, out text, out integer, text) is 'parse text to tokens';

create function pg_catalog.ts_rank(real[], tsvector, tsquery) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank(real[], tsvector, tsquery) is 'relevance';

create function pg_catalog.ts_rank(real[], tsvector, tsquery, integer) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank(real[], tsvector, tsquery, integer) is 'relevance';

create function pg_catalog.ts_rank(tsvector, tsquery) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank(tsvector, tsquery) is 'relevance';

create function pg_catalog.ts_rank(tsvector, tsquery, integer) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank(tsvector, tsquery, integer) is 'relevance';

create function pg_catalog.ts_rank_cd(real[], tsvector, tsquery) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank_cd(real[], tsvector, tsquery) is 'relevance';

create function pg_catalog.ts_rank_cd(real[], tsvector, tsquery, integer) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank_cd(real[], tsvector, tsquery, integer) is 'relevance';

create function pg_catalog.ts_rank_cd(tsvector, tsquery) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank_cd(tsvector, tsquery) is 'relevance';

create function pg_catalog.ts_rank_cd(tsvector, tsquery, integer) returns real
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rank_cd(tsvector, tsquery, integer) is 'relevance';

create function pg_catalog.ts_rewrite(tsquery, text) returns tsquery
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rewrite(tsquery, text) is 'rewrite tsquery';

create function pg_catalog.ts_rewrite(tsquery, tsquery, tsquery) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_rewrite(tsquery, tsquery, tsquery) is 'rewrite tsquery';

create function pg_catalog.ts_stat(out ndoc integer, out nentry integer, query text, out word text) returns setof record
	strict
	cost 10
	rows 10000
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_stat(out integer, out integer, text, out text) is 'statistics of tsvector column';

create function pg_catalog.ts_stat(out ndoc integer, out nentry integer, query text, weights text, out word text) returns setof record
	strict
	cost 10
	rows 10000
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_stat(out integer, out integer, text, text, out text) is 'statistics of tsvector column';

create function pg_catalog.ts_token_type(out alias text, out description text, parser_oid oid, out tokid integer) returns setof record
	immutable
	strict
	cost 1
	rows 16
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_token_type(out text, out text, oid, out integer) is 'get parser''s token types';

create function pg_catalog.ts_token_type(out alias text, out description text, parser_name text, out tokid integer) returns setof record
	stable
	strict
	cost 1
	rows 16
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_token_type(out text, out text, text, out integer) is 'get parser''s token types';

create function pg_catalog.ts_typanalyze(internal) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.ts_typanalyze(internal) is 'tsvector typanalyze';

create function pg_catalog.tsm_handler_in(cstring) returns tsm_handler
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsm_handler_in(cstring) is 'I/O';

create function pg_catalog.tsm_handler_out(tsm_handler) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsm_handler_out(tsm_handler) is 'I/O';

create function pg_catalog.tsmatchjoinsel(internal, oid, internal, smallint, internal) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsmatchjoinsel(internal, oid, internal, smallint, internal) is 'join selectivity of tsvector @@ tsquery';

create function pg_catalog.tsmatchsel(internal, oid, internal, integer) returns double precision
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsmatchsel(internal, oid, internal, integer) is 'restriction selectivity of tsvector @@ tsquery';

create function pg_catalog.tsq_mcontained(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsq_mcontained(tsquery, tsquery) is 'implementation of <@ operator';

create function pg_catalog.tsq_mcontains(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsq_mcontains(tsquery, tsquery) is 'implementation of @> operator';

create function pg_catalog.tsquery_and(tsquery, tsquery) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_and(tsquery, tsquery) is 'implementation of && operator';

create function pg_catalog.tsquery_cmp(tsquery, tsquery) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_cmp(tsquery, tsquery) is 'less-equal-greater';

create function pg_catalog.tsquery_eq(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_eq(tsquery, tsquery) is 'implementation of = operator';

create function pg_catalog.tsquery_ge(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_ge(tsquery, tsquery) is 'implementation of >= operator';

create function pg_catalog.tsquery_gt(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_gt(tsquery, tsquery) is 'implementation of > operator';

create function pg_catalog.tsquery_le(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_le(tsquery, tsquery) is 'implementation of <= operator';

create function pg_catalog.tsquery_lt(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_lt(tsquery, tsquery) is 'implementation of < operator';

create function pg_catalog.tsquery_ne(tsquery, tsquery) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_ne(tsquery, tsquery) is 'implementation of <> operator';

create function pg_catalog.tsquery_not(tsquery) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_not(tsquery) is 'implementation of !! operator';

create function pg_catalog.tsquery_or(tsquery, tsquery) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_or(tsquery, tsquery) is 'implementation of || operator';

create function pg_catalog.tsquery_phrase(tsquery, tsquery) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_phrase(tsquery, tsquery) is 'implementation of <-> operator';

create function pg_catalog.tsquery_phrase(tsquery, tsquery, integer) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquery_phrase(tsquery, tsquery, integer) is 'phrase-concatenate with distance';

create function pg_catalog.tsqueryin(cstring) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsqueryin(cstring) is 'I/O';

create function pg_catalog.tsqueryout(tsquery) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsqueryout(tsquery) is 'I/O';

create function pg_catalog.tsqueryrecv(internal) returns tsquery
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsqueryrecv(internal) is 'I/O';

create function pg_catalog.tsquerysend(tsquery) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsquerysend(tsquery) is 'I/O';

create function pg_catalog.tsrange(timestamp, timestamp) returns tsrange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsrange(timestamp, timestamp) is 'tsrange constructor';

create function pg_catalog.tsrange(timestamp, timestamp, text) returns tsrange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsrange(timestamp, timestamp, text) is 'tsrange constructor';

create function pg_catalog.tsrange_subdiff(timestamp, timestamp) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsrange_subdiff(timestamp, timestamp) is 'float8 difference of two timestamp values';

create function pg_catalog.tstzrange(timestamp with time zone, timestamp with time zone) returns tstzrange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tstzrange(timestamp with time zone, timestamp with time zone) is 'tstzrange constructor';

create function pg_catalog.tstzrange(timestamp with time zone, timestamp with time zone, text) returns tstzrange
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tstzrange(timestamp with time zone, timestamp with time zone, text) is 'tstzrange constructor';

create function pg_catalog.tstzrange_subdiff(timestamp with time zone, timestamp with time zone) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tstzrange_subdiff(timestamp with time zone, timestamp with time zone) is 'float8 difference of two timestamp with time zone values';

create function pg_catalog.tsvector_cmp(tsvector, tsvector) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_cmp(tsvector, tsvector) is 'less-equal-greater';

create function pg_catalog.tsvector_concat(tsvector, tsvector) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_concat(tsvector, tsvector) is 'implementation of || operator';

create function pg_catalog.tsvector_eq(tsvector, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_eq(tsvector, tsvector) is 'implementation of = operator';

create function pg_catalog.tsvector_ge(tsvector, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_ge(tsvector, tsvector) is 'implementation of >= operator';

create function pg_catalog.tsvector_gt(tsvector, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_gt(tsvector, tsvector) is 'implementation of > operator';

create function pg_catalog.tsvector_le(tsvector, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_le(tsvector, tsvector) is 'implementation of <= operator';

create function pg_catalog.tsvector_lt(tsvector, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_lt(tsvector, tsvector) is 'implementation of < operator';

create function pg_catalog.tsvector_ne(tsvector, tsvector) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_ne(tsvector, tsvector) is 'implementation of <> operator';

create function pg_catalog.tsvector_to_array(tsvector) returns text[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_to_array(tsvector) is 'convert tsvector to array of lexemes';

create function pg_catalog.tsvector_update_trigger() returns trigger
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_update_trigger() is 'trigger for automatic update of tsvector column';

create function pg_catalog.tsvector_update_trigger_column() returns trigger
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvector_update_trigger_column() is 'trigger for automatic update of tsvector column';

create function pg_catalog.tsvectorin(cstring) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvectorin(cstring) is 'I/O';

create function pg_catalog.tsvectorout(tsvector) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvectorout(tsvector) is 'I/O';

create function pg_catalog.tsvectorrecv(internal) returns tsvector
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvectorrecv(internal) is 'I/O';

create function pg_catalog.tsvectorsend(tsvector) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.tsvectorsend(tsvector) is 'I/O';

create function pg_catalog.txid_current() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_current() is 'get current transaction ID';

create function pg_catalog.txid_current_if_assigned() returns bigint
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_current_if_assigned() is 'get current transaction ID';

create function pg_catalog.txid_current_snapshot() returns txid_snapshot
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_current_snapshot() is 'get current snapshot';

create function pg_catalog.txid_snapshot_in(cstring) returns txid_snapshot
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_in(cstring) is 'I/O';

create function pg_catalog.txid_snapshot_out(txid_snapshot) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_out(txid_snapshot) is 'I/O';

create function pg_catalog.txid_snapshot_recv(internal) returns txid_snapshot
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_recv(internal) is 'I/O';

create function pg_catalog.txid_snapshot_send(txid_snapshot) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_send(txid_snapshot) is 'I/O';

create function pg_catalog.txid_snapshot_xip(txid_snapshot) returns setof bigint
	immutable
	strict
	cost 1
	rows 50
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_xip(txid_snapshot) is 'get set of in-progress txids in snapshot';

create function pg_catalog.txid_snapshot_xmax(txid_snapshot) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_xmax(txid_snapshot) is 'get xmax of snapshot';

create function pg_catalog.txid_snapshot_xmin(txid_snapshot) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_snapshot_xmin(txid_snapshot) is 'get xmin of snapshot';

create function pg_catalog.txid_status(bigint) returns text
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_status(bigint) is 'commit status of transaction';

create function pg_catalog.txid_visible_in_snapshot(bigint, txid_snapshot) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.txid_visible_in_snapshot(bigint, txid_snapshot) is 'is txid visible in snapshot?';

create function pg_catalog.uhc_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uhc_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for UHC to UTF8';

create function pg_catalog.unique_key_recheck() returns trigger
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unique_key_recheck() is 'deferred UNIQUE constraint check';

create function pg_catalog.unknownin(cstring) returns unknown
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unknownin(cstring) is 'I/O';

create function pg_catalog.unknownout(unknown) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unknownout(unknown) is 'I/O';

create function pg_catalog.unknownrecv(internal) returns unknown
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unknownrecv(internal) is 'I/O';

create function pg_catalog.unknownsend(unknown) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unknownsend(unknown) is 'I/O';

create function pg_catalog.unnest(anyarray) returns setof anyelement
	immutable
	strict
	cost 1
	rows 100
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unnest(anyarray) is 'expand array to set of rows';

create function pg_catalog.unnest(out lexeme text, out positions smallint[], tsvector tsvector, out weights text[]) returns setof record
	immutable
	strict
	cost 1
	rows 10
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.unnest(out text, out smallint[], tsvector, out text[]) is 'expand tsvector to set of rows';

create function pg_catalog.upper(anyrange) returns anyelement
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.upper(anyrange) is 'upper bound of range';

create function pg_catalog.upper(text) returns text
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.upper(text) is 'uppercase';

create function pg_catalog.upper_inc(anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.upper_inc(anyrange) is 'is the range''s upper bound inclusive?';

create function pg_catalog.upper_inf(anyrange) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.upper_inf(anyrange) is 'is the range''s upper bound infinite?';

create function pg_catalog.utf8_to_ascii(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_ascii(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to SQL_ASCII';

create function pg_catalog.utf8_to_big5(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_big5(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to BIG5';

create function pg_catalog.utf8_to_euc_cn(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_euc_cn(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to EUC_CN';

create function pg_catalog.utf8_to_euc_jis_2004(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_euc_jis_2004(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to EUC_JIS_2004';

create function pg_catalog.utf8_to_euc_jp(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_euc_jp(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to EUC_JP';

create function pg_catalog.utf8_to_euc_kr(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_euc_kr(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to EUC_KR';

create function pg_catalog.utf8_to_euc_tw(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_euc_tw(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to EUC_TW';

create function pg_catalog.utf8_to_gb18030(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_gb18030(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to GB18030';

create function pg_catalog.utf8_to_gbk(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_gbk(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to GBK';

create function pg_catalog.utf8_to_iso8859(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_iso8859(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to ISO-8859 2-16';

create function pg_catalog.utf8_to_iso8859_1(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_iso8859_1(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to LATIN1';

create function pg_catalog.utf8_to_johab(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_johab(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to JOHAB';

create function pg_catalog.utf8_to_koi8r(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_koi8r(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to KOI8R';

create function pg_catalog.utf8_to_koi8u(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_koi8u(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to KOI8U';

create function pg_catalog.utf8_to_shift_jis_2004(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_shift_jis_2004(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to SHIFT_JIS_2004';

create function pg_catalog.utf8_to_sjis(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_sjis(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to SJIS';

create function pg_catalog.utf8_to_uhc(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_uhc(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to UHC';

create function pg_catalog.utf8_to_win(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.utf8_to_win(integer, integer, cstring, internal, integer) is 'internal conversion function for UTF8 to WIN';

create function pg_catalog.uuid_cmp(uuid, uuid) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_cmp(uuid, uuid) is 'less-equal-greater';

create function pg_catalog.uuid_eq(uuid, uuid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_eq(uuid, uuid) is 'implementation of = operator';

create function pg_catalog.uuid_ge(uuid, uuid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_ge(uuid, uuid) is 'implementation of >= operator';

create function pg_catalog.uuid_gt(uuid, uuid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_gt(uuid, uuid) is 'implementation of > operator';

create function pg_catalog.uuid_hash(uuid) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_hash(uuid) is 'hash';

create function pg_catalog.uuid_hash_extended(uuid, bigint) returns bigint
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_hash_extended(uuid, bigint) is 'hash';

create function pg_catalog.uuid_in(cstring) returns uuid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_in(cstring) is 'I/O';

create function pg_catalog.uuid_le(uuid, uuid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_le(uuid, uuid) is 'implementation of <= operator';

create function pg_catalog.uuid_lt(uuid, uuid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_lt(uuid, uuid) is 'implementation of < operator';

create function pg_catalog.uuid_ne(uuid, uuid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_ne(uuid, uuid) is 'implementation of <> operator';

create function pg_catalog.uuid_out(uuid) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_out(uuid) is 'I/O';

create function pg_catalog.uuid_recv(internal) returns uuid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_recv(internal) is 'I/O';

create function pg_catalog.uuid_send(uuid) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_send(uuid) is 'I/O';

create function pg_catalog.uuid_sortsupport(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.uuid_sortsupport(internal) is 'sort support';

create function pg_catalog.varbit(bit varying, integer, boolean) returns bit varying
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbit(bit varying, integer, boolean) is 'adjust varbit() to typmod length';

create function pg_catalog.varbit_in(cstring, oid, integer) returns bit varying
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbit_in(cstring, oid, integer) is 'I/O';

create function pg_catalog.varbit_out(bit varying) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbit_out(bit varying) is 'I/O';

create function pg_catalog.varbit_recv(internal, oid, integer) returns bit varying
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbit_recv(internal, oid, integer) is 'I/O';

create function pg_catalog.varbit_send(bit varying) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbit_send(bit varying) is 'I/O';

create function pg_catalog.varbit_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbit_support(internal) is 'planner support for varbit length coercion';

create function pg_catalog.varbitcmp(bit varying, bit varying) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbitcmp(bit varying, bit varying) is 'less-equal-greater';

create function pg_catalog.varbiteq(bit varying, bit varying) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbiteq(bit varying, bit varying) is 'implementation of = operator';

create function pg_catalog.varbitge(bit varying, bit varying) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbitge(bit varying, bit varying) is 'implementation of >= operator';

create function pg_catalog.varbitgt(bit varying, bit varying) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbitgt(bit varying, bit varying) is 'implementation of > operator';

create function pg_catalog.varbitle(bit varying, bit varying) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbitle(bit varying, bit varying) is 'implementation of <= operator';

create function pg_catalog.varbitlt(bit varying, bit varying) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbitlt(bit varying, bit varying) is 'implementation of < operator';

create function pg_catalog.varbitne(bit varying, bit varying) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbitne(bit varying, bit varying) is 'implementation of <> operator';

create function pg_catalog.varbittypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbittypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.varbittypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varbittypmodout(integer) is 'I/O typmod';

create function pg_catalog.varchar(name) returns varchar
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varchar(name) is 'convert name to varchar';

create function pg_catalog.varchar(varchar, integer, boolean) returns varchar
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varchar(varchar, integer, boolean) is 'adjust varchar() to typmod length';

create function pg_catalog.varchar_support(internal) returns internal
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varchar_support(internal) is 'planner support for varchar length coercion';

create function pg_catalog.varcharin(cstring, oid, integer) returns varchar
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varcharin(cstring, oid, integer) is 'I/O';

create function pg_catalog.varcharout(varchar) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varcharout(varchar) is 'I/O';

create function pg_catalog.varcharrecv(internal, oid, integer) returns varchar
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varcharrecv(internal, oid, integer) is 'I/O';

create function pg_catalog.varcharsend(varchar) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varcharsend(varchar) is 'I/O';

create function pg_catalog.varchartypmodin(cstring[]) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varchartypmodin(cstring[]) is 'I/O typmod';

create function pg_catalog.varchartypmodout(integer) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.varchartypmodout(integer) is 'I/O typmod';

create function pg_catalog.version() returns text
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.version() is 'PostgreSQL version string';

create function pg_catalog.void_in(cstring) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.void_in(cstring) is 'I/O';

create function pg_catalog.void_out(void) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.void_out(void) is 'I/O';

create function pg_catalog.void_recv(internal) returns void
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.void_recv(internal) is 'I/O';

create function pg_catalog.void_send(void) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.void_send(void) is 'I/O';

create function pg_catalog.websearch_to_tsquery(regconfig, text) returns tsquery
	immutable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.websearch_to_tsquery(regconfig, text) is 'transform to tsquery';

create function pg_catalog.websearch_to_tsquery(text) returns tsquery
	stable
	strict
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.websearch_to_tsquery(text) is 'transform to tsquery';

create function pg_catalog.width(box) returns double precision
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.width(box) is 'box width';

create function pg_catalog.width_bucket(anyelement, anyarray) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.width_bucket(anyelement, anyarray) is 'bucket number of operand given a sorted array of bucket lower bounds';

create function pg_catalog.width_bucket(double precision, double precision, double precision, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.width_bucket(double precision, double precision, double precision, integer) is 'bucket number of operand in equal-width histogram';

create function pg_catalog.width_bucket(numeric, numeric, numeric, integer) returns integer
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.width_bucket(numeric, numeric, numeric, integer) is 'bucket number of operand in equal-width histogram';

create function pg_catalog.win1250_to_latin2(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win1250_to_latin2(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN1250 to LATIN2';

create function pg_catalog.win1250_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win1250_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN1250 to MULE_INTERNAL';

create function pg_catalog.win1251_to_iso(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win1251_to_iso(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN1251 to ISO-8859-5';

create function pg_catalog.win1251_to_koi8r(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win1251_to_koi8r(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN1251 to KOI8R';

create function pg_catalog.win1251_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win1251_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN1251 to MULE_INTERNAL';

create function pg_catalog.win1251_to_win866(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win1251_to_win866(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN1251 to WIN866';

create function pg_catalog.win866_to_iso(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win866_to_iso(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN866 to ISO-8859-5';

create function pg_catalog.win866_to_koi8r(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win866_to_koi8r(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN866 to KOI8R';

create function pg_catalog.win866_to_mic(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win866_to_mic(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN866 to MULE_INTERNAL';

create function pg_catalog.win866_to_win1251(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win866_to_win1251(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN866 to WIN1251';

create function pg_catalog.win_to_utf8(integer, integer, cstring, internal, integer) returns void
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.win_to_utf8(integer, integer, cstring, internal, integer) is 'internal conversion function for WIN to UTF8';

create function pg_catalog.xideq(xid, xid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xideq(xid, xid) is 'implementation of = operator';

create function pg_catalog.xideqint4(xid, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xideqint4(xid, integer) is 'implementation of = operator';

create function pg_catalog.xidin(cstring) returns xid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xidin(cstring) is 'I/O';

create function pg_catalog.xidneq(xid, xid) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xidneq(xid, xid) is 'implementation of <> operator';

create function pg_catalog.xidneqint4(xid, integer) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xidneqint4(xid, integer) is 'implementation of <> operator';

create function pg_catalog.xidout(xid) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xidout(xid) is 'I/O';

create function pg_catalog.xidrecv(internal) returns xid
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xidrecv(internal) is 'I/O';

create function pg_catalog.xidsend(xid) returns bytea
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xidsend(xid) is 'I/O';

create function pg_catalog.xml(text) returns xml
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml(text) is 'perform a non-validating parse of a character string to produce an XML value';

create function pg_catalog.xml_in(cstring) returns xml
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_in(cstring) is 'I/O';

create function pg_catalog.xml_is_well_formed(text) returns boolean
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_is_well_formed(text) is 'determine if a string is well formed XML';

create function pg_catalog.xml_is_well_formed_content(text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_is_well_formed_content(text) is 'determine if a string is well formed XML content';

create function pg_catalog.xml_is_well_formed_document(text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_is_well_formed_document(text) is 'determine if a string is well formed XML document';

create function pg_catalog.xml_out(xml) returns cstring
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_out(xml) is 'I/O';

create function pg_catalog.xml_recv(internal) returns xml
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_recv(internal) is 'I/O';

create function pg_catalog.xml_send(xml) returns bytea
	stable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xml_send(xml) is 'I/O';

create function pg_catalog.xmlcomment(text) returns xml
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xmlcomment(text) is 'generate XML comment';

create function pg_catalog.xmlconcat2(xml, xml) returns xml
	immutable
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xmlconcat2(xml, xml) is 'aggregate transition function';

create function pg_catalog.xmlexists(text, xml) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xmlexists(text, xml) is 'test XML value against XPath expression';

create function pg_catalog.xmlvalidate(xml, text) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xmlvalidate(xml, text) is 'validate an XML value';

create function pg_catalog.xpath(text, xml) returns xml[]
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xpath(text, xml) is 'evaluate XPath expression';

create function pg_catalog.xpath(text, xml, text[]) returns xml[]
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xpath(text, xml, text[]) is 'evaluate XPath expression, with namespaces support';

create function pg_catalog.xpath_exists(text, xml) returns boolean
	immutable
	strict
	cost 1
	language sql
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xpath_exists(text, xml) is 'test XML value against XPath expression';

create function pg_catalog.xpath_exists(text, xml, text[]) returns boolean
	immutable
	strict
	cost 1
	language internal
as $$
begin
-- missing source code
end;
$$;

comment on function pg_catalog.xpath_exists(text, xml, text[]) is 'test XML value against XPath expression, with namespace support';

create operator pg_catalog.!! (procedure = numeric_fac, rightarg = bigint);

comment on operator pg_catalog.!!(none , bigint) is 'deprecated, use ! instead';

create operator pg_catalog.!! (procedure = tsquery_not, rightarg = tsquery);

comment on operator pg_catalog.!!(none , tsquery) is 'NOT tsquery';

create operator pg_catalog.! (procedure = numeric_fac, leftarg = bigint);

comment on operator pg_catalog.!(bigint , none) is 'factorial';

create operator pg_catalog.!~ (procedure = bpcharregexne, leftarg = char, rightarg = text);

comment on operator pg_catalog.!~(char , text) is 'does not match regular expression, case-sensitive';

create operator pg_catalog.!~ (procedure = nameregexne, leftarg = name, rightarg = text);

comment on operator pg_catalog.!~(name , text) is 'does not match regular expression, case-sensitive';

create operator pg_catalog.!~ (procedure = textregexne, leftarg = text, rightarg = text);

comment on operator pg_catalog.!~(text , text) is 'does not match regular expression, case-sensitive';

create operator pg_catalog.!~* (procedure = bpcharicregexne, leftarg = char, rightarg = text);

comment on operator pg_catalog.!~*(char , text) is 'does not match regular expression, case-insensitive';

create operator pg_catalog.!~* (procedure = nameicregexne, leftarg = name, rightarg = text);

comment on operator pg_catalog.!~*(name , text) is 'does not match regular expression, case-insensitive';

create operator pg_catalog.!~* (procedure = texticregexne, leftarg = text, rightarg = text);

comment on operator pg_catalog.!~*(text , text) is 'does not match regular expression, case-insensitive';

create operator pg_catalog.!~~ (procedure = byteanlike, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.!~~(bytea , bytea) is 'does not match LIKE expression';

create operator pg_catalog.!~~ (procedure = bpcharnlike, leftarg = char, rightarg = text);

comment on operator pg_catalog.!~~(char , text) is 'does not match LIKE expression';

create operator pg_catalog.!~~ (procedure = namenlike, leftarg = name, rightarg = text);

comment on operator pg_catalog.!~~(name , text) is 'does not match LIKE expression';

create operator pg_catalog.!~~ (procedure = textnlike, leftarg = text, rightarg = text);

comment on operator pg_catalog.!~~(text , text) is 'does not match LIKE expression';

create operator pg_catalog.!~~* (procedure = bpcharicnlike, leftarg = char, rightarg = text);

comment on operator pg_catalog.!~~*(char , text) is 'does not match LIKE expression, case-insensitive';

create operator pg_catalog.!~~* (procedure = nameicnlike, leftarg = name, rightarg = text);

comment on operator pg_catalog.!~~*(name , text) is 'does not match LIKE expression, case-insensitive';

create operator pg_catalog.!~~* (procedure = texticnlike, leftarg = text, rightarg = text);

comment on operator pg_catalog.!~~*(text , text) is 'does not match LIKE expression, case-insensitive';

create operator pg_catalog.## (procedure = close_lb, leftarg = line, rightarg = box);

comment on operator pg_catalog.##(line , box) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_ls, leftarg = line, rightarg = lseg);

comment on operator pg_catalog.##(line , lseg) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_sb, leftarg = lseg, rightarg = box);

comment on operator pg_catalog.##(lseg , box) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_sl, leftarg = lseg, rightarg = line);

comment on operator pg_catalog.##(lseg , line) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_lseg, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.##(lseg , lseg) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_pb, leftarg = point, rightarg = box);

comment on operator pg_catalog.##(point , box) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_pl, leftarg = point, rightarg = line);

comment on operator pg_catalog.##(point , line) is 'closest point to A on B';

create operator pg_catalog.## (procedure = close_ps, leftarg = point, rightarg = lseg);

comment on operator pg_catalog.##(point , lseg) is 'closest point to A on B';

create operator pg_catalog.# (procedure = int8xor, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.#(bigint , bigint) is 'bitwise exclusive or';

create operator pg_catalog.# (procedure = bitxor, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.#(bit , bit) is 'bitwise exclusive or';

create operator pg_catalog.# (procedure = box_intersect, leftarg = box, rightarg = box);

comment on operator pg_catalog.#(box , box) is 'box intersection';

create operator pg_catalog.# (procedure = int4xor, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.#(integer , integer) is 'bitwise exclusive or';

create operator pg_catalog.# (procedure = line_interpt, leftarg = line, rightarg = line);

comment on operator pg_catalog.#(line , line) is 'intersection point';

create operator pg_catalog.# (procedure = lseg_interpt, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.#(lseg , lseg) is 'intersection point';

create operator pg_catalog.# (procedure = int2xor, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.#(smallint , smallint) is 'bitwise exclusive or';

create operator pg_catalog.# (procedure = path_npoints, rightarg = path);

comment on operator pg_catalog.#(none , path) is 'number of points';

create operator pg_catalog.# (procedure = poly_npoints, rightarg = polygon);

comment on operator pg_catalog.#(none , polygon) is 'number of points';

create operator pg_catalog.#- (procedure = jsonb_delete_path, leftarg = jsonb, rightarg = text[]);

comment on operator pg_catalog.#-(jsonb , text[]) is 'delete path';

create operator pg_catalog.#> (procedure = json_extract_path, leftarg = json, rightarg = text[]);

comment on operator pg_catalog.#>(json , text[]) is 'get value from json with path elements';

create operator pg_catalog.#> (procedure = jsonb_extract_path, leftarg = jsonb, rightarg = text[]);

comment on operator pg_catalog.#>(jsonb , text[]) is 'get value from jsonb with path elements';

create operator pg_catalog.#>> (procedure = json_extract_path_text, leftarg = json, rightarg = text[]);

comment on operator pg_catalog.#>>(json , text[]) is 'get value from json as text with path elements';

create operator pg_catalog.#>> (procedure = jsonb_extract_path_text, leftarg = jsonb, rightarg = text[]);

comment on operator pg_catalog.#>>(jsonb , text[]) is 'get value from jsonb as text with path elements';

create operator pg_catalog.% (procedure = int8mod, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.%(bigint , bigint) is 'modulus';

create operator pg_catalog.% (procedure = int4mod, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.%(integer , integer) is 'modulus';

create operator pg_catalog.% (procedure = numeric_mod, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.%(numeric , numeric) is 'modulus';

create operator pg_catalog.% (procedure = int2mod, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.%(smallint , smallint) is 'modulus';

create operator pg_catalog.&& (procedure = arrayoverlap, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.&&(anyarray , anyarray) is 'overlaps';

create operator pg_catalog.&& (procedure = range_overlaps, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.&&(anyrange , anyrange) is 'overlaps';

create operator pg_catalog.&& (procedure = box_overlap, leftarg = box, rightarg = box);

comment on operator pg_catalog.&&(box , box) is 'overlaps';

create operator pg_catalog.&& (procedure = circle_overlap, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.&&(circle , circle) is 'overlaps';

create operator pg_catalog.&& (procedure = network_overlap, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.&&(inet , inet) is 'overlaps (is subnet or supernet)';

create operator pg_catalog.&& (procedure = poly_overlap, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.&&(polygon , polygon) is 'overlaps';

create operator pg_catalog.&& (procedure = tsquery_and, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.&&(tsquery , tsquery) is 'AND-concatenate';

create operator pg_catalog.& (procedure = int8and, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.&(bigint , bigint) is 'bitwise and';

create operator pg_catalog.& (procedure = bitand, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.&(bit , bit) is 'bitwise and';

create operator pg_catalog.& (procedure = inetand, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.&(inet , inet) is 'bitwise and';

create operator pg_catalog.& (procedure = int4and, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.&(integer , integer) is 'bitwise and';

create operator pg_catalog.& (procedure = macaddr_and, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.&(macaddr , macaddr) is 'bitwise and';

create operator pg_catalog.& (procedure = macaddr8_and, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.&(macaddr8 , macaddr8) is 'bitwise and';

create operator pg_catalog.& (procedure = int2and, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.&(smallint , smallint) is 'bitwise and';

create operator pg_catalog.&< (procedure = range_overleft, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.&<(anyrange , anyrange) is 'overlaps or is left of';

create operator pg_catalog.&< (procedure = box_overleft, leftarg = box, rightarg = box);

comment on operator pg_catalog.&<(box , box) is 'overlaps or is left of';

create operator pg_catalog.&< (procedure = circle_overleft, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.&<(circle , circle) is 'overlaps or is left of';

create operator pg_catalog.&< (procedure = poly_overleft, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.&<(polygon , polygon) is 'overlaps or is left of';

create operator pg_catalog.&<| (procedure = box_overbelow, leftarg = box, rightarg = box);

comment on operator pg_catalog.&<|(box , box) is 'overlaps or is below';

create operator pg_catalog.&<| (procedure = circle_overbelow, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.&<|(circle , circle) is 'overlaps or is below';

create operator pg_catalog.&<| (procedure = poly_overbelow, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.&<|(polygon , polygon) is 'overlaps or is below';

create operator pg_catalog.&> (procedure = range_overright, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.&>(anyrange , anyrange) is 'overlaps or is right of';

create operator pg_catalog.&> (procedure = box_overright, leftarg = box, rightarg = box);

comment on operator pg_catalog.&>(box , box) is 'overlaps or is right of';

create operator pg_catalog.&> (procedure = circle_overright, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.&>(circle , circle) is 'overlaps or is right of';

create operator pg_catalog.&> (procedure = poly_overright, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.&>(polygon , polygon) is 'overlaps or is right of';

create operator pg_catalog.* (procedure = range_intersect, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.*(anyrange , anyrange) is 'range intersection';

create operator pg_catalog.* (procedure = int8mul, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.*(bigint , bigint) is 'multiply';

create operator pg_catalog.* (procedure = int84mul, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.*(bigint , integer) is 'multiply';

create operator pg_catalog.* (procedure = int8_mul_cash, leftarg = bigint, rightarg = money);

comment on operator pg_catalog.*(bigint , money) is 'multiply';

create operator pg_catalog.* (procedure = int82mul, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.*(bigint , smallint) is 'multiply';

create operator pg_catalog.* (procedure = box_mul, leftarg = box, rightarg = point);

comment on operator pg_catalog.*(box , point) is 'multiply box by point (scale)';

create operator pg_catalog.* (procedure = circle_mul_pt, leftarg = circle, rightarg = point);

comment on operator pg_catalog.*(circle , point) is 'multiply';

create operator pg_catalog.* (procedure = float8mul, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.*(double precision , double precision) is 'multiply';

create operator pg_catalog.* (procedure = mul_d_interval, leftarg = double precision, rightarg = interval);

comment on operator pg_catalog.*(double precision , interval) is 'multiply';

create operator pg_catalog.* (procedure = flt8_mul_cash, leftarg = double precision, rightarg = money);

comment on operator pg_catalog.*(double precision , money) is 'multiply';

create operator pg_catalog.* (procedure = float84mul, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.*(double precision , real) is 'multiply';

create operator pg_catalog.* (procedure = int48mul, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.*(integer , bigint) is 'multiply';

create operator pg_catalog.* (procedure = int4mul, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.*(integer , integer) is 'multiply';

create operator pg_catalog.* (procedure = int4_mul_cash, leftarg = integer, rightarg = money);

comment on operator pg_catalog.*(integer , money) is 'multiply';

create operator pg_catalog.* (procedure = int42mul, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.*(integer , smallint) is 'multiply';

create operator pg_catalog.* (procedure = interval_mul, leftarg = interval, rightarg = double precision);

comment on operator pg_catalog.*(interval , double precision) is 'multiply';

create operator pg_catalog.* (procedure = cash_mul_int8, leftarg = money, rightarg = bigint);

comment on operator pg_catalog.*(money , bigint) is 'multiply';

create operator pg_catalog.* (procedure = cash_mul_flt8, leftarg = money, rightarg = double precision);

comment on operator pg_catalog.*(money , double precision) is 'multiply';

create operator pg_catalog.* (procedure = cash_mul_int4, leftarg = money, rightarg = integer);

comment on operator pg_catalog.*(money , integer) is 'multiply';

create operator pg_catalog.* (procedure = cash_mul_flt4, leftarg = money, rightarg = real);

comment on operator pg_catalog.*(money , real) is 'multiply';

create operator pg_catalog.* (procedure = cash_mul_int2, leftarg = money, rightarg = smallint);

comment on operator pg_catalog.*(money , smallint) is 'multiply';

create operator pg_catalog.* (procedure = numeric_mul, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.*(numeric , numeric) is 'multiply';

create operator pg_catalog.* (procedure = path_mul_pt, leftarg = path, rightarg = point);

comment on operator pg_catalog.*(path , point) is 'multiply (rotate/scale path)';

create operator pg_catalog.* (procedure = point_mul, leftarg = point, rightarg = point);

comment on operator pg_catalog.*(point , point) is 'multiply points (scale/rotate)';

create operator pg_catalog.* (procedure = float48mul, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.*(real , double precision) is 'multiply';

create operator pg_catalog.* (procedure = flt4_mul_cash, leftarg = real, rightarg = money);

comment on operator pg_catalog.*(real , money) is 'multiply';

create operator pg_catalog.* (procedure = float4mul, leftarg = real, rightarg = real);

comment on operator pg_catalog.*(real , real) is 'multiply';

create operator pg_catalog.* (procedure = int28mul, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.*(smallint , bigint) is 'multiply';

create operator pg_catalog.* (procedure = int24mul, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.*(smallint , integer) is 'multiply';

create operator pg_catalog.* (procedure = int2_mul_cash, leftarg = smallint, rightarg = money);

comment on operator pg_catalog.*(smallint , money) is 'multiply';

create operator pg_catalog.* (procedure = int2mul, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.*(smallint , smallint) is 'multiply';

create operator pg_catalog.*< (procedure = record_image_lt, leftarg = record, rightarg = record);

comment on operator pg_catalog.*<(record , record) is 'less than';

create operator pg_catalog.*<= (procedure = record_image_le, leftarg = record, rightarg = record);

comment on operator pg_catalog.*<=(record , record) is 'less than or equal';

create operator pg_catalog.*<> (procedure = record_image_ne, leftarg = record, rightarg = record);

comment on operator pg_catalog.*<>(record , record) is 'not identical';

create operator pg_catalog.*= (procedure = record_image_eq, leftarg = record, rightarg = record);

comment on operator pg_catalog.*=(record , record) is 'identical';

create operator pg_catalog.*> (procedure = record_image_gt, leftarg = record, rightarg = record);

comment on operator pg_catalog.*>(record , record) is 'greater than';

create operator pg_catalog.*>= (procedure = record_image_ge, leftarg = record, rightarg = record);

comment on operator pg_catalog.*>=(record , record) is 'greater than or equal';

create operator pg_catalog.+ (procedure = aclinsert, leftarg = aclitem[], rightarg = aclitem);

comment on operator pg_catalog.+(aclitem[] , aclitem) is 'add/update ACL item';

create operator pg_catalog.+ (procedure = range_union, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.+(anyrange , anyrange) is 'range union';

create operator pg_catalog.+ (procedure = int8pl, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.+(bigint , bigint) is 'add';

create operator pg_catalog.+ (procedure = int8pl_inet, leftarg = bigint, rightarg = inet);

comment on operator pg_catalog.+(bigint , inet) is 'add';

create operator pg_catalog.+ (procedure = int84pl, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.+(bigint , integer) is 'add';

create operator pg_catalog.+ (procedure = int82pl, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.+(bigint , smallint) is 'add';

create operator pg_catalog.+ (procedure = box_add, leftarg = box, rightarg = point);

comment on operator pg_catalog.+(box , point) is 'add point to box (translate)';

create operator pg_catalog.+ (procedure = circle_add_pt, leftarg = circle, rightarg = point);

comment on operator pg_catalog.+(circle , point) is 'add';

create operator pg_catalog.+ (procedure = date_pli, leftarg = date, rightarg = integer);

comment on operator pg_catalog.+(date , integer) is 'add';

create operator pg_catalog.+ (procedure = date_pl_interval, leftarg = date, rightarg = interval);

comment on operator pg_catalog.+(date , interval) is 'add';

create operator pg_catalog.+ (procedure = datetimetz_pl, leftarg = date, rightarg = time with time zone);

comment on operator pg_catalog.+(date , time with time zone) is 'convert date and time with time zone to timestamp with time zone';

create operator pg_catalog.+ (procedure = datetime_pl, leftarg = date, rightarg = time);

comment on operator pg_catalog.+(date , time) is 'convert date and time to timestamp';

create operator pg_catalog.+ (procedure = float8pl, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.+(double precision , double precision) is 'add';

create operator pg_catalog.+ (procedure = float84pl, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.+(double precision , real) is 'add';

create operator pg_catalog.+ (procedure = inetpl, leftarg = inet, rightarg = bigint);

comment on operator pg_catalog.+(inet , bigint) is 'add';

create operator pg_catalog.+ (procedure = int48pl, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.+(integer , bigint) is 'add';

create operator pg_catalog.+ (procedure = integer_pl_date, leftarg = integer, rightarg = date);

comment on operator pg_catalog.+(integer , date) is 'add';

create operator pg_catalog.+ (procedure = int4pl, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.+(integer , integer) is 'add';

create operator pg_catalog.+ (procedure = int42pl, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.+(integer , smallint) is 'add';

create operator pg_catalog.+ (procedure = interval_pl_date, leftarg = interval, rightarg = date);

comment on operator pg_catalog.+(interval , date) is 'add';

create operator pg_catalog.+ (procedure = interval_pl, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.+(interval , interval) is 'add';

create operator pg_catalog.+ (procedure = interval_pl_timetz, leftarg = interval, rightarg = time with time zone);

comment on operator pg_catalog.+(interval , time with time zone) is 'add';

create operator pg_catalog.+ (procedure = interval_pl_time, leftarg = interval, rightarg = time);

comment on operator pg_catalog.+(interval , time) is 'add';

create operator pg_catalog.+ (procedure = interval_pl_timestamptz, leftarg = interval, rightarg = timestamp with time zone);

comment on operator pg_catalog.+(interval , timestamp with time zone) is 'add';

create operator pg_catalog.+ (procedure = interval_pl_timestamp, leftarg = interval, rightarg = timestamp);

comment on operator pg_catalog.+(interval , timestamp) is 'add';

create operator pg_catalog.+ (procedure = cash_pl, leftarg = money, rightarg = money);

comment on operator pg_catalog.+(money , money) is 'add';

create operator pg_catalog.+ (procedure = numeric_add, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.+(numeric , numeric) is 'add';

create operator pg_catalog.+ (procedure = path_add, leftarg = path, rightarg = path);

comment on operator pg_catalog.+(path , path) is 'concatenate';

create operator pg_catalog.+ (procedure = path_add_pt, leftarg = path, rightarg = point);

comment on operator pg_catalog.+(path , point) is 'add (translate path)';

create operator pg_catalog.+ (procedure = point_add, leftarg = point, rightarg = point);

comment on operator pg_catalog.+(point , point) is 'add points (translate)';

create operator pg_catalog.+ (procedure = float48pl, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.+(real , double precision) is 'add';

create operator pg_catalog.+ (procedure = float4pl, leftarg = real, rightarg = real);

comment on operator pg_catalog.+(real , real) is 'add';

create operator pg_catalog.+ (procedure = int28pl, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.+(smallint , bigint) is 'add';

create operator pg_catalog.+ (procedure = int24pl, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.+(smallint , integer) is 'add';

create operator pg_catalog.+ (procedure = int2pl, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.+(smallint , smallint) is 'add';

create operator pg_catalog.+ (procedure = timetzdate_pl, leftarg = time with time zone, rightarg = date);

comment on operator pg_catalog.+(time with time zone , date) is 'convert time with time zone and date to timestamp with time zone';

create operator pg_catalog.+ (procedure = timetz_pl_interval, leftarg = time with time zone, rightarg = interval);

comment on operator pg_catalog.+(time with time zone , interval) is 'add';

create operator pg_catalog.+ (procedure = timedate_pl, leftarg = time, rightarg = date);

comment on operator pg_catalog.+(time , date) is 'convert time and date to timestamp';

create operator pg_catalog.+ (procedure = time_pl_interval, leftarg = time, rightarg = interval);

comment on operator pg_catalog.+(time , interval) is 'add';

create operator pg_catalog.+ (procedure = timestamptz_pl_interval, leftarg = timestamp with time zone, rightarg = interval);

comment on operator pg_catalog.+(timestamp with time zone , interval) is 'add';

create operator pg_catalog.+ (procedure = timestamp_pl_interval, leftarg = timestamp, rightarg = interval);

comment on operator pg_catalog.+(timestamp , interval) is 'add';

create operator pg_catalog.+ (procedure = int8up, rightarg = bigint);

comment on operator pg_catalog.+(none , bigint) is 'unary plus';

create operator pg_catalog.+ (procedure = float8up, rightarg = double precision);

comment on operator pg_catalog.+(none , double precision) is 'unary plus';

create operator pg_catalog.+ (procedure = int4up, rightarg = integer);

comment on operator pg_catalog.+(none , integer) is 'unary plus';

create operator pg_catalog.+ (procedure = numeric_uplus, rightarg = numeric);

comment on operator pg_catalog.+(none , numeric) is 'unary plus';

create operator pg_catalog.+ (procedure = float4up, rightarg = real);

comment on operator pg_catalog.+(none , real) is 'unary plus';

create operator pg_catalog.+ (procedure = int2up, rightarg = smallint);

comment on operator pg_catalog.+(none , smallint) is 'unary plus';

create operator pg_catalog.- (procedure = aclremove, leftarg = aclitem[], rightarg = aclitem);

comment on operator pg_catalog.-(aclitem[] , aclitem) is 'remove ACL item';

create operator pg_catalog.- (procedure = range_minus, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.-(anyrange , anyrange) is 'range difference';

create operator pg_catalog.- (procedure = int8mi, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.-(bigint , bigint) is 'subtract';

create operator pg_catalog.- (procedure = int84mi, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.-(bigint , integer) is 'subtract';

create operator pg_catalog.- (procedure = int82mi, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.-(bigint , smallint) is 'subtract';

create operator pg_catalog.- (procedure = box_sub, leftarg = box, rightarg = point);

comment on operator pg_catalog.-(box , point) is 'subtract point from box (translate)';

create operator pg_catalog.- (procedure = circle_sub_pt, leftarg = circle, rightarg = point);

comment on operator pg_catalog.-(circle , point) is 'subtract';

create operator pg_catalog.- (procedure = date_mi, leftarg = date, rightarg = date);

comment on operator pg_catalog.-(date , date) is 'subtract';

create operator pg_catalog.- (procedure = date_mii, leftarg = date, rightarg = integer);

comment on operator pg_catalog.-(date , integer) is 'subtract';

create operator pg_catalog.- (procedure = date_mi_interval, leftarg = date, rightarg = interval);

comment on operator pg_catalog.-(date , interval) is 'subtract';

create operator pg_catalog.- (procedure = float8mi, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.-(double precision , double precision) is 'subtract';

create operator pg_catalog.- (procedure = float84mi, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.-(double precision , real) is 'subtract';

create operator pg_catalog.- (procedure = inetmi_int8, leftarg = inet, rightarg = bigint);

comment on operator pg_catalog.-(inet , bigint) is 'subtract';

create operator pg_catalog.- (procedure = inetmi, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.-(inet , inet) is 'subtract';

create operator pg_catalog.- (procedure = int48mi, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.-(integer , bigint) is 'subtract';

create operator pg_catalog.- (procedure = int4mi, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.-(integer , integer) is 'subtract';

create operator pg_catalog.- (procedure = int42mi, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.-(integer , smallint) is 'subtract';

create operator pg_catalog.- (procedure = interval_mi, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.-(interval , interval) is 'subtract';

create operator pg_catalog.- (procedure = "pg_catalog.jsonb_delete", leftarg = jsonb, rightarg = integer);

comment on operator pg_catalog.-(jsonb , integer) is 'delete array element';

create operator pg_catalog.- (procedure = "pg_catalog.jsonb_delete", leftarg = jsonb, rightarg = text);

comment on operator pg_catalog.-(jsonb , text) is 'delete object field';

create operator pg_catalog.- (procedure = "pg_catalog.jsonb_delete", leftarg = jsonb, rightarg = text[]);

comment on operator pg_catalog.-(jsonb , text[]) is 'delete object fields';

create operator pg_catalog.- (procedure = cash_mi, leftarg = money, rightarg = money);

comment on operator pg_catalog.-(money , money) is 'subtract';

create operator pg_catalog.- (procedure = numeric_sub, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.-(numeric , numeric) is 'subtract';

create operator pg_catalog.- (procedure = path_sub_pt, leftarg = path, rightarg = point);

comment on operator pg_catalog.-(path , point) is 'subtract (translate path)';

create operator pg_catalog.- (procedure = pg_lsn_mi, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.-(pg_lsn , pg_lsn) is 'minus';

create operator pg_catalog.- (procedure = point_sub, leftarg = point, rightarg = point);

comment on operator pg_catalog.-(point , point) is 'subtract points (translate)';

create operator pg_catalog.- (procedure = float48mi, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.-(real , double precision) is 'subtract';

create operator pg_catalog.- (procedure = float4mi, leftarg = real, rightarg = real);

comment on operator pg_catalog.-(real , real) is 'subtract';

create operator pg_catalog.- (procedure = int28mi, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.-(smallint , bigint) is 'subtract';

create operator pg_catalog.- (procedure = int24mi, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.-(smallint , integer) is 'subtract';

create operator pg_catalog.- (procedure = int2mi, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.-(smallint , smallint) is 'subtract';

create operator pg_catalog.- (procedure = timetz_mi_interval, leftarg = time with time zone, rightarg = interval);

comment on operator pg_catalog.-(time with time zone , interval) is 'subtract';

create operator pg_catalog.- (procedure = time_mi_interval, leftarg = time, rightarg = interval);

comment on operator pg_catalog.-(time , interval) is 'subtract';

create operator pg_catalog.- (procedure = time_mi_time, leftarg = time, rightarg = time);

comment on operator pg_catalog.-(time , time) is 'subtract';

create operator pg_catalog.- (procedure = timestamptz_mi_interval, leftarg = timestamp with time zone, rightarg = interval);

comment on operator pg_catalog.-(timestamp with time zone , interval) is 'subtract';

create operator pg_catalog.- (procedure = timestamptz_mi, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.-(timestamp with time zone , timestamp with time zone) is 'subtract';

create operator pg_catalog.- (procedure = timestamp_mi_interval, leftarg = timestamp, rightarg = interval);

comment on operator pg_catalog.-(timestamp , interval) is 'subtract';

create operator pg_catalog.- (procedure = timestamp_mi, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.-(timestamp , timestamp) is 'subtract';

create operator pg_catalog.- (procedure = int8um, rightarg = bigint);

comment on operator pg_catalog.-(none , bigint) is 'negate';

create operator pg_catalog.- (procedure = float8um, rightarg = double precision);

comment on operator pg_catalog.-(none , double precision) is 'negate';

create operator pg_catalog.- (procedure = int4um, rightarg = integer);

comment on operator pg_catalog.-(none , integer) is 'negate';

create operator pg_catalog.- (procedure = interval_um, rightarg = interval);

comment on operator pg_catalog.-(none , interval) is 'negate';

create operator pg_catalog.- (procedure = numeric_uminus, rightarg = numeric);

comment on operator pg_catalog.-(none , numeric) is 'negate';

create operator pg_catalog.- (procedure = float4um, rightarg = real);

comment on operator pg_catalog.-(none , real) is 'negate';

create operator pg_catalog.- (procedure = int2um, rightarg = smallint);

comment on operator pg_catalog.-(none , smallint) is 'negate';

create operator pg_catalog.-> (procedure = json_array_element, leftarg = json, rightarg = integer);

comment on operator pg_catalog.->(json , integer) is 'get json array element';

create operator pg_catalog.-> (procedure = json_object_field, leftarg = json, rightarg = text);

comment on operator pg_catalog.->(json , text) is 'get json object field';

create operator pg_catalog.-> (procedure = jsonb_array_element, leftarg = jsonb, rightarg = integer);

comment on operator pg_catalog.->(jsonb , integer) is 'get jsonb array element';

create operator pg_catalog.-> (procedure = jsonb_object_field, leftarg = jsonb, rightarg = text);

comment on operator pg_catalog.->(jsonb , text) is 'get jsonb object field';

create operator pg_catalog.->> (procedure = json_array_element_text, leftarg = json, rightarg = integer);

comment on operator pg_catalog.->>(json , integer) is 'get json array element as text';

create operator pg_catalog.->> (procedure = json_object_field_text, leftarg = json, rightarg = text);

comment on operator pg_catalog.->>(json , text) is 'get json object field as text';

create operator pg_catalog.->> (procedure = jsonb_array_element_text, leftarg = jsonb, rightarg = integer);

comment on operator pg_catalog.->>(jsonb , integer) is 'get jsonb array element as text';

create operator pg_catalog.->> (procedure = jsonb_object_field_text, leftarg = jsonb, rightarg = text);

comment on operator pg_catalog.->>(jsonb , text) is 'get jsonb object field as text';

create operator pg_catalog.-|- (procedure = range_adjacent, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.-|-(anyrange , anyrange) is 'is adjacent to';

create operator pg_catalog./ (procedure = int8div, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog./(bigint , bigint) is 'divide';

create operator pg_catalog./ (procedure = int84div, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog./(bigint , integer) is 'divide';

create operator pg_catalog./ (procedure = int82div, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog./(bigint , smallint) is 'divide';

create operator pg_catalog./ (procedure = box_div, leftarg = box, rightarg = point);

comment on operator pg_catalog./(box , point) is 'divide box by point (scale)';

create operator pg_catalog./ (procedure = circle_div_pt, leftarg = circle, rightarg = point);

comment on operator pg_catalog./(circle , point) is 'divide';

create operator pg_catalog./ (procedure = float8div, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog./(double precision , double precision) is 'divide';

create operator pg_catalog./ (procedure = float84div, leftarg = double precision, rightarg = real);

comment on operator pg_catalog./(double precision , real) is 'divide';

create operator pg_catalog./ (procedure = int48div, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog./(integer , bigint) is 'divide';

create operator pg_catalog./ (procedure = int4div, leftarg = integer, rightarg = integer);

comment on operator pg_catalog./(integer , integer) is 'divide';

create operator pg_catalog./ (procedure = int42div, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog./(integer , smallint) is 'divide';

create operator pg_catalog./ (procedure = interval_div, leftarg = interval, rightarg = double precision);

comment on operator pg_catalog./(interval , double precision) is 'divide';

create operator pg_catalog./ (procedure = cash_div_int8, leftarg = money, rightarg = bigint);

comment on operator pg_catalog./(money , bigint) is 'divide';

create operator pg_catalog./ (procedure = cash_div_flt8, leftarg = money, rightarg = double precision);

comment on operator pg_catalog./(money , double precision) is 'divide';

create operator pg_catalog./ (procedure = cash_div_int4, leftarg = money, rightarg = integer);

comment on operator pg_catalog./(money , integer) is 'divide';

create operator pg_catalog./ (procedure = cash_div_cash, leftarg = money, rightarg = money);

comment on operator pg_catalog./(money , money) is 'divide';

create operator pg_catalog./ (procedure = cash_div_flt4, leftarg = money, rightarg = real);

comment on operator pg_catalog./(money , real) is 'divide';

create operator pg_catalog./ (procedure = cash_div_int2, leftarg = money, rightarg = smallint);

comment on operator pg_catalog./(money , smallint) is 'divide';

create operator pg_catalog./ (procedure = numeric_div, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog./(numeric , numeric) is 'divide';

create operator pg_catalog./ (procedure = path_div_pt, leftarg = path, rightarg = point);

comment on operator pg_catalog./(path , point) is 'divide (rotate/scale path)';

create operator pg_catalog./ (procedure = point_div, leftarg = point, rightarg = point);

comment on operator pg_catalog./(point , point) is 'divide points (scale/rotate)';

create operator pg_catalog./ (procedure = float48div, leftarg = real, rightarg = double precision);

comment on operator pg_catalog./(real , double precision) is 'divide';

create operator pg_catalog./ (procedure = float4div, leftarg = real, rightarg = real);

comment on operator pg_catalog./(real , real) is 'divide';

create operator pg_catalog./ (procedure = int28div, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog./(smallint , bigint) is 'divide';

create operator pg_catalog./ (procedure = int24div, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog./(smallint , integer) is 'divide';

create operator pg_catalog./ (procedure = int2div, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog./(smallint , smallint) is 'divide';

create operator pg_catalog.< (procedure = charlt, leftarg = "char", rightarg = "char");

comment on operator pg_catalog.<("char" , "char") is 'less than';

create operator pg_catalog.< (procedure = array_lt, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.<(anyarray , anyarray) is 'less than';

create operator pg_catalog.< (procedure = enum_lt, leftarg = anyenum, rightarg = anyenum);

comment on operator pg_catalog.<(anyenum , anyenum) is 'less than';

create operator pg_catalog.< (procedure = range_lt, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.<(anyrange , anyrange) is 'less than';

create operator pg_catalog.< (procedure = int8lt, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.<(bigint , bigint) is 'less than';

create operator pg_catalog.< (procedure = int84lt, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.<(bigint , integer) is 'less than';

create operator pg_catalog.< (procedure = int82lt, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.<(bigint , smallint) is 'less than';

create operator pg_catalog.< (procedure = varbitlt, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.<(bit varying , bit varying) is 'less than';

create operator pg_catalog.< (procedure = bitlt, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.<(bit , bit) is 'less than';

create operator pg_catalog.< (procedure = boollt, leftarg = boolean, rightarg = boolean);

comment on operator pg_catalog.<(boolean , boolean) is 'less than';

create operator pg_catalog.< (procedure = box_lt, leftarg = box, rightarg = box);

comment on operator pg_catalog.<(box , box) is 'less than by area';

create operator pg_catalog.< (procedure = bytealt, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.<(bytea , bytea) is 'less than';

create operator pg_catalog.< (procedure = bpcharlt, leftarg = char, rightarg = char);

comment on operator pg_catalog.<(char , char) is 'less than';

create operator pg_catalog.< (procedure = circle_lt, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<(circle , circle) is 'less than by area';

create operator pg_catalog.< (procedure = date_lt, leftarg = date, rightarg = date);

comment on operator pg_catalog.<(date , date) is 'less than';

create operator pg_catalog.< (procedure = date_lt_timestamptz, leftarg = date, rightarg = timestamp with time zone);

comment on operator pg_catalog.<(date , timestamp with time zone) is 'less than';

create operator pg_catalog.< (procedure = date_lt_timestamp, leftarg = date, rightarg = timestamp);

comment on operator pg_catalog.<(date , timestamp) is 'less than';

create operator pg_catalog.< (procedure = float8lt, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.<(double precision , double precision) is 'less than';

create operator pg_catalog.< (procedure = float84lt, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.<(double precision , real) is 'less than';

create operator pg_catalog.< (procedure = network_lt, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.<(inet , inet) is 'less than';

create operator pg_catalog.< (procedure = int48lt, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.<(integer , bigint) is 'less than';

create operator pg_catalog.< (procedure = int4lt, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.<(integer , integer) is 'less than';

create operator pg_catalog.< (procedure = int42lt, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.<(integer , smallint) is 'less than';

create operator pg_catalog.< (procedure = interval_lt, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.<(interval , interval) is 'less than';

create operator pg_catalog.< (procedure = jsonb_lt, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.<(jsonb , jsonb) is 'less than';

create operator pg_catalog.< (procedure = lseg_lt, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.<(lseg , lseg) is 'less than by length';

create operator pg_catalog.< (procedure = macaddr_lt, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.<(macaddr , macaddr) is 'less than';

create operator pg_catalog.< (procedure = macaddr8_lt, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.<(macaddr8 , macaddr8) is 'less than';

create operator pg_catalog.< (procedure = cash_lt, leftarg = money, rightarg = money);

comment on operator pg_catalog.<(money , money) is 'less than';

create operator pg_catalog.< (procedure = namelt, leftarg = name, rightarg = name);

comment on operator pg_catalog.<(name , name) is 'less than';

create operator pg_catalog.< (procedure = namelttext, leftarg = name, rightarg = text);

comment on operator pg_catalog.<(name , text) is 'less than';

create operator pg_catalog.< (procedure = numeric_lt, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.<(numeric , numeric) is 'less than';

create operator pg_catalog.< (procedure = oidlt, leftarg = oid, rightarg = oid);

comment on operator pg_catalog.<(oid , oid) is 'less than';

create operator pg_catalog.< (procedure = oidvectorlt, leftarg = oidvector, rightarg = oidvector);

comment on operator pg_catalog.<(oidvector , oidvector) is 'less than';

create operator pg_catalog.< (procedure = path_n_lt, leftarg = path, rightarg = path);

comment on operator pg_catalog.<(path , path) is 'less than';

create operator pg_catalog.< (procedure = pg_lsn_lt, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.<(pg_lsn , pg_lsn) is 'less than';

create operator pg_catalog.< (procedure = float48lt, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.<(real , double precision) is 'less than';

create operator pg_catalog.< (procedure = float4lt, leftarg = real, rightarg = real);

comment on operator pg_catalog.<(real , real) is 'less than';

create operator pg_catalog.< (procedure = record_lt, leftarg = record, rightarg = record);

comment on operator pg_catalog.<(record , record) is 'less than';

create operator pg_catalog.< (procedure = int28lt, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.<(smallint , bigint) is 'less than';

create operator pg_catalog.< (procedure = int24lt, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.<(smallint , integer) is 'less than';

create operator pg_catalog.< (procedure = int2lt, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.<(smallint , smallint) is 'less than';

create operator pg_catalog.< (procedure = textltname, leftarg = text, rightarg = name);

comment on operator pg_catalog.<(text , name) is 'less than';

create operator pg_catalog.< (procedure = text_lt, leftarg = text, rightarg = text);

comment on operator pg_catalog.<(text , text) is 'less than';

create operator pg_catalog.< (procedure = tidlt, leftarg = tid, rightarg = tid);

comment on operator pg_catalog.<(tid , tid) is 'less than';

create operator pg_catalog.< (procedure = timetz_lt, leftarg = time with time zone, rightarg = time with time zone);

comment on operator pg_catalog.<(time with time zone , time with time zone) is 'less than';

create operator pg_catalog.< (procedure = time_lt, leftarg = time, rightarg = time);

comment on operator pg_catalog.<(time , time) is 'less than';

create operator pg_catalog.< (procedure = timestamptz_lt_date, leftarg = timestamp with time zone, rightarg = date);

comment on operator pg_catalog.<(timestamp with time zone , date) is 'less than';

create operator pg_catalog.< (procedure = timestamptz_lt, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.<(timestamp with time zone , timestamp with time zone) is 'less than';

create operator pg_catalog.< (procedure = timestamptz_lt_timestamp, leftarg = timestamp with time zone, rightarg = timestamp);

comment on operator pg_catalog.<(timestamp with time zone , timestamp) is 'less than';

create operator pg_catalog.< (procedure = timestamp_lt_date, leftarg = timestamp, rightarg = date);

comment on operator pg_catalog.<(timestamp , date) is 'less than';

create operator pg_catalog.< (procedure = timestamp_lt_timestamptz, leftarg = timestamp, rightarg = timestamp with time zone);

comment on operator pg_catalog.<(timestamp , timestamp with time zone) is 'less than';

create operator pg_catalog.< (procedure = timestamp_lt, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.<(timestamp , timestamp) is 'less than';

create operator pg_catalog.< (procedure = tsquery_lt, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.<(tsquery , tsquery) is 'less than';

create operator pg_catalog.< (procedure = tsvector_lt, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.<(tsvector , tsvector) is 'less than';

create operator pg_catalog.< (procedure = uuid_lt, leftarg = uuid, rightarg = uuid);

comment on operator pg_catalog.<(uuid , uuid) is 'less than';

create operator pg_catalog.<-> (procedure = box_distance, leftarg = box, rightarg = box);

comment on operator pg_catalog.<->(box , box) is 'distance between';

create operator pg_catalog.<-> (procedure = circle_distance, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<->(circle , circle) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_cpoint, leftarg = circle, rightarg = point);

comment on operator pg_catalog.<->(circle , point) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_cpoly, leftarg = circle, rightarg = polygon);

comment on operator pg_catalog.<->(circle , polygon) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_lb, leftarg = line, rightarg = box);

comment on operator pg_catalog.<->(line , box) is 'distance between';

create operator pg_catalog.<-> (procedure = line_distance, leftarg = line, rightarg = line);

comment on operator pg_catalog.<->(line , line) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_sb, leftarg = lseg, rightarg = box);

comment on operator pg_catalog.<->(lseg , box) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_sl, leftarg = lseg, rightarg = line);

comment on operator pg_catalog.<->(lseg , line) is 'distance between';

create operator pg_catalog.<-> (procedure = lseg_distance, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.<->(lseg , lseg) is 'distance between';

create operator pg_catalog.<-> (procedure = path_distance, leftarg = path, rightarg = path);

comment on operator pg_catalog.<->(path , path) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_pb, leftarg = point, rightarg = box);

comment on operator pg_catalog.<->(point , box) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_pc, leftarg = point, rightarg = circle);

comment on operator pg_catalog.<->(point , circle) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_pl, leftarg = point, rightarg = line);

comment on operator pg_catalog.<->(point , line) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_ps, leftarg = point, rightarg = lseg);

comment on operator pg_catalog.<->(point , lseg) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_ppath, leftarg = point, rightarg = path);

comment on operator pg_catalog.<->(point , path) is 'distance between';

create operator pg_catalog.<-> (procedure = point_distance, leftarg = point, rightarg = point);

comment on operator pg_catalog.<->(point , point) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_ppoly, leftarg = point, rightarg = polygon);

comment on operator pg_catalog.<->(point , polygon) is 'distance between';

create operator pg_catalog.<-> (procedure = dist_polyp, leftarg = polygon, rightarg = point);

comment on operator pg_catalog.<->(polygon , point) is 'distance between';

create operator pg_catalog.<-> (procedure = poly_distance, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.<->(polygon , polygon) is 'distance between';

create operator pg_catalog.<-> (procedure = "pg_catalog.tsquery_phrase", leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.<->(tsquery , tsquery) is 'phrase-concatenate';

create operator pg_catalog.<< (procedure = range_before, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.<<(anyrange , anyrange) is 'is left of';

create operator pg_catalog.<< (procedure = int8shl, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.<<(bigint , integer) is 'bitwise shift left';

create operator pg_catalog.<< (procedure = bitshiftleft, leftarg = bit, rightarg = integer);

comment on operator pg_catalog.<<(bit , integer) is 'bitwise shift left';

create operator pg_catalog.<< (procedure = box_left, leftarg = box, rightarg = box);

comment on operator pg_catalog.<<(box , box) is 'is left of';

create operator pg_catalog.<< (procedure = circle_left, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<<(circle , circle) is 'is left of';

create operator pg_catalog.<< (procedure = network_sub, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.<<(inet , inet) is 'is subnet';

create operator pg_catalog.<< (procedure = int4shl, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.<<(integer , integer) is 'bitwise shift left';

create operator pg_catalog.<< (procedure = point_left, leftarg = point, rightarg = point);

comment on operator pg_catalog.<<(point , point) is 'is left of';

create operator pg_catalog.<< (procedure = poly_left, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.<<(polygon , polygon) is 'is left of';

create operator pg_catalog.<< (procedure = int2shl, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.<<(smallint , integer) is 'bitwise shift left';

create operator pg_catalog.<<= (procedure = network_subeq, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.<<=(inet , inet) is 'is subnet or equal';

create operator pg_catalog.<<| (procedure = box_below, leftarg = box, rightarg = box);

comment on operator pg_catalog.<<|(box , box) is 'is below';

create operator pg_catalog.<<| (procedure = circle_below, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<<|(circle , circle) is 'is below';

create operator pg_catalog.<<| (procedure = poly_below, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.<<|(polygon , polygon) is 'is below';

create operator pg_catalog.<= (procedure = charle, leftarg = "char", rightarg = "char");

comment on operator pg_catalog.<=("char" , "char") is 'less than or equal';

create operator pg_catalog.<= (procedure = array_le, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.<=(anyarray , anyarray) is 'less than or equal';

create operator pg_catalog.<= (procedure = enum_le, leftarg = anyenum, rightarg = anyenum);

comment on operator pg_catalog.<=(anyenum , anyenum) is 'less than or equal';

create operator pg_catalog.<= (procedure = range_le, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.<=(anyrange , anyrange) is 'less than or equal';

create operator pg_catalog.<= (procedure = int8le, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.<=(bigint , bigint) is 'less than or equal';

create operator pg_catalog.<= (procedure = int84le, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.<=(bigint , integer) is 'less than or equal';

create operator pg_catalog.<= (procedure = int82le, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.<=(bigint , smallint) is 'less than or equal';

create operator pg_catalog.<= (procedure = varbitle, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.<=(bit varying , bit varying) is 'less than or equal';

create operator pg_catalog.<= (procedure = bitle, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.<=(bit , bit) is 'less than or equal';

create operator pg_catalog.<= (procedure = boolle, leftarg = boolean, rightarg = boolean);

comment on operator pg_catalog.<=(boolean , boolean) is 'less than or equal';

create operator pg_catalog.<= (procedure = box_le, leftarg = box, rightarg = box);

comment on operator pg_catalog.<=(box , box) is 'less than or equal by area';

create operator pg_catalog.<= (procedure = byteale, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.<=(bytea , bytea) is 'less than or equal';

create operator pg_catalog.<= (procedure = bpcharle, leftarg = char, rightarg = char);

comment on operator pg_catalog.<=(char , char) is 'less than or equal';

create operator pg_catalog.<= (procedure = circle_le, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<=(circle , circle) is 'less than or equal by area';

create operator pg_catalog.<= (procedure = date_le, leftarg = date, rightarg = date);

comment on operator pg_catalog.<=(date , date) is 'less than or equal';

create operator pg_catalog.<= (procedure = date_le_timestamptz, leftarg = date, rightarg = timestamp with time zone);

comment on operator pg_catalog.<=(date , timestamp with time zone) is 'less than or equal';

create operator pg_catalog.<= (procedure = date_le_timestamp, leftarg = date, rightarg = timestamp);

comment on operator pg_catalog.<=(date , timestamp) is 'less than or equal';

create operator pg_catalog.<= (procedure = float8le, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.<=(double precision , double precision) is 'less than or equal';

create operator pg_catalog.<= (procedure = float84le, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.<=(double precision , real) is 'less than or equal';

create operator pg_catalog.<= (procedure = network_le, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.<=(inet , inet) is 'less than or equal';

create operator pg_catalog.<= (procedure = int48le, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.<=(integer , bigint) is 'less than or equal';

create operator pg_catalog.<= (procedure = int4le, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.<=(integer , integer) is 'less than or equal';

create operator pg_catalog.<= (procedure = int42le, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.<=(integer , smallint) is 'less than or equal';

create operator pg_catalog.<= (procedure = interval_le, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.<=(interval , interval) is 'less than or equal';

create operator pg_catalog.<= (procedure = jsonb_le, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.<=(jsonb , jsonb) is 'less than or equal';

create operator pg_catalog.<= (procedure = lseg_le, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.<=(lseg , lseg) is 'less than or equal by length';

create operator pg_catalog.<= (procedure = macaddr_le, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.<=(macaddr , macaddr) is 'less than or equal';

create operator pg_catalog.<= (procedure = macaddr8_le, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.<=(macaddr8 , macaddr8) is 'less than or equal';

create operator pg_catalog.<= (procedure = cash_le, leftarg = money, rightarg = money);

comment on operator pg_catalog.<=(money , money) is 'less than or equal';

create operator pg_catalog.<= (procedure = namele, leftarg = name, rightarg = name);

comment on operator pg_catalog.<=(name , name) is 'less than or equal';

create operator pg_catalog.<= (procedure = nameletext, leftarg = name, rightarg = text);

comment on operator pg_catalog.<=(name , text) is 'less than or equal';

create operator pg_catalog.<= (procedure = numeric_le, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.<=(numeric , numeric) is 'less than or equal';

create operator pg_catalog.<= (procedure = oidle, leftarg = oid, rightarg = oid);

comment on operator pg_catalog.<=(oid , oid) is 'less than or equal';

create operator pg_catalog.<= (procedure = oidvectorle, leftarg = oidvector, rightarg = oidvector);

comment on operator pg_catalog.<=(oidvector , oidvector) is 'less than or equal';

create operator pg_catalog.<= (procedure = path_n_le, leftarg = path, rightarg = path);

comment on operator pg_catalog.<=(path , path) is 'less than or equal';

create operator pg_catalog.<= (procedure = pg_lsn_le, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.<=(pg_lsn , pg_lsn) is 'less than or equal';

create operator pg_catalog.<= (procedure = float48le, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.<=(real , double precision) is 'less than or equal';

create operator pg_catalog.<= (procedure = float4le, leftarg = real, rightarg = real);

comment on operator pg_catalog.<=(real , real) is 'less than or equal';

create operator pg_catalog.<= (procedure = record_le, leftarg = record, rightarg = record);

comment on operator pg_catalog.<=(record , record) is 'less than or equal';

create operator pg_catalog.<= (procedure = int28le, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.<=(smallint , bigint) is 'less than or equal';

create operator pg_catalog.<= (procedure = int24le, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.<=(smallint , integer) is 'less than or equal';

create operator pg_catalog.<= (procedure = int2le, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.<=(smallint , smallint) is 'less than or equal';

create operator pg_catalog.<= (procedure = textlename, leftarg = text, rightarg = name);

comment on operator pg_catalog.<=(text , name) is 'less than or equal';

create operator pg_catalog.<= (procedure = text_le, leftarg = text, rightarg = text);

comment on operator pg_catalog.<=(text , text) is 'less than or equal';

create operator pg_catalog.<= (procedure = tidle, leftarg = tid, rightarg = tid);

comment on operator pg_catalog.<=(tid , tid) is 'less than or equal';

create operator pg_catalog.<= (procedure = timetz_le, leftarg = time with time zone, rightarg = time with time zone);

comment on operator pg_catalog.<=(time with time zone , time with time zone) is 'less than or equal';

create operator pg_catalog.<= (procedure = time_le, leftarg = time, rightarg = time);

comment on operator pg_catalog.<=(time , time) is 'less than or equal';

create operator pg_catalog.<= (procedure = timestamptz_le_date, leftarg = timestamp with time zone, rightarg = date);

comment on operator pg_catalog.<=(timestamp with time zone , date) is 'less than or equal';

create operator pg_catalog.<= (procedure = timestamptz_le, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.<=(timestamp with time zone , timestamp with time zone) is 'less than or equal';

create operator pg_catalog.<= (procedure = timestamptz_le_timestamp, leftarg = timestamp with time zone, rightarg = timestamp);

comment on operator pg_catalog.<=(timestamp with time zone , timestamp) is 'less than or equal';

create operator pg_catalog.<= (procedure = timestamp_le_date, leftarg = timestamp, rightarg = date);

comment on operator pg_catalog.<=(timestamp , date) is 'less than or equal';

create operator pg_catalog.<= (procedure = timestamp_le_timestamptz, leftarg = timestamp, rightarg = timestamp with time zone);

comment on operator pg_catalog.<=(timestamp , timestamp with time zone) is 'less than or equal';

create operator pg_catalog.<= (procedure = timestamp_le, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.<=(timestamp , timestamp) is 'less than or equal';

create operator pg_catalog.<= (procedure = tsquery_le, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.<=(tsquery , tsquery) is 'less than or equal';

create operator pg_catalog.<= (procedure = tsvector_le, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.<=(tsvector , tsvector) is 'less than or equal';

create operator pg_catalog.<= (procedure = uuid_le, leftarg = uuid, rightarg = uuid);

comment on operator pg_catalog.<=(uuid , uuid) is 'less than or equal';

create operator pg_catalog.<> (procedure = charne, leftarg = "char", rightarg = "char");

comment on operator pg_catalog.<>("char" , "char") is 'not equal';

create operator pg_catalog.<> (procedure = array_ne, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.<>(anyarray , anyarray) is 'not equal';

create operator pg_catalog.<> (procedure = enum_ne, leftarg = anyenum, rightarg = anyenum);

comment on operator pg_catalog.<>(anyenum , anyenum) is 'not equal';

create operator pg_catalog.<> (procedure = range_ne, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.<>(anyrange , anyrange) is 'not equal';

create operator pg_catalog.<> (procedure = int8ne, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.<>(bigint , bigint) is 'not equal';

create operator pg_catalog.<> (procedure = int84ne, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.<>(bigint , integer) is 'not equal';

create operator pg_catalog.<> (procedure = int82ne, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.<>(bigint , smallint) is 'not equal';

create operator pg_catalog.<> (procedure = varbitne, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.<>(bit varying , bit varying) is 'not equal';

create operator pg_catalog.<> (procedure = bitne, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.<>(bit , bit) is 'not equal';

create operator pg_catalog.<> (procedure = boolne, leftarg = boolean, rightarg = boolean);

comment on operator pg_catalog.<>(boolean , boolean) is 'not equal';

create operator pg_catalog.<> (procedure = byteane, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.<>(bytea , bytea) is 'not equal';

create operator pg_catalog.<> (procedure = bpcharne, leftarg = char, rightarg = char);

comment on operator pg_catalog.<>(char , char) is 'not equal';

create operator pg_catalog.<> (procedure = circle_ne, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<>(circle , circle) is 'not equal by area';

create operator pg_catalog.<> (procedure = date_ne, leftarg = date, rightarg = date);

comment on operator pg_catalog.<>(date , date) is 'not equal';

create operator pg_catalog.<> (procedure = date_ne_timestamptz, leftarg = date, rightarg = timestamp with time zone);

comment on operator pg_catalog.<>(date , timestamp with time zone) is 'not equal';

create operator pg_catalog.<> (procedure = date_ne_timestamp, leftarg = date, rightarg = timestamp);

comment on operator pg_catalog.<>(date , timestamp) is 'not equal';

create operator pg_catalog.<> (procedure = float8ne, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.<>(double precision , double precision) is 'not equal';

create operator pg_catalog.<> (procedure = float84ne, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.<>(double precision , real) is 'not equal';

create operator pg_catalog.<> (procedure = network_ne, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.<>(inet , inet) is 'not equal';

create operator pg_catalog.<> (procedure = int48ne, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.<>(integer , bigint) is 'not equal';

create operator pg_catalog.<> (procedure = int4ne, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.<>(integer , integer) is 'not equal';

create operator pg_catalog.<> (procedure = int42ne, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.<>(integer , smallint) is 'not equal';

create operator pg_catalog.<> (procedure = interval_ne, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.<>(interval , interval) is 'not equal';

create operator pg_catalog.<> (procedure = jsonb_ne, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.<>(jsonb , jsonb) is 'not equal';

create operator pg_catalog.<> (procedure = lseg_ne, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.<>(lseg , lseg) is 'not equal';

create operator pg_catalog.<> (procedure = macaddr_ne, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.<>(macaddr , macaddr) is 'not equal';

create operator pg_catalog.<> (procedure = macaddr8_ne, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.<>(macaddr8 , macaddr8) is 'not equal';

create operator pg_catalog.<> (procedure = cash_ne, leftarg = money, rightarg = money);

comment on operator pg_catalog.<>(money , money) is 'not equal';

create operator pg_catalog.<> (procedure = namene, leftarg = name, rightarg = name);

comment on operator pg_catalog.<>(name , name) is 'not equal';

create operator pg_catalog.<> (procedure = namenetext, leftarg = name, rightarg = text);

comment on operator pg_catalog.<>(name , text) is 'not equal';

create operator pg_catalog.<> (procedure = numeric_ne, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.<>(numeric , numeric) is 'not equal';

create operator pg_catalog.<> (procedure = oidne, leftarg = oid, rightarg = oid);

comment on operator pg_catalog.<>(oid , oid) is 'not equal';

create operator pg_catalog.<> (procedure = oidvectorne, leftarg = oidvector, rightarg = oidvector);

comment on operator pg_catalog.<>(oidvector , oidvector) is 'not equal';

create operator pg_catalog.<> (procedure = pg_lsn_ne, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.<>(pg_lsn , pg_lsn) is 'not equal';

create operator pg_catalog.<> (procedure = point_ne, leftarg = point, rightarg = point);

comment on operator pg_catalog.<>(point , point) is 'not equal';

create operator pg_catalog.<> (procedure = float48ne, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.<>(real , double precision) is 'not equal';

create operator pg_catalog.<> (procedure = float4ne, leftarg = real, rightarg = real);

comment on operator pg_catalog.<>(real , real) is 'not equal';

create operator pg_catalog.<> (procedure = record_ne, leftarg = record, rightarg = record);

comment on operator pg_catalog.<>(record , record) is 'not equal';

create operator pg_catalog.<> (procedure = int28ne, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.<>(smallint , bigint) is 'not equal';

create operator pg_catalog.<> (procedure = int24ne, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.<>(smallint , integer) is 'not equal';

create operator pg_catalog.<> (procedure = int2ne, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.<>(smallint , smallint) is 'not equal';

create operator pg_catalog.<> (procedure = textnename, leftarg = text, rightarg = name);

comment on operator pg_catalog.<>(text , name) is 'not equal';

create operator pg_catalog.<> (procedure = textne, leftarg = text, rightarg = text);

comment on operator pg_catalog.<>(text , text) is 'not equal';

create operator pg_catalog.<> (procedure = tidne, leftarg = tid, rightarg = tid);

comment on operator pg_catalog.<>(tid , tid) is 'not equal';

create operator pg_catalog.<> (procedure = timetz_ne, leftarg = time with time zone, rightarg = time with time zone);

comment on operator pg_catalog.<>(time with time zone , time with time zone) is 'not equal';

create operator pg_catalog.<> (procedure = time_ne, leftarg = time, rightarg = time);

comment on operator pg_catalog.<>(time , time) is 'not equal';

create operator pg_catalog.<> (procedure = timestamptz_ne_date, leftarg = timestamp with time zone, rightarg = date);

comment on operator pg_catalog.<>(timestamp with time zone , date) is 'not equal';

create operator pg_catalog.<> (procedure = timestamptz_ne, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.<>(timestamp with time zone , timestamp with time zone) is 'not equal';

create operator pg_catalog.<> (procedure = timestamptz_ne_timestamp, leftarg = timestamp with time zone, rightarg = timestamp);

comment on operator pg_catalog.<>(timestamp with time zone , timestamp) is 'not equal';

create operator pg_catalog.<> (procedure = timestamp_ne_date, leftarg = timestamp, rightarg = date);

comment on operator pg_catalog.<>(timestamp , date) is 'not equal';

create operator pg_catalog.<> (procedure = timestamp_ne_timestamptz, leftarg = timestamp, rightarg = timestamp with time zone);

comment on operator pg_catalog.<>(timestamp , timestamp with time zone) is 'not equal';

create operator pg_catalog.<> (procedure = timestamp_ne, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.<>(timestamp , timestamp) is 'not equal';

create operator pg_catalog.<> (procedure = tsquery_ne, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.<>(tsquery , tsquery) is 'not equal';

create operator pg_catalog.<> (procedure = tsvector_ne, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.<>(tsvector , tsvector) is 'not equal';

create operator pg_catalog.<> (procedure = uuid_ne, leftarg = uuid, rightarg = uuid);

comment on operator pg_catalog.<>(uuid , uuid) is 'not equal';

create operator pg_catalog.<> (procedure = xidneqint4, leftarg = xid, rightarg = integer);

comment on operator pg_catalog.<>(xid , integer) is 'not equal';

create operator pg_catalog.<> (procedure = xidneq, leftarg = xid, rightarg = xid);

comment on operator pg_catalog.<>(xid , xid) is 'not equal';

create operator pg_catalog.<@ (procedure = arraycontained, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.<@(anyarray , anyarray) is 'is contained by';

create operator pg_catalog.<@ (procedure = elem_contained_by_range, leftarg = anyelement, rightarg = anyrange);

comment on operator pg_catalog.<@(anyelement , anyrange) is 'is contained by';

create operator pg_catalog.<@ (procedure = range_contained_by, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.<@(anyrange , anyrange) is 'is contained by';

create operator pg_catalog.<@ (procedure = box_contained, leftarg = box, rightarg = box);

comment on operator pg_catalog.<@(box , box) is 'is contained by';

create operator pg_catalog.<@ (procedure = circle_contained, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.<@(circle , circle) is 'is contained by';

create operator pg_catalog.<@ (procedure = jsonb_contained, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.<@(jsonb , jsonb) is 'is contained by';

create operator pg_catalog.<@ (procedure = on_sb, leftarg = lseg, rightarg = box);

comment on operator pg_catalog.<@(lseg , box) is 'is contained by';

create operator pg_catalog.<@ (procedure = on_sl, leftarg = lseg, rightarg = line);

comment on operator pg_catalog.<@(lseg , line) is 'lseg on line';

create operator pg_catalog.<@ (procedure = on_pb, leftarg = point, rightarg = box);

comment on operator pg_catalog.<@(point , box) is 'point inside box';

create operator pg_catalog.<@ (procedure = pt_contained_circle, leftarg = point, rightarg = circle);

comment on operator pg_catalog.<@(point , circle) is 'is contained by';

create operator pg_catalog.<@ (procedure = on_pl, leftarg = point, rightarg = line);

comment on operator pg_catalog.<@(point , line) is 'point on line';

create operator pg_catalog.<@ (procedure = on_ps, leftarg = point, rightarg = lseg);

comment on operator pg_catalog.<@(point , lseg) is 'is contained by';

create operator pg_catalog.<@ (procedure = on_ppath, leftarg = point, rightarg = path);

comment on operator pg_catalog.<@(point , path) is 'point within closed path, or point on open path';

create operator pg_catalog.<@ (procedure = pt_contained_poly, leftarg = point, rightarg = polygon);

comment on operator pg_catalog.<@(point , polygon) is 'is contained by';

create operator pg_catalog.<@ (procedure = poly_contained, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.<@(polygon , polygon) is 'is contained by';

create operator pg_catalog.<@ (procedure = tsq_mcontained, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.<@(tsquery , tsquery) is 'is contained by';

create operator pg_catalog.<^ (procedure = box_below_eq, leftarg = box, rightarg = box);

comment on operator pg_catalog.<^(box , box) is 'is below (allows touching)';

create operator pg_catalog.<^ (procedure = point_below, leftarg = point, rightarg = point);

comment on operator pg_catalog.<^(point , point) is 'is below';

create operator pg_catalog.= (procedure = chareq, leftarg = "char", rightarg = "char");

comment on operator pg_catalog.=("char" , "char") is 'equal';

create operator pg_catalog.= (procedure = aclitemeq, leftarg = aclitem, rightarg = aclitem);

comment on operator pg_catalog.=(aclitem , aclitem) is 'equal';

create operator pg_catalog.= (procedure = array_eq, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.=(anyarray , anyarray) is 'equal';

create operator pg_catalog.= (procedure = enum_eq, leftarg = anyenum, rightarg = anyenum);

comment on operator pg_catalog.=(anyenum , anyenum) is 'equal';

create operator pg_catalog.= (procedure = range_eq, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.=(anyrange , anyrange) is 'equal';

create operator pg_catalog.= (procedure = int8eq, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.=(bigint , bigint) is 'equal';

create operator pg_catalog.= (procedure = int84eq, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.=(bigint , integer) is 'equal';

create operator pg_catalog.= (procedure = int82eq, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.=(bigint , smallint) is 'equal';

create operator pg_catalog.= (procedure = varbiteq, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.=(bit varying , bit varying) is 'equal';

create operator pg_catalog.= (procedure = biteq, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.=(bit , bit) is 'equal';

create operator pg_catalog.= (procedure = booleq, leftarg = boolean, rightarg = boolean);

comment on operator pg_catalog.=(boolean , boolean) is 'equal';

create operator pg_catalog.= (procedure = box_eq, leftarg = box, rightarg = box);

comment on operator pg_catalog.=(box , box) is 'equal by area';

create operator pg_catalog.= (procedure = byteaeq, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.=(bytea , bytea) is 'equal';

create operator pg_catalog.= (procedure = bpchareq, leftarg = char, rightarg = char);

comment on operator pg_catalog.=(char , char) is 'equal';

create operator pg_catalog.= (procedure = cideq, leftarg = cid, rightarg = cid);

comment on operator pg_catalog.=(cid , cid) is 'equal';

create operator pg_catalog.= (procedure = circle_eq, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.=(circle , circle) is 'equal by area';

create operator pg_catalog.= (procedure = date_eq, leftarg = date, rightarg = date);

comment on operator pg_catalog.=(date , date) is 'equal';

create operator pg_catalog.= (procedure = date_eq_timestamptz, leftarg = date, rightarg = timestamp with time zone);

comment on operator pg_catalog.=(date , timestamp with time zone) is 'equal';

create operator pg_catalog.= (procedure = date_eq_timestamp, leftarg = date, rightarg = timestamp);

comment on operator pg_catalog.=(date , timestamp) is 'equal';

create operator pg_catalog.= (procedure = float8eq, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.=(double precision , double precision) is 'equal';

create operator pg_catalog.= (procedure = float84eq, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.=(double precision , real) is 'equal';

create operator pg_catalog.= (procedure = network_eq, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.=(inet , inet) is 'equal';

create operator pg_catalog.= (procedure = int48eq, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.=(integer , bigint) is 'equal';

create operator pg_catalog.= (procedure = int4eq, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.=(integer , integer) is 'equal';

create operator pg_catalog.= (procedure = int42eq, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.=(integer , smallint) is 'equal';

create operator pg_catalog.= (procedure = interval_eq, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.=(interval , interval) is 'equal';

create operator pg_catalog.= (procedure = jsonb_eq, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.=(jsonb , jsonb) is 'equal';

create operator pg_catalog.= (procedure = line_eq, leftarg = line, rightarg = line);

comment on operator pg_catalog.=(line , line) is 'equal';

create operator pg_catalog.= (procedure = lseg_eq, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.=(lseg , lseg) is 'equal';

create operator pg_catalog.= (procedure = macaddr_eq, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.=(macaddr , macaddr) is 'equal';

create operator pg_catalog.= (procedure = macaddr8_eq, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.=(macaddr8 , macaddr8) is 'equal';

create operator pg_catalog.= (procedure = cash_eq, leftarg = money, rightarg = money);

comment on operator pg_catalog.=(money , money) is 'equal';

create operator pg_catalog.= (procedure = nameeq, leftarg = name, rightarg = name);

comment on operator pg_catalog.=(name , name) is 'equal';

create operator pg_catalog.= (procedure = nameeqtext, leftarg = name, rightarg = text);

comment on operator pg_catalog.=(name , text) is 'equal';

create operator pg_catalog.= (procedure = numeric_eq, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.=(numeric , numeric) is 'equal';

create operator pg_catalog.= (procedure = oideq, leftarg = oid, rightarg = oid);

comment on operator pg_catalog.=(oid , oid) is 'equal';

create operator pg_catalog.= (procedure = oidvectoreq, leftarg = oidvector, rightarg = oidvector);

comment on operator pg_catalog.=(oidvector , oidvector) is 'equal';

create operator pg_catalog.= (procedure = path_n_eq, leftarg = path, rightarg = path);

comment on operator pg_catalog.=(path , path) is 'equal';

create operator pg_catalog.= (procedure = pg_lsn_eq, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.=(pg_lsn , pg_lsn) is 'equal';

create operator pg_catalog.= (procedure = float48eq, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.=(real , double precision) is 'equal';

create operator pg_catalog.= (procedure = float4eq, leftarg = real, rightarg = real);

comment on operator pg_catalog.=(real , real) is 'equal';

create operator pg_catalog.= (procedure = record_eq, leftarg = record, rightarg = record);

comment on operator pg_catalog.=(record , record) is 'equal';

create operator pg_catalog.= (procedure = int28eq, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.=(smallint , bigint) is 'equal';

create operator pg_catalog.= (procedure = int24eq, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.=(smallint , integer) is 'equal';

create operator pg_catalog.= (procedure = int2eq, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.=(smallint , smallint) is 'equal';

create operator pg_catalog.= (procedure = texteqname, leftarg = text, rightarg = name);

comment on operator pg_catalog.=(text , name) is 'equal';

create operator pg_catalog.= (procedure = texteq, leftarg = text, rightarg = text);

comment on operator pg_catalog.=(text , text) is 'equal';

create operator pg_catalog.= (procedure = tideq, leftarg = tid, rightarg = tid);

comment on operator pg_catalog.=(tid , tid) is 'equal';

create operator pg_catalog.= (procedure = timetz_eq, leftarg = time with time zone, rightarg = time with time zone);

comment on operator pg_catalog.=(time with time zone , time with time zone) is 'equal';

create operator pg_catalog.= (procedure = time_eq, leftarg = time, rightarg = time);

comment on operator pg_catalog.=(time , time) is 'equal';

create operator pg_catalog.= (procedure = timestamptz_eq_date, leftarg = timestamp with time zone, rightarg = date);

comment on operator pg_catalog.=(timestamp with time zone , date) is 'equal';

create operator pg_catalog.= (procedure = timestamptz_eq, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.=(timestamp with time zone , timestamp with time zone) is 'equal';

create operator pg_catalog.= (procedure = timestamptz_eq_timestamp, leftarg = timestamp with time zone, rightarg = timestamp);

comment on operator pg_catalog.=(timestamp with time zone , timestamp) is 'equal';

create operator pg_catalog.= (procedure = timestamp_eq_date, leftarg = timestamp, rightarg = date);

comment on operator pg_catalog.=(timestamp , date) is 'equal';

create operator pg_catalog.= (procedure = timestamp_eq_timestamptz, leftarg = timestamp, rightarg = timestamp with time zone);

comment on operator pg_catalog.=(timestamp , timestamp with time zone) is 'equal';

create operator pg_catalog.= (procedure = timestamp_eq, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.=(timestamp , timestamp) is 'equal';

create operator pg_catalog.= (procedure = tsquery_eq, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.=(tsquery , tsquery) is 'equal';

create operator pg_catalog.= (procedure = tsvector_eq, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.=(tsvector , tsvector) is 'equal';

create operator pg_catalog.= (procedure = uuid_eq, leftarg = uuid, rightarg = uuid);

comment on operator pg_catalog.=(uuid , uuid) is 'equal';

create operator pg_catalog.= (procedure = xideqint4, leftarg = xid, rightarg = integer);

comment on operator pg_catalog.=(xid , integer) is 'equal';

create operator pg_catalog.= (procedure = xideq, leftarg = xid, rightarg = xid);

comment on operator pg_catalog.=(xid , xid) is 'equal';

create operator pg_catalog.> (procedure = chargt, leftarg = "char", rightarg = "char");

comment on operator pg_catalog.>("char" , "char") is 'greater than';

create operator pg_catalog.> (procedure = array_gt, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.>(anyarray , anyarray) is 'greater than';

create operator pg_catalog.> (procedure = enum_gt, leftarg = anyenum, rightarg = anyenum);

comment on operator pg_catalog.>(anyenum , anyenum) is 'greater than';

create operator pg_catalog.> (procedure = range_gt, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.>(anyrange , anyrange) is 'greater than';

create operator pg_catalog.> (procedure = int8gt, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.>(bigint , bigint) is 'greater than';

create operator pg_catalog.> (procedure = int84gt, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.>(bigint , integer) is 'greater than';

create operator pg_catalog.> (procedure = int82gt, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.>(bigint , smallint) is 'greater than';

create operator pg_catalog.> (procedure = varbitgt, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.>(bit varying , bit varying) is 'greater than';

create operator pg_catalog.> (procedure = bitgt, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.>(bit , bit) is 'greater than';

create operator pg_catalog.> (procedure = boolgt, leftarg = boolean, rightarg = boolean);

comment on operator pg_catalog.>(boolean , boolean) is 'greater than';

create operator pg_catalog.> (procedure = box_gt, leftarg = box, rightarg = box);

comment on operator pg_catalog.>(box , box) is 'greater than by area';

create operator pg_catalog.> (procedure = byteagt, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.>(bytea , bytea) is 'greater than';

create operator pg_catalog.> (procedure = bpchargt, leftarg = char, rightarg = char);

comment on operator pg_catalog.>(char , char) is 'greater than';

create operator pg_catalog.> (procedure = circle_gt, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.>(circle , circle) is 'greater than by area';

create operator pg_catalog.> (procedure = date_gt, leftarg = date, rightarg = date);

comment on operator pg_catalog.>(date , date) is 'greater than';

create operator pg_catalog.> (procedure = date_gt_timestamptz, leftarg = date, rightarg = timestamp with time zone);

comment on operator pg_catalog.>(date , timestamp with time zone) is 'greater than';

create operator pg_catalog.> (procedure = date_gt_timestamp, leftarg = date, rightarg = timestamp);

comment on operator pg_catalog.>(date , timestamp) is 'greater than';

create operator pg_catalog.> (procedure = float8gt, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.>(double precision , double precision) is 'greater than';

create operator pg_catalog.> (procedure = float84gt, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.>(double precision , real) is 'greater than';

create operator pg_catalog.> (procedure = network_gt, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.>(inet , inet) is 'greater than';

create operator pg_catalog.> (procedure = int48gt, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.>(integer , bigint) is 'greater than';

create operator pg_catalog.> (procedure = int4gt, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.>(integer , integer) is 'greater than';

create operator pg_catalog.> (procedure = int42gt, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.>(integer , smallint) is 'greater than';

create operator pg_catalog.> (procedure = interval_gt, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.>(interval , interval) is 'greater than';

create operator pg_catalog.> (procedure = jsonb_gt, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.>(jsonb , jsonb) is 'greater than';

create operator pg_catalog.> (procedure = lseg_gt, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.>(lseg , lseg) is 'greater than by length';

create operator pg_catalog.> (procedure = macaddr_gt, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.>(macaddr , macaddr) is 'greater than';

create operator pg_catalog.> (procedure = macaddr8_gt, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.>(macaddr8 , macaddr8) is 'greater than';

create operator pg_catalog.> (procedure = cash_gt, leftarg = money, rightarg = money);

comment on operator pg_catalog.>(money , money) is 'greater than';

create operator pg_catalog.> (procedure = namegt, leftarg = name, rightarg = name);

comment on operator pg_catalog.>(name , name) is 'greater than';

create operator pg_catalog.> (procedure = namegttext, leftarg = name, rightarg = text);

comment on operator pg_catalog.>(name , text) is 'greater than';

create operator pg_catalog.> (procedure = numeric_gt, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.>(numeric , numeric) is 'greater than';

create operator pg_catalog.> (procedure = oidgt, leftarg = oid, rightarg = oid);

comment on operator pg_catalog.>(oid , oid) is 'greater than';

create operator pg_catalog.> (procedure = oidvectorgt, leftarg = oidvector, rightarg = oidvector);

comment on operator pg_catalog.>(oidvector , oidvector) is 'greater than';

create operator pg_catalog.> (procedure = path_n_gt, leftarg = path, rightarg = path);

comment on operator pg_catalog.>(path , path) is 'greater than';

create operator pg_catalog.> (procedure = pg_lsn_gt, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.>(pg_lsn , pg_lsn) is 'greater than';

create operator pg_catalog.> (procedure = float48gt, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.>(real , double precision) is 'greater than';

create operator pg_catalog.> (procedure = float4gt, leftarg = real, rightarg = real);

comment on operator pg_catalog.>(real , real) is 'greater than';

create operator pg_catalog.> (procedure = record_gt, leftarg = record, rightarg = record);

comment on operator pg_catalog.>(record , record) is 'greater than';

create operator pg_catalog.> (procedure = int28gt, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.>(smallint , bigint) is 'greater than';

create operator pg_catalog.> (procedure = int24gt, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.>(smallint , integer) is 'greater than';

create operator pg_catalog.> (procedure = int2gt, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.>(smallint , smallint) is 'greater than';

create operator pg_catalog.> (procedure = textgtname, leftarg = text, rightarg = name);

comment on operator pg_catalog.>(text , name) is 'greater than';

create operator pg_catalog.> (procedure = text_gt, leftarg = text, rightarg = text);

comment on operator pg_catalog.>(text , text) is 'greater than';

create operator pg_catalog.> (procedure = tidgt, leftarg = tid, rightarg = tid);

comment on operator pg_catalog.>(tid , tid) is 'greater than';

create operator pg_catalog.> (procedure = timetz_gt, leftarg = time with time zone, rightarg = time with time zone);

comment on operator pg_catalog.>(time with time zone , time with time zone) is 'greater than';

create operator pg_catalog.> (procedure = time_gt, leftarg = time, rightarg = time);

comment on operator pg_catalog.>(time , time) is 'greater than';

create operator pg_catalog.> (procedure = timestamptz_gt_date, leftarg = timestamp with time zone, rightarg = date);

comment on operator pg_catalog.>(timestamp with time zone , date) is 'greater than';

create operator pg_catalog.> (procedure = timestamptz_gt, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.>(timestamp with time zone , timestamp with time zone) is 'greater than';

create operator pg_catalog.> (procedure = timestamptz_gt_timestamp, leftarg = timestamp with time zone, rightarg = timestamp);

comment on operator pg_catalog.>(timestamp with time zone , timestamp) is 'greater than';

create operator pg_catalog.> (procedure = timestamp_gt_date, leftarg = timestamp, rightarg = date);

comment on operator pg_catalog.>(timestamp , date) is 'greater than';

create operator pg_catalog.> (procedure = timestamp_gt_timestamptz, leftarg = timestamp, rightarg = timestamp with time zone);

comment on operator pg_catalog.>(timestamp , timestamp with time zone) is 'greater than';

create operator pg_catalog.> (procedure = timestamp_gt, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.>(timestamp , timestamp) is 'greater than';

create operator pg_catalog.> (procedure = tsquery_gt, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.>(tsquery , tsquery) is 'greater than';

create operator pg_catalog.> (procedure = tsvector_gt, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.>(tsvector , tsvector) is 'greater than';

create operator pg_catalog.> (procedure = uuid_gt, leftarg = uuid, rightarg = uuid);

comment on operator pg_catalog.>(uuid , uuid) is 'greater than';

create operator pg_catalog.>= (procedure = charge, leftarg = "char", rightarg = "char");

comment on operator pg_catalog.>=("char" , "char") is 'greater than or equal';

create operator pg_catalog.>= (procedure = array_ge, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.>=(anyarray , anyarray) is 'greater than or equal';

create operator pg_catalog.>= (procedure = enum_ge, leftarg = anyenum, rightarg = anyenum);

comment on operator pg_catalog.>=(anyenum , anyenum) is 'greater than or equal';

create operator pg_catalog.>= (procedure = range_ge, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.>=(anyrange , anyrange) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int8ge, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.>=(bigint , bigint) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int84ge, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.>=(bigint , integer) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int82ge, leftarg = bigint, rightarg = smallint);

comment on operator pg_catalog.>=(bigint , smallint) is 'greater than or equal';

create operator pg_catalog.>= (procedure = varbitge, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.>=(bit varying , bit varying) is 'greater than or equal';

create operator pg_catalog.>= (procedure = bitge, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.>=(bit , bit) is 'greater than or equal';

create operator pg_catalog.>= (procedure = boolge, leftarg = boolean, rightarg = boolean);

comment on operator pg_catalog.>=(boolean , boolean) is 'greater than or equal';

create operator pg_catalog.>= (procedure = box_ge, leftarg = box, rightarg = box);

comment on operator pg_catalog.>=(box , box) is 'greater than or equal by area';

create operator pg_catalog.>= (procedure = byteage, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.>=(bytea , bytea) is 'greater than or equal';

create operator pg_catalog.>= (procedure = bpcharge, leftarg = char, rightarg = char);

comment on operator pg_catalog.>=(char , char) is 'greater than or equal';

create operator pg_catalog.>= (procedure = circle_ge, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.>=(circle , circle) is 'greater than or equal by area';

create operator pg_catalog.>= (procedure = date_ge, leftarg = date, rightarg = date);

comment on operator pg_catalog.>=(date , date) is 'greater than or equal';

create operator pg_catalog.>= (procedure = date_ge_timestamptz, leftarg = date, rightarg = timestamp with time zone);

comment on operator pg_catalog.>=(date , timestamp with time zone) is 'greater than or equal';

create operator pg_catalog.>= (procedure = date_ge_timestamp, leftarg = date, rightarg = timestamp);

comment on operator pg_catalog.>=(date , timestamp) is 'greater than or equal';

create operator pg_catalog.>= (procedure = float8ge, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.>=(double precision , double precision) is 'greater than or equal';

create operator pg_catalog.>= (procedure = float84ge, leftarg = double precision, rightarg = real);

comment on operator pg_catalog.>=(double precision , real) is 'greater than or equal';

create operator pg_catalog.>= (procedure = network_ge, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.>=(inet , inet) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int48ge, leftarg = integer, rightarg = bigint);

comment on operator pg_catalog.>=(integer , bigint) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int4ge, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.>=(integer , integer) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int42ge, leftarg = integer, rightarg = smallint);

comment on operator pg_catalog.>=(integer , smallint) is 'greater than or equal';

create operator pg_catalog.>= (procedure = interval_ge, leftarg = interval, rightarg = interval);

comment on operator pg_catalog.>=(interval , interval) is 'greater than or equal';

create operator pg_catalog.>= (procedure = jsonb_ge, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.>=(jsonb , jsonb) is 'greater than or equal';

create operator pg_catalog.>= (procedure = lseg_ge, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.>=(lseg , lseg) is 'greater than or equal by length';

create operator pg_catalog.>= (procedure = macaddr_ge, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.>=(macaddr , macaddr) is 'greater than or equal';

create operator pg_catalog.>= (procedure = macaddr8_ge, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.>=(macaddr8 , macaddr8) is 'greater than or equal';

create operator pg_catalog.>= (procedure = cash_ge, leftarg = money, rightarg = money);

comment on operator pg_catalog.>=(money , money) is 'greater than or equal';

create operator pg_catalog.>= (procedure = namege, leftarg = name, rightarg = name);

comment on operator pg_catalog.>=(name , name) is 'greater than or equal';

create operator pg_catalog.>= (procedure = namegetext, leftarg = name, rightarg = text);

comment on operator pg_catalog.>=(name , text) is 'greater than or equal';

create operator pg_catalog.>= (procedure = numeric_ge, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.>=(numeric , numeric) is 'greater than or equal';

create operator pg_catalog.>= (procedure = oidge, leftarg = oid, rightarg = oid);

comment on operator pg_catalog.>=(oid , oid) is 'greater than or equal';

create operator pg_catalog.>= (procedure = oidvectorge, leftarg = oidvector, rightarg = oidvector);

comment on operator pg_catalog.>=(oidvector , oidvector) is 'greater than or equal';

create operator pg_catalog.>= (procedure = path_n_ge, leftarg = path, rightarg = path);

comment on operator pg_catalog.>=(path , path) is 'greater than or equal';

create operator pg_catalog.>= (procedure = pg_lsn_ge, leftarg = pg_lsn, rightarg = pg_lsn);

comment on operator pg_catalog.>=(pg_lsn , pg_lsn) is 'greater than or equal';

create operator pg_catalog.>= (procedure = float48ge, leftarg = real, rightarg = double precision);

comment on operator pg_catalog.>=(real , double precision) is 'greater than or equal';

create operator pg_catalog.>= (procedure = float4ge, leftarg = real, rightarg = real);

comment on operator pg_catalog.>=(real , real) is 'greater than or equal';

create operator pg_catalog.>= (procedure = record_ge, leftarg = record, rightarg = record);

comment on operator pg_catalog.>=(record , record) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int28ge, leftarg = smallint, rightarg = bigint);

comment on operator pg_catalog.>=(smallint , bigint) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int24ge, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.>=(smallint , integer) is 'greater than or equal';

create operator pg_catalog.>= (procedure = int2ge, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.>=(smallint , smallint) is 'greater than or equal';

create operator pg_catalog.>= (procedure = textgename, leftarg = text, rightarg = name);

comment on operator pg_catalog.>=(text , name) is 'greater than or equal';

create operator pg_catalog.>= (procedure = text_ge, leftarg = text, rightarg = text);

comment on operator pg_catalog.>=(text , text) is 'greater than or equal';

create operator pg_catalog.>= (procedure = tidge, leftarg = tid, rightarg = tid);

comment on operator pg_catalog.>=(tid , tid) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timetz_ge, leftarg = time with time zone, rightarg = time with time zone);

comment on operator pg_catalog.>=(time with time zone , time with time zone) is 'greater than or equal';

create operator pg_catalog.>= (procedure = time_ge, leftarg = time, rightarg = time);

comment on operator pg_catalog.>=(time , time) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timestamptz_ge_date, leftarg = timestamp with time zone, rightarg = date);

comment on operator pg_catalog.>=(timestamp with time zone , date) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timestamptz_ge, leftarg = timestamp with time zone, rightarg = timestamp with time zone);

comment on operator pg_catalog.>=(timestamp with time zone , timestamp with time zone) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timestamptz_ge_timestamp, leftarg = timestamp with time zone, rightarg = timestamp);

comment on operator pg_catalog.>=(timestamp with time zone , timestamp) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timestamp_ge_date, leftarg = timestamp, rightarg = date);

comment on operator pg_catalog.>=(timestamp , date) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timestamp_ge_timestamptz, leftarg = timestamp, rightarg = timestamp with time zone);

comment on operator pg_catalog.>=(timestamp , timestamp with time zone) is 'greater than or equal';

create operator pg_catalog.>= (procedure = timestamp_ge, leftarg = timestamp, rightarg = timestamp);

comment on operator pg_catalog.>=(timestamp , timestamp) is 'greater than or equal';

create operator pg_catalog.>= (procedure = tsquery_ge, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.>=(tsquery , tsquery) is 'greater than or equal';

create operator pg_catalog.>= (procedure = tsvector_ge, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.>=(tsvector , tsvector) is 'greater than or equal';

create operator pg_catalog.>= (procedure = uuid_ge, leftarg = uuid, rightarg = uuid);

comment on operator pg_catalog.>=(uuid , uuid) is 'greater than or equal';

create operator pg_catalog.>> (procedure = range_after, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.>>(anyrange , anyrange) is 'is right of';

create operator pg_catalog.>> (procedure = int8shr, leftarg = bigint, rightarg = integer);

comment on operator pg_catalog.>>(bigint , integer) is 'bitwise shift right';

create operator pg_catalog.>> (procedure = bitshiftright, leftarg = bit, rightarg = integer);

comment on operator pg_catalog.>>(bit , integer) is 'bitwise shift right';

create operator pg_catalog.>> (procedure = box_right, leftarg = box, rightarg = box);

comment on operator pg_catalog.>>(box , box) is 'is right of';

create operator pg_catalog.>> (procedure = circle_right, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.>>(circle , circle) is 'is right of';

create operator pg_catalog.>> (procedure = network_sup, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.>>(inet , inet) is 'is supernet';

create operator pg_catalog.>> (procedure = int4shr, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.>>(integer , integer) is 'bitwise shift right';

create operator pg_catalog.>> (procedure = point_right, leftarg = point, rightarg = point);

comment on operator pg_catalog.>>(point , point) is 'is right of';

create operator pg_catalog.>> (procedure = poly_right, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.>>(polygon , polygon) is 'is right of';

create operator pg_catalog.>> (procedure = int2shr, leftarg = smallint, rightarg = integer);

comment on operator pg_catalog.>>(smallint , integer) is 'bitwise shift right';

create operator pg_catalog.>>= (procedure = network_supeq, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.>>=(inet , inet) is 'is supernet or equal';

create operator pg_catalog.>^ (procedure = box_above_eq, leftarg = box, rightarg = box);

comment on operator pg_catalog.>^(box , box) is 'is above (allows touching)';

create operator pg_catalog.>^ (procedure = point_above, leftarg = point, rightarg = point);

comment on operator pg_catalog.>^(point , point) is 'is above';

create operator pg_catalog.?# (procedure = box_overlap, leftarg = box, rightarg = box);

comment on operator pg_catalog.?#(box , box) is 'deprecated, use && instead';

create operator pg_catalog.?# (procedure = inter_lb, leftarg = line, rightarg = box);

comment on operator pg_catalog.?#(line , box) is 'intersect';

create operator pg_catalog.?# (procedure = line_intersect, leftarg = line, rightarg = line);

comment on operator pg_catalog.?#(line , line) is 'intersect';

create operator pg_catalog.?# (procedure = inter_sb, leftarg = lseg, rightarg = box);

comment on operator pg_catalog.?#(lseg , box) is 'intersect';

create operator pg_catalog.?# (procedure = inter_sl, leftarg = lseg, rightarg = line);

comment on operator pg_catalog.?#(lseg , line) is 'intersect';

create operator pg_catalog.?# (procedure = lseg_intersect, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.?#(lseg , lseg) is 'intersect';

create operator pg_catalog.?# (procedure = path_inter, leftarg = path, rightarg = path);

comment on operator pg_catalog.?#(path , path) is 'intersect';

create operator pg_catalog.?& (procedure = jsonb_exists_all, leftarg = jsonb, rightarg = text[]);

comment on operator pg_catalog.?&(jsonb , text[]) is 'all keys exist';

create operator pg_catalog.? (procedure = jsonb_exists, leftarg = jsonb, rightarg = text);

comment on operator pg_catalog.?(jsonb , text) is 'key exists';

create operator pg_catalog.?- (procedure = point_horiz, leftarg = point, rightarg = point);

comment on operator pg_catalog.?-(point , point) is 'horizontally aligned';

create operator pg_catalog.?- (procedure = line_horizontal, rightarg = line);

comment on operator pg_catalog.?-(none , line) is 'horizontal';

create operator pg_catalog.?- (procedure = lseg_horizontal, rightarg = lseg);

comment on operator pg_catalog.?-(none , lseg) is 'horizontal';

create operator pg_catalog.?-| (procedure = line_perp, leftarg = line, rightarg = line);

comment on operator pg_catalog.?-|(line , line) is 'perpendicular';

create operator pg_catalog.?-| (procedure = lseg_perp, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.?-|(lseg , lseg) is 'perpendicular';

create operator pg_catalog.?| (procedure = jsonb_exists_any, leftarg = jsonb, rightarg = text[]);

comment on operator pg_catalog.?|(jsonb , text[]) is 'any key exists';

create operator pg_catalog.?| (procedure = point_vert, leftarg = point, rightarg = point);

comment on operator pg_catalog.?|(point , point) is 'vertically aligned';

create operator pg_catalog.?| (procedure = line_vertical, rightarg = line);

comment on operator pg_catalog.?|(none , line) is 'vertical';

create operator pg_catalog.?| (procedure = lseg_vertical, rightarg = lseg);

comment on operator pg_catalog.?|(none , lseg) is 'vertical';

create operator pg_catalog.?|| (procedure = line_parallel, leftarg = line, rightarg = line);

comment on operator pg_catalog.?||(line , line) is 'parallel';

create operator pg_catalog.?|| (procedure = lseg_parallel, leftarg = lseg, rightarg = lseg);

comment on operator pg_catalog.?||(lseg , lseg) is 'parallel';

create operator pg_catalog.@ (procedure = box_contained, leftarg = box, rightarg = box);

comment on operator pg_catalog.@(box , box) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = circle_contained, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.@(circle , circle) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = on_sb, leftarg = lseg, rightarg = box);

comment on operator pg_catalog.@(lseg , box) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = on_sl, leftarg = lseg, rightarg = line);

comment on operator pg_catalog.@(lseg , line) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = on_pb, leftarg = point, rightarg = box);

comment on operator pg_catalog.@(point , box) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = pt_contained_circle, leftarg = point, rightarg = circle);

comment on operator pg_catalog.@(point , circle) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = on_pl, leftarg = point, rightarg = line);

comment on operator pg_catalog.@(point , line) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = on_ps, leftarg = point, rightarg = lseg);

comment on operator pg_catalog.@(point , lseg) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = on_ppath, leftarg = point, rightarg = path);

comment on operator pg_catalog.@(point , path) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = pt_contained_poly, leftarg = point, rightarg = polygon);

comment on operator pg_catalog.@(point , polygon) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = poly_contained, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.@(polygon , polygon) is 'deprecated, use <@ instead';

create operator pg_catalog.@ (procedure = int8abs, rightarg = bigint);

comment on operator pg_catalog.@(none , bigint) is 'absolute value';

create operator pg_catalog.@ (procedure = float8abs, rightarg = double precision);

comment on operator pg_catalog.@(none , double precision) is 'absolute value';

create operator pg_catalog.@ (procedure = int4abs, rightarg = integer);

comment on operator pg_catalog.@(none , integer) is 'absolute value';

create operator pg_catalog.@ (procedure = numeric_abs, rightarg = numeric);

comment on operator pg_catalog.@(none , numeric) is 'absolute value';

create operator pg_catalog.@ (procedure = float4abs, rightarg = real);

comment on operator pg_catalog.@(none , real) is 'absolute value';

create operator pg_catalog.@ (procedure = int2abs, rightarg = smallint);

comment on operator pg_catalog.@(none , smallint) is 'absolute value';

create operator pg_catalog.@-@ (procedure = lseg_length, rightarg = lseg);

comment on operator pg_catalog.@-@(none , lseg) is 'distance between endpoints';

create operator pg_catalog.@-@ (procedure = path_length, rightarg = path);

comment on operator pg_catalog.@-@(none , path) is 'sum of path segment lengths';

create operator pg_catalog.@> (procedure = aclcontains, leftarg = aclitem[], rightarg = aclitem);

comment on operator pg_catalog.@>(aclitem[] , aclitem) is 'contains';

create operator pg_catalog.@> (procedure = arraycontains, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.@>(anyarray , anyarray) is 'contains';

create operator pg_catalog.@> (procedure = range_contains_elem, leftarg = anyrange, rightarg = anyelement);

comment on operator pg_catalog.@>(anyrange , anyelement) is 'contains';

create operator pg_catalog.@> (procedure = range_contains, leftarg = anyrange, rightarg = anyrange);

comment on operator pg_catalog.@>(anyrange , anyrange) is 'contains';

create operator pg_catalog.@> (procedure = box_contain, leftarg = box, rightarg = box);

comment on operator pg_catalog.@>(box , box) is 'contains';

create operator pg_catalog.@> (procedure = box_contain_pt, leftarg = box, rightarg = point);

comment on operator pg_catalog.@>(box , point) is 'contains';

create operator pg_catalog.@> (procedure = circle_contain, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.@>(circle , circle) is 'contains';

create operator pg_catalog.@> (procedure = circle_contain_pt, leftarg = circle, rightarg = point);

comment on operator pg_catalog.@>(circle , point) is 'contains';

create operator pg_catalog.@> (procedure = jsonb_contains, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.@>(jsonb , jsonb) is 'contains';

create operator pg_catalog.@> (procedure = path_contain_pt, leftarg = path, rightarg = point);

comment on operator pg_catalog.@>(path , point) is 'contains';

create operator pg_catalog.@> (procedure = poly_contain_pt, leftarg = polygon, rightarg = point);

comment on operator pg_catalog.@>(polygon , point) is 'contains';

create operator pg_catalog.@> (procedure = poly_contain, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.@>(polygon , polygon) is 'contains';

create operator pg_catalog.@> (procedure = tsq_mcontains, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.@>(tsquery , tsquery) is 'contains';

create operator pg_catalog.@? (procedure = jsonb_path_exists_opr, leftarg = jsonb, rightarg = jsonpath);

comment on operator pg_catalog.@?(jsonb , jsonpath) is 'jsonpath exists';

create operator pg_catalog.@@ (procedure = jsonb_path_match_opr, leftarg = jsonb, rightarg = jsonpath);

comment on operator pg_catalog.@@(jsonb , jsonpath) is 'jsonpath match';

create operator pg_catalog.@@ (procedure = ts_match_tt, leftarg = text, rightarg = text);

comment on operator pg_catalog.@@(text , text) is 'text search match';

create operator pg_catalog.@@ (procedure = ts_match_tq, leftarg = text, rightarg = tsquery);

comment on operator pg_catalog.@@(text , tsquery) is 'text search match';

create operator pg_catalog.@@ (procedure = ts_match_qv, leftarg = tsquery, rightarg = tsvector);

comment on operator pg_catalog.@@(tsquery , tsvector) is 'text search match';

create operator pg_catalog.@@ (procedure = ts_match_vq, leftarg = tsvector, rightarg = tsquery);

comment on operator pg_catalog.@@(tsvector , tsquery) is 'text search match';

create operator pg_catalog.@@ (procedure = box_center, rightarg = box);

comment on operator pg_catalog.@@(none , box) is 'center of';

create operator pg_catalog.@@ (procedure = circle_center, rightarg = circle);

comment on operator pg_catalog.@@(none , circle) is 'center of';

create operator pg_catalog.@@ (procedure = lseg_center, rightarg = lseg);

comment on operator pg_catalog.@@(none , lseg) is 'center of';

create operator pg_catalog.@@ (procedure = path_center, rightarg = path);

comment on operator pg_catalog.@@(none , path) is 'center of';

create operator pg_catalog.@@ (procedure = poly_center, rightarg = polygon);

comment on operator pg_catalog.@@(none , polygon) is 'center of';

create operator pg_catalog.@@@ (procedure = ts_match_qv, leftarg = tsquery, rightarg = tsvector);

comment on operator pg_catalog.@@@(tsquery , tsvector) is 'deprecated, use @@ instead';

create operator pg_catalog.@@@ (procedure = ts_match_vq, leftarg = tsvector, rightarg = tsquery);

comment on operator pg_catalog.@@@(tsvector , tsquery) is 'deprecated, use @@ instead';

create operator pg_catalog.^ (procedure = dpow, leftarg = double precision, rightarg = double precision);

comment on operator pg_catalog.^(double precision , double precision) is 'exponentiation';

create operator pg_catalog.^ (procedure = numeric_power, leftarg = numeric, rightarg = numeric);

comment on operator pg_catalog.^(numeric , numeric) is 'exponentiation';

create operator pg_catalog.^@ (procedure = starts_with, leftarg = text, rightarg = text);

comment on operator pg_catalog.^@(text , text) is 'starts with';

create operator pg_catalog.|&> (procedure = box_overabove, leftarg = box, rightarg = box);

comment on operator pg_catalog.|&>(box , box) is 'overlaps or is above';

create operator pg_catalog.|&> (procedure = circle_overabove, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.|&>(circle , circle) is 'overlaps or is above';

create operator pg_catalog.|&> (procedure = poly_overabove, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.|&>(polygon , polygon) is 'overlaps or is above';

create operator pg_catalog.| (procedure = int8or, leftarg = bigint, rightarg = bigint);

comment on operator pg_catalog.|(bigint , bigint) is 'bitwise or';

create operator pg_catalog.| (procedure = bitor, leftarg = bit, rightarg = bit);

comment on operator pg_catalog.|(bit , bit) is 'bitwise or';

create operator pg_catalog.| (procedure = inetor, leftarg = inet, rightarg = inet);

comment on operator pg_catalog.|(inet , inet) is 'bitwise or';

create operator pg_catalog.| (procedure = int4or, leftarg = integer, rightarg = integer);

comment on operator pg_catalog.|(integer , integer) is 'bitwise or';

create operator pg_catalog.| (procedure = macaddr_or, leftarg = macaddr, rightarg = macaddr);

comment on operator pg_catalog.|(macaddr , macaddr) is 'bitwise or';

create operator pg_catalog.| (procedure = macaddr8_or, leftarg = macaddr8, rightarg = macaddr8);

comment on operator pg_catalog.|(macaddr8 , macaddr8) is 'bitwise or';

create operator pg_catalog.| (procedure = int2or, leftarg = smallint, rightarg = smallint);

comment on operator pg_catalog.|(smallint , smallint) is 'bitwise or';

create operator pg_catalog.|/ (procedure = dsqrt, rightarg = double precision);

comment on operator pg_catalog.|/(none , double precision) is 'square root';

create operator pg_catalog.|>> (procedure = box_above, leftarg = box, rightarg = box);

comment on operator pg_catalog.|>>(box , box) is 'is above';

create operator pg_catalog.|>> (procedure = circle_above, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.|>>(circle , circle) is 'is above';

create operator pg_catalog.|>> (procedure = poly_above, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.|>>(polygon , polygon) is 'is above';

create operator pg_catalog.|| (procedure = array_cat, leftarg = anyarray, rightarg = anyarray);

comment on operator pg_catalog.||(anyarray , anyarray) is 'concatenate';

create operator pg_catalog.|| (procedure = array_append, leftarg = anyarray, rightarg = anyelement);

comment on operator pg_catalog.||(anyarray , anyelement) is 'append element onto end of array';

create operator pg_catalog.|| (procedure = array_prepend, leftarg = anyelement, rightarg = anyarray);

comment on operator pg_catalog.||(anyelement , anyarray) is 'prepend element onto front of array';

create operator pg_catalog.|| (procedure = anytextcat, leftarg = anynonarray, rightarg = text);

comment on operator pg_catalog.||(anynonarray , text) is 'concatenate';

create operator pg_catalog.|| (procedure = bitcat, leftarg = bit varying, rightarg = bit varying);

comment on operator pg_catalog.||(bit varying , bit varying) is 'concatenate';

create operator pg_catalog.|| (procedure = byteacat, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.||(bytea , bytea) is 'concatenate';

create operator pg_catalog.|| (procedure = jsonb_concat, leftarg = jsonb, rightarg = jsonb);

comment on operator pg_catalog.||(jsonb , jsonb) is 'concatenate';

create operator pg_catalog.|| (procedure = textanycat, leftarg = text, rightarg = anynonarray);

comment on operator pg_catalog.||(text , anynonarray) is 'concatenate';

create operator pg_catalog.|| (procedure = textcat, leftarg = text, rightarg = text);

comment on operator pg_catalog.||(text , text) is 'concatenate';

create operator pg_catalog.|| (procedure = tsquery_or, leftarg = tsquery, rightarg = tsquery);

comment on operator pg_catalog.||(tsquery , tsquery) is 'OR-concatenate';

create operator pg_catalog.|| (procedure = tsvector_concat, leftarg = tsvector, rightarg = tsvector);

comment on operator pg_catalog.||(tsvector , tsvector) is 'concatenate';

create operator pg_catalog.||/ (procedure = dcbrt, rightarg = double precision);

comment on operator pg_catalog.||/(none , double precision) is 'cube root';

create operator pg_catalog.~ (procedure = aclcontains, leftarg = aclitem[], rightarg = aclitem);

comment on operator pg_catalog.~(aclitem[] , aclitem) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = box_contain, leftarg = box, rightarg = box);

comment on operator pg_catalog.~(box , box) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = bpcharregexeq, leftarg = char, rightarg = text);

comment on operator pg_catalog.~(char , text) is 'matches regular expression, case-sensitive';

create operator pg_catalog.~ (procedure = circle_contain, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.~(circle , circle) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = circle_contain_pt, leftarg = circle, rightarg = point);

comment on operator pg_catalog.~(circle , point) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = nameregexeq, leftarg = name, rightarg = text);

comment on operator pg_catalog.~(name , text) is 'matches regular expression, case-sensitive';

create operator pg_catalog.~ (procedure = path_contain_pt, leftarg = path, rightarg = point);

comment on operator pg_catalog.~(path , point) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = poly_contain_pt, leftarg = polygon, rightarg = point);

comment on operator pg_catalog.~(polygon , point) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = poly_contain, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.~(polygon , polygon) is 'deprecated, use @> instead';

create operator pg_catalog.~ (procedure = textregexeq, leftarg = text, rightarg = text);

comment on operator pg_catalog.~(text , text) is 'matches regular expression, case-sensitive';

create operator pg_catalog.~ (procedure = int8not, rightarg = bigint);

comment on operator pg_catalog.~(none , bigint) is 'bitwise not';

create operator pg_catalog.~ (procedure = bitnot, rightarg = bit);

comment on operator pg_catalog.~(none , bit) is 'bitwise not';

create operator pg_catalog.~ (procedure = inetnot, rightarg = inet);

comment on operator pg_catalog.~(none , inet) is 'bitwise not';

create operator pg_catalog.~ (procedure = int4not, rightarg = integer);

comment on operator pg_catalog.~(none , integer) is 'bitwise not';

create operator pg_catalog.~ (procedure = macaddr_not, rightarg = macaddr);

comment on operator pg_catalog.~(none , macaddr) is 'bitwise not';

create operator pg_catalog.~ (procedure = macaddr8_not, rightarg = macaddr8);

comment on operator pg_catalog.~(none , macaddr8) is 'bitwise not';

create operator pg_catalog.~ (procedure = int2not, rightarg = smallint);

comment on operator pg_catalog.~(none , smallint) is 'bitwise not';

create operator pg_catalog.~* (procedure = bpcharicregexeq, leftarg = char, rightarg = text);

comment on operator pg_catalog.~*(char , text) is 'matches regular expression, case-insensitive';

create operator pg_catalog.~* (procedure = nameicregexeq, leftarg = name, rightarg = text);

comment on operator pg_catalog.~*(name , text) is 'matches regular expression, case-insensitive';

create operator pg_catalog.~* (procedure = texticregexeq, leftarg = text, rightarg = text);

comment on operator pg_catalog.~*(text , text) is 'matches regular expression, case-insensitive';

create operator pg_catalog.~<=~ (procedure = bpchar_pattern_le, leftarg = char, rightarg = char);

comment on operator pg_catalog.~<=~(char , char) is 'less than or equal';

create operator pg_catalog.~<=~ (procedure = text_pattern_le, leftarg = text, rightarg = text);

comment on operator pg_catalog.~<=~(text , text) is 'less than or equal';

create operator pg_catalog.~<~ (procedure = bpchar_pattern_lt, leftarg = char, rightarg = char);

comment on operator pg_catalog.~<~(char , char) is 'less than';

create operator pg_catalog.~<~ (procedure = text_pattern_lt, leftarg = text, rightarg = text);

comment on operator pg_catalog.~<~(text , text) is 'less than';

create operator pg_catalog.~= (procedure = box_same, leftarg = box, rightarg = box);

comment on operator pg_catalog.~=(box , box) is 'same as';

create operator pg_catalog.~= (procedure = circle_same, leftarg = circle, rightarg = circle);

comment on operator pg_catalog.~=(circle , circle) is 'same as';

create operator pg_catalog.~= (procedure = point_eq, leftarg = point, rightarg = point);

comment on operator pg_catalog.~=(point , point) is 'same as';

create operator pg_catalog.~= (procedure = poly_same, leftarg = polygon, rightarg = polygon);

comment on operator pg_catalog.~=(polygon , polygon) is 'same as';

create operator pg_catalog.~>=~ (procedure = bpchar_pattern_ge, leftarg = char, rightarg = char);

comment on operator pg_catalog.~>=~(char , char) is 'greater than or equal';

create operator pg_catalog.~>=~ (procedure = text_pattern_ge, leftarg = text, rightarg = text);

comment on operator pg_catalog.~>=~(text , text) is 'greater than or equal';

create operator pg_catalog.~>~ (procedure = bpchar_pattern_gt, leftarg = char, rightarg = char);

comment on operator pg_catalog.~>~(char , char) is 'greater than';

create operator pg_catalog.~>~ (procedure = text_pattern_gt, leftarg = text, rightarg = text);

comment on operator pg_catalog.~>~(text , text) is 'greater than';

create operator pg_catalog.~~ (procedure = bytealike, leftarg = bytea, rightarg = bytea);

comment on operator pg_catalog.~~(bytea , bytea) is 'matches LIKE expression';

create operator pg_catalog.~~ (procedure = bpcharlike, leftarg = char, rightarg = text);

comment on operator pg_catalog.~~(char , text) is 'matches LIKE expression';

create operator pg_catalog.~~ (procedure = namelike, leftarg = name, rightarg = text);

comment on operator pg_catalog.~~(name , text) is 'matches LIKE expression';

create operator pg_catalog.~~ (procedure = textlike, leftarg = text, rightarg = text);

comment on operator pg_catalog.~~(text , text) is 'matches LIKE expression';

create operator pg_catalog.~~* (procedure = bpchariclike, leftarg = char, rightarg = text);

comment on operator pg_catalog.~~*(char , text) is 'matches LIKE expression, case-insensitive';

create operator pg_catalog.~~* (procedure = nameiclike, leftarg = name, rightarg = text);

comment on operator pg_catalog.~~*(name , text) is 'matches LIKE expression, case-insensitive';

create operator pg_catalog.~~* (procedure = texticlike, leftarg = text, rightarg = text);

comment on operator pg_catalog.~~*(text , text) is 'matches LIKE expression, case-insensitive';

create aggregate pg_catalog.array_agg(anyarray) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.array_agg(anyarray) is 'concatenate aggregate input into an array';

create aggregate pg_catalog.array_agg(anynonarray) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.array_agg(anynonarray) is 'concatenate aggregate input into an array';

create aggregate pg_catalog.avg(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(bigint) is 'the average (arithmetic mean) as numeric of all bigint values';

create aggregate pg_catalog.avg(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(double precision) is 'the average (arithmetic mean) as float8 of all float8 values';

create aggregate pg_catalog.avg(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(integer) is 'the average (arithmetic mean) as numeric of all integer values';

create aggregate pg_catalog.avg(interval) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(interval) is 'the average (arithmetic mean) as interval of all interval values';

create aggregate pg_catalog.avg(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(numeric) is 'the average (arithmetic mean) as numeric of all numeric values';

create aggregate pg_catalog.avg(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(real) is 'the average (arithmetic mean) as float8 of all float4 values';

create aggregate pg_catalog.avg(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.avg(smallint) is 'the average (arithmetic mean) as numeric of all smallint values';

create aggregate pg_catalog.bit_and(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_and(bigint) is 'bitwise-and bigint aggregate';

create aggregate pg_catalog.bit_and(bit) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_and(bit) is 'bitwise-and bit aggregate';

create aggregate pg_catalog.bit_and(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_and(integer) is 'bitwise-and integer aggregate';

create aggregate pg_catalog.bit_and(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_and(smallint) is 'bitwise-and smallint aggregate';

create aggregate pg_catalog.bit_or(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_or(bigint) is 'bitwise-or bigint aggregate';

create aggregate pg_catalog.bit_or(bit) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_or(bit) is 'bitwise-or bit aggregate';

create aggregate pg_catalog.bit_or(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_or(integer) is 'bitwise-or integer aggregate';

create aggregate pg_catalog.bit_or(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bit_or(smallint) is 'bitwise-or smallint aggregate';

create aggregate pg_catalog.bool_and(boolean) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bool_and(boolean) is 'boolean-and aggregate';

create aggregate pg_catalog.bool_or(boolean) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.bool_or(boolean) is 'boolean-or aggregate';

create aggregate pg_catalog.corr(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.corr(double precision, double precision) is 'correlation coefficient';

create aggregate pg_catalog.count("any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.count("any") is 'number of input rows for which the input expression is not null';

create aggregate pg_catalog.count() (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.count() is 'number of input rows';

create aggregate pg_catalog.covar_pop(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.covar_pop(double precision, double precision) is 'population covariance';

create aggregate pg_catalog.covar_samp(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.covar_samp(double precision, double precision) is 'sample covariance';

create aggregate pg_catalog.cume_dist("any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.cume_dist("any") is 'cumulative distribution of hypothetical row';

create aggregate pg_catalog.dense_rank("any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.dense_rank("any") is 'rank of hypothetical row without gaps';

create aggregate pg_catalog.every(boolean) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.every(boolean) is 'boolean-and aggregate';

create aggregate pg_catalog.json_agg(anyelement) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.json_agg(anyelement) is 'aggregate input into json';

create aggregate pg_catalog.json_object_agg("any", "any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.json_object_agg("any", "any") is 'aggregate input into a json object';

create aggregate pg_catalog.jsonb_agg(anyelement) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.jsonb_agg(anyelement) is 'aggregate input into jsonb';

create aggregate pg_catalog.jsonb_object_agg("any", "any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.jsonb_object_agg("any", "any") is 'aggregate inputs into jsonb object';

create aggregate pg_catalog.max(anyarray) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(anyarray) is 'maximum value of all anyarray input values';

create aggregate pg_catalog.max(anyenum) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(anyenum) is 'maximum value of all enum input values';

create aggregate pg_catalog.max(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(bigint) is 'maximum value of all bigint input values';

create aggregate pg_catalog.max(char) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(char) is 'maximum value of all bpchar input values';

create aggregate pg_catalog.max(date) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(date) is 'maximum value of all date input values';

create aggregate pg_catalog.max(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(double precision) is 'maximum value of all float8 input values';

create aggregate pg_catalog.max(inet) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(inet) is 'maximum value of all inet input values';

create aggregate pg_catalog.max(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(integer) is 'maximum value of all integer input values';

create aggregate pg_catalog.max(interval) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(interval) is 'maximum value of all interval input values';

create aggregate pg_catalog.max(money) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(money) is 'maximum value of all money input values';

create aggregate pg_catalog.max(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(numeric) is 'maximum value of all numeric input values';

create aggregate pg_catalog.max(oid) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(oid) is 'maximum value of all oid input values';

create aggregate pg_catalog.max(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(real) is 'maximum value of all float4 input values';

create aggregate pg_catalog.max(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(smallint) is 'maximum value of all smallint input values';

create aggregate pg_catalog.max(text) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(text) is 'maximum value of all text input values';

create aggregate pg_catalog.max(tid) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(tid) is 'maximum value of all tid input values';

create aggregate pg_catalog.max(time with time zone) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(time with time zone) is 'maximum value of all time with time zone input values';

create aggregate pg_catalog.max(time) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(time) is 'maximum value of all time input values';

create aggregate pg_catalog.max(timestamp with time zone) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(timestamp with time zone) is 'maximum value of all timestamp with time zone input values';

create aggregate pg_catalog.max(timestamp) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.max(timestamp) is 'maximum value of all timestamp input values';

create aggregate pg_catalog.min(anyarray) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(anyarray) is 'minimum value of all anyarray input values';

create aggregate pg_catalog.min(anyenum) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(anyenum) is 'minimum value of all enum input values';

create aggregate pg_catalog.min(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(bigint) is 'minimum value of all bigint input values';

create aggregate pg_catalog.min(char) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(char) is 'minimum value of all bpchar input values';

create aggregate pg_catalog.min(date) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(date) is 'minimum value of all date input values';

create aggregate pg_catalog.min(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(double precision) is 'minimum value of all float8 input values';

create aggregate pg_catalog.min(inet) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(inet) is 'minimum value of all inet input values';

create aggregate pg_catalog.min(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(integer) is 'minimum value of all integer input values';

create aggregate pg_catalog.min(interval) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(interval) is 'minimum value of all interval input values';

create aggregate pg_catalog.min(money) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(money) is 'minimum value of all money input values';

create aggregate pg_catalog.min(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(numeric) is 'minimum value of all numeric input values';

create aggregate pg_catalog.min(oid) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(oid) is 'minimum value of all oid input values';

create aggregate pg_catalog.min(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(real) is 'minimum value of all float4 input values';

create aggregate pg_catalog.min(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(smallint) is 'minimum value of all smallint input values';

create aggregate pg_catalog.min(text) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(text) is 'minimum value of all text values';

create aggregate pg_catalog.min(tid) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(tid) is 'minimum value of all tid input values';

create aggregate pg_catalog.min(time with time zone) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(time with time zone) is 'minimum value of all time with time zone input values';

create aggregate pg_catalog.min(time) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(time) is 'minimum value of all time input values';

create aggregate pg_catalog.min(timestamp with time zone) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(timestamp with time zone) is 'minimum value of all timestamp with time zone input values';

create aggregate pg_catalog.min(timestamp) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.min(timestamp) is 'minimum value of all timestamp input values';

create aggregate pg_catalog.mode(anyelement) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.mode(anyelement) is 'most common value';

create aggregate pg_catalog.percent_rank("any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percent_rank("any") is 'fractional rank of hypothetical row';

create aggregate pg_catalog.percentile_cont(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percentile_cont(double precision, double precision) is 'continuous distribution percentile';

create aggregate pg_catalog.percentile_cont(double precision, interval) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percentile_cont(double precision, interval) is 'continuous distribution percentile';

create aggregate pg_catalog.percentile_cont(double precision[], double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percentile_cont(double precision[], double precision) is 'multiple continuous percentiles';

create aggregate pg_catalog.percentile_cont(double precision[], interval) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percentile_cont(double precision[], interval) is 'multiple continuous percentiles';

create aggregate pg_catalog.percentile_disc(double precision, anyelement) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percentile_disc(double precision, anyelement) is 'discrete percentile';

create aggregate pg_catalog.percentile_disc(double precision[], anyelement) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.percentile_disc(double precision[], anyelement) is 'multiple discrete percentiles';

create aggregate pg_catalog.rank("any") (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.rank("any") is 'rank of hypothetical row';

create aggregate pg_catalog.regr_avgx(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_avgx(double precision, double precision) is 'average of the independent variable (sum(X)/N)';

create aggregate pg_catalog.regr_avgy(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_avgy(double precision, double precision) is 'average of the dependent variable (sum(Y)/N)';

create aggregate pg_catalog.regr_count(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_count(double precision, double precision) is 'number of input rows in which both expressions are not null';

create aggregate pg_catalog.regr_intercept(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_intercept(double precision, double precision) is 'y-intercept of the least-squares-fit linear equation determined by the (X, Y) pairs';

create aggregate pg_catalog.regr_r2(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_r2(double precision, double precision) is 'square of the correlation coefficient';

create aggregate pg_catalog.regr_slope(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_slope(double precision, double precision) is 'slope of the least-squares-fit linear equation determined by the (X, Y) pairs';

create aggregate pg_catalog.regr_sxx(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_sxx(double precision, double precision) is 'sum of squares of the independent variable (sum(X^2) - sum(X)^2/N)';

create aggregate pg_catalog.regr_sxy(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_sxy(double precision, double precision) is 'sum of products of independent times dependent variable (sum(X*Y) - sum(X) * sum(Y)/N)';

create aggregate pg_catalog.regr_syy(double precision, double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.regr_syy(double precision, double precision) is 'sum of squares of the dependent variable (sum(Y^2) - sum(Y)^2/N)';

create aggregate pg_catalog.stddev(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev(bigint) is 'historical alias for stddev_samp';

create aggregate pg_catalog.stddev(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev(double precision) is 'historical alias for stddev_samp';

create aggregate pg_catalog.stddev(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev(integer) is 'historical alias for stddev_samp';

create aggregate pg_catalog.stddev(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev(numeric) is 'historical alias for stddev_samp';

create aggregate pg_catalog.stddev(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev(real) is 'historical alias for stddev_samp';

create aggregate pg_catalog.stddev(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev(smallint) is 'historical alias for stddev_samp';

create aggregate pg_catalog.stddev_pop(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_pop(bigint) is 'population standard deviation of bigint input values';

create aggregate pg_catalog.stddev_pop(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_pop(double precision) is 'population standard deviation of float8 input values';

create aggregate pg_catalog.stddev_pop(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_pop(integer) is 'population standard deviation of integer input values';

create aggregate pg_catalog.stddev_pop(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_pop(numeric) is 'population standard deviation of numeric input values';

create aggregate pg_catalog.stddev_pop(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_pop(real) is 'population standard deviation of float4 input values';

create aggregate pg_catalog.stddev_pop(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_pop(smallint) is 'population standard deviation of smallint input values';

create aggregate pg_catalog.stddev_samp(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_samp(bigint) is 'sample standard deviation of bigint input values';

create aggregate pg_catalog.stddev_samp(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_samp(double precision) is 'sample standard deviation of float8 input values';

create aggregate pg_catalog.stddev_samp(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_samp(integer) is 'sample standard deviation of integer input values';

create aggregate pg_catalog.stddev_samp(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_samp(numeric) is 'sample standard deviation of numeric input values';

create aggregate pg_catalog.stddev_samp(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_samp(real) is 'sample standard deviation of float4 input values';

create aggregate pg_catalog.stddev_samp(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.stddev_samp(smallint) is 'sample standard deviation of smallint input values';

create aggregate pg_catalog.string_agg(bytea, bytea) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.string_agg(bytea, bytea) is 'concatenate aggregate input into a bytea';

create aggregate pg_catalog.string_agg(text, text) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.string_agg(text, text) is 'concatenate aggregate input into a string';

create aggregate pg_catalog.sum(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(bigint) is 'sum as numeric across all bigint input values';

create aggregate pg_catalog.sum(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(double precision) is 'sum as float8 across all float8 input values';

create aggregate pg_catalog.sum(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(integer) is 'sum as bigint across all integer input values';

create aggregate pg_catalog.sum(interval) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(interval) is 'sum as interval across all interval input values';

create aggregate pg_catalog.sum(money) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(money) is 'sum as money across all money input values';

create aggregate pg_catalog.sum(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(numeric) is 'sum as numeric across all numeric input values';

create aggregate pg_catalog.sum(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(real) is 'sum as float4 across all float4 input values';

create aggregate pg_catalog.sum(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.sum(smallint) is 'sum as bigint across all smallint input values';

create aggregate pg_catalog.var_pop(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_pop(bigint) is 'population variance of bigint input values (square of the population standard deviation)';

create aggregate pg_catalog.var_pop(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_pop(double precision) is 'population variance of float8 input values (square of the population standard deviation)';

create aggregate pg_catalog.var_pop(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_pop(integer) is 'population variance of integer input values (square of the population standard deviation)';

create aggregate pg_catalog.var_pop(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_pop(numeric) is 'population variance of numeric input values (square of the population standard deviation)';

create aggregate pg_catalog.var_pop(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_pop(real) is 'population variance of float4 input values (square of the population standard deviation)';

create aggregate pg_catalog.var_pop(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_pop(smallint) is 'population variance of smallint input values (square of the population standard deviation)';

create aggregate pg_catalog.var_samp(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_samp(bigint) is 'sample variance of bigint input values (square of the sample standard deviation)';

create aggregate pg_catalog.var_samp(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_samp(double precision) is 'sample variance of float8 input values (square of the sample standard deviation)';

create aggregate pg_catalog.var_samp(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_samp(integer) is 'sample variance of integer input values (square of the sample standard deviation)';

create aggregate pg_catalog.var_samp(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_samp(numeric) is 'sample variance of numeric input values (square of the sample standard deviation)';

create aggregate pg_catalog.var_samp(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_samp(real) is 'sample variance of float4 input values (square of the sample standard deviation)';

create aggregate pg_catalog.var_samp(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.var_samp(smallint) is 'sample variance of smallint input values (square of the sample standard deviation)';

create aggregate pg_catalog.variance(bigint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.variance(bigint) is 'historical alias for var_samp';

create aggregate pg_catalog.variance(double precision) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.variance(double precision) is 'historical alias for var_samp';

create aggregate pg_catalog.variance(integer) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.variance(integer) is 'historical alias for var_samp';

create aggregate pg_catalog.variance(numeric) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.variance(numeric) is 'historical alias for var_samp';

create aggregate pg_catalog.variance(real) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.variance(real) is 'historical alias for var_samp';

create aggregate pg_catalog.variance(smallint) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.variance(smallint) is 'historical alias for var_samp';

create aggregate pg_catalog.xmlagg(xml) (
sfunc = ???,
stype = ???
);

comment on aggregate pg_catalog.xmlagg(xml) is 'concatenate XML values';

