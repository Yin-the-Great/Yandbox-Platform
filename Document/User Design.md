# Yandbox-Platform 用户设计文档

1. 功能
    1. 注册  
    用户操作信息：用户名、密码、邮箱（或手机）  
    用户表涉及字段：ID、用户名、密码、邮箱（或手机）  
    流程：  
        1. 用户点击注册按钮
        2. 反馈注册界面
        3. 用户输入注册信息
        4. 系统发送邮箱（手机）验证码
        5. 用户填写验证码
        6. 系统根据用户信息建立表项，ID自增
        7. 反馈登录界面  

    2. 登录  
    用户操作信息：用户名、密码  
    用户表涉及字段：用户名、密码  
    流程：
        1. 用户点击登录按钮
        2. 反馈登录界面
        3. 用户输入登录信息
        4. 系统根据信息在表中进行验证
        5. 根据验证结果反馈界面  

    3. 更改用户基本信息  
    用户操作信息：昵称、签名、性别、生日、居住地(国家、省、市)、职业  
    用户表操作信息：昵称、签名、性别、生日、国家、省、市、职业  
    流程：
        1. 用户点击基本信息
        2. 反馈用户基本信息界面
        3. 用户修改信息
        4. 系统修改数据库表项  

    4. 更改用户头像  
    用户操作信息：头像图片  
    用户表涉及字段：头像路径字段  
    服务器文件涉及：用户文件夹/头像文件夹  
    流程：  
        1. 用户点击基本信息  
        2. 用户点击头像图片  
        3. 陈列头像库（系统自带头像、用户自定义头像）  
        4. 用户选择头像或自定义头像  
        > * 若是自定义头像，将头像上传到用户文件夹头像文件夹下  
        > * 用户自定义头像上限为5，为5以上时删除文件夹下较旧的头像
        5. 系统修改数据库表项   
    
    5. 修改用户密码  
    用户操作信息：密码  
    用户表涉及字段：密码  
    流程：  
        1. 用户点击安全界面 
        * 根据旧密码修改
        1. 用户选择旧密码修改
        2. 用户输入新旧密码信息
        3. 系统修改数据库表项
        * 根据绑定邮箱（手机）修改
        1. 用户选择绑定邮箱（手机）修改
        2. 用户点击获取验证码
        3. 将验证码发至用户绑定邮箱（手机）
        4. 用户输入验证码与新密码
        5. 系统修改数据库表项

    6. 修改绑定邮箱（手机）  
    用户操作信息：绑定邮箱（手机）  
    用户表涉及字段：邮箱（手机）
    流程：
        1. 用户点击安全界面
        2. 用户修改绑定邮箱（手机）
        3. 系统发送邮箱（手机）验证码
        4. 用户输入验证码
        5. 系统修改数据库表项

2. 界面
    1. 登录界面
    2. 注册界面
    3. 用户界面-基本
    4. 用户界面-安全

3. 数据库  
    * yandbox_platform_user (MyISAM)
      
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

   * yandbox_platform_user_follow (MyISAM) (暂定，无功能界面)

   | 名称 | 类型 | 特性 |
   | :---: | :---: | :---: |
   | ypuf_active_id | INT/MEDIUMINT | primary |
   | ypuf_passive_id | INT/MEDIUMINT | primary |
