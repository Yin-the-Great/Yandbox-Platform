# Yandbox-Platform 数据库设计文档
---

1. 数据库  
   | 数据库工具 |
   | :---: |
   | mysql |

   | 数据库名 | 字符集 | 字符序 |
   | :---: | :---: | :---: |
   | yandbox_platform_database | utf8mb4 | utf8mb4_0900_ai_ci |

2. 用户  
   | 用户 | 主机 | 角色 |
   | :---: | :---: | :---: |
   | myp_admin_user | % | myp_admin_role |

3. 角色  
   | 角色 | 主机 | 权限 | 
   | :---: | :---: | :---: |
   | myp_admin_role | % | yandbox_platform_database的所有权限| 

4. 表
   1. yandbox_platform_user (MyISAM)
   
   | 名称 | 类型 | 特性 |
   | :---: | :---: | :---: |
   | ypu_id_no | INT | primary, not null, auto_increment |
   | ypu_id | VARCHAR(32) | unique, not null, check(4<=len<=32) |
   | ypu_mail | VARCHAR(64) | unique, not null, default '' |
   | ypu_password | VARCHAR(32) | not null, check(6<=len<=32) |
   | ypu_phone | VARCHAR(16) | not null, default '' |
   | ypu_name | VARCHAR(32) | not null, default '' |
   | ypu_signature | VARCHAR(4096) | not null, default '' |
   | ypu_sex | CHAR(1) | not null, default '' |
   | ypu_birthday | DATE | not null, default '1900-01-01' |
   | ypu_country | VARCHAR(16) | not null, default '' |
   | ypu_province | VARCHAR(16) | not null, default '' |
   | ypu_city | VARCHAR(16) | not null, default '' | 
   | ypu_profession | VARCHAR(16) | not null, default '' |
   | ypu_photo | JSON | |
