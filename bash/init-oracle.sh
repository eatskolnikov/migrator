#!/usr/bin/env bash

export PATH=/u01/app/oracle/product/11.2.0/xe/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_SID=XE

sqlplus /nolog <<EOF
connect SYS/oracle AS SYSDBA;
startup

create user TEST IDENTIFIED BY 123;
grant all privileges to TEST;

create user MOO IDENTIFIED BY 123;
grant all privileges to MOO;
EOF



