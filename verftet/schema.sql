DROP TABLE IF EXISTS type_rett;
DROP TABLE IF EXISTS retter;
DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE type_rett (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  navn TEXT UNIQUE NOT NULL
);

CREATE TABLE retter (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type_id INTEGER NOT NULL,
  rett_navn TEXT UNIQUE NOT NULL,
  rett_beskrivelse TEXT,
  rett_pris INTEGER NOT NULL,
  FOREIGN KEY (type_id) REFERENCES type_rett (id)
);
    
