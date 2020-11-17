# Yandbox-Platform 数据库设计文档
---

1. 数据库  
   | 数据库工具 | 数据库名 |
   | :---: | :---: |
   | mysql | yandbox_platform_database |

2. 用户  
   | 用户 | 角色 |
   | :---: | :---: |
   | myp_admin_user | myp_admin_role |

3. 角色  
   | 角色 | 权限 | 
   | :---: | :---: |
   | my_admin_role | yandbox_platform_database的所有权限| 

4. 表
   1. yandbox_platform_user (MyISAM)
   
   | 名称 | 类型 | 特性 |
   | :---: | :---: | :---: |
   | ypu_id_no | INT/MEDIUMINT | primary, auto_increment |
   | ypu_id | VARCHAR(32) | unique |
   | ypu_password | VARCHAR(32) | |
   | ypu_mail | VARCHAR(64) | unique |
   | ypu_phone | VARCHAR(16) | unique |
   | ypu_name | VARCHAR(32) | |
   | ypu_signature | VARCHAR(4096) | |
   | ypu_sex | CHAR(1) | |
   | ypu_birthday | DATE | |
   | ypu_country | VARCHAR(16) | |
   | ypu_province | VARCHAR(16) | |
   | ypu_city | VARCHAR(16) | | 
   | ypu_profession | VARCHAR(16) | |
   | ypu_photo | TEXT | |