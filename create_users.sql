--creating customer users
create user C00001 identified by Welcome_123456789;
GRANT CREATE SESSION TO C00001;
GRANT UNLIMITED TABLESPACE TO C00001;

create user C00002 identified by Welcome_123456789;
GRANT CREATE SESSION TO C00002;
GRANT UNLIMITED TABLESPACE TO C00002; 

create user C00003 identified by Welcome_123456789;
GRANT CREATE SESSION TO C00003;
GRANT UNLIMITED TABLESPACE TO C00003; 

create user C00004 identified by Welcome_123456789;
GRANT CREATE SESSION TO C00004;
GRANT UNLIMITED TABLESPACE TO C00004; 

--creating  manager users
create user MGR00001 identified by Welcome_123456789;
GRANT CREATE SESSION TO MGR00001;
GRANT UNLIMITED TABLESPACE TO MGR00001; 

create user MGR00002 identified by Welcome_123456789;
GRANT CREATE SESSION TO MGR00002;
GRANT UNLIMITED TABLESPACE TO MGR00002; 

create user MGR00003 identified by Welcome_123456789;
GRANT CREATE SESSION TO MGR00003;
GRANT UNLIMITED TABLESPACE TO MGR00003;

create user MGR00004 identified by Welcome_123456789;
GRANT CREATE SESSION TO MGR00004;
GRANT UNLIMITED TABLESPACE TO MGR00004; 


-------------------------------------
create user DP00001 identified by Welcome_123456789;
GRANT CREATE SESSION TO DP00001;
GRANT UNLIMITED TABLESPACE TO DP00001;

create user DP00002 identified by Welcome_123456789;
GRANT CREATE SESSION TO DP00002;
GRANT UNLIMITED TABLESPACE TO DP00002;

create user DP00003 identified by Welcome_123456789;
GRANT CREATE SESSION TO DP00003;
GRANT UNLIMITED TABLESPACE TO DP00003;

create user DP00004 identified by Welcome_123456789;
GRANT CREATE SESSION TO DP00004;
GRANT UNLIMITED TABLESPACE TO DP00004;

--creating users by our names 
CREATE USER Jaswanth IDENTIFIED BY Welcome_123456789;
GRANT CREATE SESSION TO Jaswanth;
GRANT UNLIMITED TABLESPACE TO Jaswanth; 
CREATE USER Manish IDENTIFIED BY Welcome_123456789;
GRANT CREATE SESSION TO Manish;
GRANT UNLIMITED TABLESPACE TO Manish; 
CREATE USER Chirag IDENTIFIED BY Welcome_123456789;
GRANT CREATE SESSION TO Chirag;
GRANT UNLIMITED TABLESPACE TO Chirag; 