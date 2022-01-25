CREATE DATABASE IF NOT EXISTS imdb;

USE imdb;

CREATE TABLE akas_tmp
(
    titleId CHAR(9),
    ordering SMALLINT,
    title VARCHAR(64),
    region VARCHAR(64),
    language VARCHAR(15),
    types array<string>,
    attributes array<string>,
    isOriginalTitle BOOLEAN

)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;


LOAD DATA INPATH '/title.akas.tsv' INTO TABLE akas_tmp;


CREATE TABLE basics_tmp
(
    tconst CHAR(9),
    titleType VARCHAR(12),
    primaryTitle VARCHAR(100),
    originalTitle VARCHAR(100),
    isAdult BOOLEAN,
    startYear CHAR(4),
    endYear CHAR(4),
    runtimeMinutes SMALLINT,
    genres array<string>

)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;

LOAD DATA INPATH '/title.basics.tsv' INTO TABLE basics_tmp;

CREATE TABLE crew_tmp
(
    tconst CHAR(9),
    directors array<string>,
    writers array<string>

)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;

LOAD DATA INPATH '/title.crew.tsv' INTO TABLE crew_tmp;

CREATE TABLE episode_tmp
(
    tconst CHAR(9),
    parentTconst CHAR(9),
    seasonNumber SMALLINT,
    episodeNumber SMALLINT
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;

LOAD DATA INPATH '/title.episode.tsv' INTO TABLE episode_tmp;

CREATE TABLE principals_tmp
(
    tconst CHAR(9),
    ordering SMALLINT,
    nconst VARCHAR(64),
    category VARCHAR(64),
    job VARCHAR(64),
    characters VARCHAR(64)
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;

LOAD DATA INPATH '/title.principals.tsv' INTO TABLE principals_tmp;

CREATE TABLE ratings_tmp
(
    tconst CHAR(9),
    averageRating FLOAT,
    numVotes INT
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;

LOAD DATA INPATH '/title.ratings.tsv' INTO TABLE ratings_tmp;


CREATE TABLE name_basics_tmp
(
    nconst VARCHAR(64),
    primaryName VARCHAR(64),
    birthYear CHAR(4),
    deathYear CHAR(4),
    primaryProfession array<string>,
    knownForTitles array<CHAR(9)>
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
STORED AS TEXTFILE;

LOAD DATA INPATH '/name.basics.tsv' INTO TABLE name_basics_tmp;