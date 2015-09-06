CREATE TABLE STATION (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME TEXT NOT NULL,
    ADDRESS TEXT NOT NULL,
    LAT REAL NOT NULL,
    LONG REAL NOT NULL,
    REFERENCE_VALUE REAL NOT NULL
);

CREATE TABLE READING (
    STATION INT NOT NULL,
    TIMESTAMP TEXT NOT NULL,
    DEPTH REAL NOT NULL
);

CREATE INDEX IDX_READING_STATION ON READING(STATION);

CREATE INDEX IDX_READING_TIMESTAMP ON READING(TIMESTAMP);


INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Malmslättsvägen","localhost:12345",58.407728,15.599847,3.0);

INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Universitetsvägen","localhost:12346",58.397790,15.571051,3.0);

INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Drottninggatan","localhost:12347",58.409207,15.628723,3.0);

INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Industrigatan","localhost:12348",58.415945,15.587524,3.0);

INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Djurgårdsgatan","localhost:12349",58.400447,15.609149,3.0);

INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Arduino","192.168.240.1:299",58.900447,15.009149,2.0); 

INSERT INTO
    STATION (NAME,ADDRESS,LAT,LONG,REFERENCE_VALUE)
    VALUES  ("Teknikringen","localhost:12350",58.394220,15.561735,3.0);
