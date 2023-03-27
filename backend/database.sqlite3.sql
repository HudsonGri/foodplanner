BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	integer,
	"name"	TEXT,
	"email"	TEXT,
	"skill_level"	INTEGER,
	"cuisine_choices"	TEXT,
	"recipes"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "users" VALUES (1,'Michael T','michael.t@gmail.com',2,'mexican',NULL);
INSERT INTO "users" VALUES (2,'Hudson G','hudsongriffith@gmail.com',2,'italian','{}');
INSERT INTO "users" VALUES (4,'Derek Mo','derek.mo7203@gmail.com',2,'gluten,mediterranean',NULL);
COMMIT;
