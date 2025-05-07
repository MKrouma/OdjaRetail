CREATE TABLE "supermarches" (
  "id" integer PRIMARY KEY,
  "nom" varchar,
  "adresse" varchar,
  "operateur" varchar,
  "geometry" geometry,
  "ville_id" integer,
  "created_at" timestamp
);

CREATE TABLE "villes" (
  "id" integer PRIMARY KEY,
  "nom" varchar,
  "superficie" float,
  "population" float,
  "pays" varchar,
  "created_at" timestamp
);

ALTER TABLE "supermarches" ADD FOREIGN KEY ("ville_id") REFERENCES "villes" ("id");
