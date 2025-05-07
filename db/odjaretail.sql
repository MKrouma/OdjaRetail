CREATE TABLE "supermarches" (
  "id" integer PRIMARY KEY,
  "nom" varchar,
  "adresse" varchar,
  "operateur" varchar,
  "geom" geometry,
  "created_at" timestamp
);

CREATE TABLE "villes" (
  "id" integer PRIMARY KEY,
  "nom" varchar,
  "population" integer,
  "superficie" integer,
  "created_at" timestamp
);

ALTER TABLE "supermarches" ADD FOREIGN KEY ("id") REFERENCES "villes" ("id");
