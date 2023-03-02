BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	integer,
	"name"	TEXT,
	"email"	TEXT,
	"skill_level"	INTEGER,
	"cuisine_choices"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "users" VALUES (1,'Michael T','michael.t@gmail.com',2,'[''mexican'']');
INSERT INTO "users" VALUES (2,'Hudson G','hudsongriffith@gmail.com',2,'[''italian'']');
COMMIT;
