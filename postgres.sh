#创建超级用户
createuser --superuser --echo sequelize
#利用sequelize用户创建数据库development
createdb --username=sequelize development

\l #mysql> show databases;
\dt #mysql> show tables;
\d tableName; #mysql> desc tableName;
\di #mysql> show index from databaseName;

select pg_database_size('playboy'); #查看playboy数据库的大小
select pg_database.datname, pg_database_size(pg_database.datname) AS size from pg_database; #查看所有数据库的大
select pg_size_pretty(pg_database_size('playboy')); #以KB，MB，GB的方式来查看数据库大小
select spcname from pg_tablespace; #查看所有表空间

#末尾的分号不能少
copy weather from '/Users/lutao/coffee_js/weather.txt';
copy weather to '/Users/lutao/coffee_js/weather.txt';

#Postgres表名和列名区分大小写，会自动将传入的大写转为小写，除非将名字用引号圈引。
# All identifiers (including column names) that are not double-quoted are folded to lower case in PostgreSQL. So, PostgreSQL column names are case-sensitive. Values are enclosed in single quotes.
# SELECT * FROM persons WHERE "first_Name" = 'xyz'; #例子

#postgres中"字段名"用双引号圈引，'值'用单引号圈引

select _id::"varchar" from trade_records;
SELECT "_id" FROM "trade_records" WHERE "_id"::"varchar" LIKE '%9a7a%'; #cast类型 _id本来为uuid，cast为varchar型的

#如果遇到权限问题，修改/usr/local/var/postgres/pg_hba.conf
#将校验方法改为trust
host all all 127.0.0.1/32 trust

# 激活hstore
CREATE EXTENSION hstore;
