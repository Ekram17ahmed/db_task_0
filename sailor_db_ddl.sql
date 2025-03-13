DROP TABLE IF EXISTS Sailors;
DROP TABLE IF EXISTS Boats;
DROP TABLE IF EXISTS Reserves;


-- creating sailors table
CREATE TABLE Sailors(
    sid INT PRIMARY KEY ,
    sname VARCHAR(50),
    rating INT,
    age INT
);

-- creating boats table
CREATE TABLE Boats(
    bid INT PRIMARY KEY ,
    bname VARCHAR(50),
    color VARCHAR(15)
);

-- creating reserves table
CREATE TABLE Reserves(
    sid INT,
    bid INT,
    day DATE,
    PRIMARY KEY (sid , bid, day),
    FOREIGN KEY (sid) REFERENCES Sailors(sid),
    FOREIGN KEY (bid) REFERENCES Boats(bid)
);