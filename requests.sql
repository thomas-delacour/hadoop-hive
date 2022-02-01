select count(titleId) from akas_tmp where language='fr'; # 21.284 seconds
select count(titleId) from akas where language='fr'; # 2.252 seconds


select count(tconst) from basics_tmp where titleType='movie'; # 8.248 seconds
select count(tconst) from basics where titleType='movie'; # 1.24 seconds

select count(primaryName) from name_basics_tmp join principals_tmp on principals_tmp.nconst=name_basics_tmp.nconst; # 191.452 seconds
select count(primaryName) from name_basics join principals on principals.nconst=name_basics.nconst; # 41.144 seconds

select distinct primaryName, job from name_basics_tmp join principals_tmp on principals_tmp.nconst=name_basics_tmp.nconst where job is not NULL limit 1000; # 93.665 seconds
select distinct primaryName, job from name_basics join principals on principals.nconst=name_basics.nconst where job is not NULL limit 1000; # 36.173 seconds