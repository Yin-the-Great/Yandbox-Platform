# Yandbox-Platform 任务设计文档
---

1. 功能
   1. 查看任务（查询类功能）
      1. 任务面板  
        显示所有符合查询条件的待领取任务（默认查询所有）
      2. 我的任务  
         1. 发布的任务  
            根据任务状态分为5个模块：
               - 未被领取
               - 正在进行
               - 需要更新
               - 需要验收
               - 归档（默认隐藏）
           2. 领取的任务  
            根据任务状态分为3个模块：
               - 正在进行
               - 等待更新
               - 等待验收
      3. 任务详情
         查看任务的详细信息
   2. 发布任务
   3. 领取、放弃任务
   4. 任务进度更新
      1. 记录完成情况，通过记录日志实现（仅领取者，更新进度消息表）
      2. 根据任务日志，更新任务进度（仅发布者）
      3. 修改任务信息
         1. 修改任务要求（仅发布者）
         2. 更新任务状态
            | 任务状态 | 描述 |
            | :---: | :---: |
            | 待接取 |  |
            | 进行中 |  |
            | 已完成 |  |
            | 已归档 | 完成并验收合格 |
            | 待修改 | 完成但验收不合格 |
            | 待更新 | 领取者需要更详细的任务说明 |

2. 界面
    notification（后续更新）

3. 数据库  
    yandbox_platform_task (MyISAM)
   | 名称 | 类型 | 描述 | 特性 |
   | :---: | :---: | :---: | :---: |
   | ypt_id | INT/MEDIUMINT | 主键、任务ID | unique, auto_increment, primary |
   | ypt_parent_id | INT/MEDIUMINT | 前继任务ID |  |
   | ypt_name | VARCHAR(64) | 任务名称 |  |
   | ypt_project | VARCHAR(64) | 任务所属项目名 |  |
   | ypt_status | TINYINT | 任务状态 |  |
   | ypt_track | TINYINT | 任务进度 |  |
   | ypt_tech_stack | VARCHAR(256) | 任务所需技术栈 |  |
   | ypt_description | VARCHAR(4096) | 任务详细描述 |  |
   | ypt_publisher | VARCHAR(32) | 发布者用户ID |  |
   | ypt_acceptor | VARCHAR(32) | 领取者用户ID |  |
   | ypt_acceptor_history | JSON | 历史领取者 |  |
   | ypt_deadline | DATE | 任务既定完成时间 |  |
   | ypt_create_time | TIMESTAMP | 任务发布时间 |  |
   | ypt_last_update_time | TIMESTAMP | 任务最后修改时间 |  |

    yandbox_platform_task_history (MyISAM)
   | 名称 | 类型 | 描述 | 特性 |
   | :---: | :---: | :---: | :---: |
   | ypth_id | INT/MEDIUMINT | 主键 | unique, auto_increment, primary |
   | ypth_parent_id | INT/MEDIUMINT | 前继任务ID |  |
   | ypth_task_id | INT/MEDIUMINT | 任务ID |  |
   | ypth_name | VARCHAR(64) | 任务名称 |  |
   | ypth_project | VARCHAR(64) | 任务所属项目名 |  |
   | ypth_tech_stack | VARCHAR(256) | 任务所需技术栈 |  |
   | ypth_description | VARCHAR(4096) | 任务详细描述 |  |
   | ypth_acceptor | VARCHAR(32) | 领取者用户ID |  |
   | ypth_deadline | DATE | 任务既定完成时间 |  |
   | ypth_create_time | DATE | 记录时间 |  |
   > 本表仅包含任务表中可以被修改的字段

    yandbox_platform_task_message (MyISAM)
   | 名称 | 类型 | 描述 | 特性 |
   | :---: | :---: | :---: | :---: |
   | yptm_id | INT/MEDIUMINT | 主键 | unique, auto_increment, primary |
   | yptm_task_id | INT/MEDIUMINT | 信息所属任务 |  |
   | yptm_sender | VARCHAR(32) | 发送者用户ID |  |
   | yptm_content | VARCHAR(4096) | 信息内容 |  |
   | yptm_create_time | TIMESTAMP | 信息发送时间 |  |

   yandbox_platform_notification (MyISAM)
   | 名称 | 类型 | 描述 | 特性 |
   | :---: | :---: | :---: | :---: |
   | ypn_id | INT/MEDIUMINT | 主键 | unique, auto_increment, primary |
   | ypn_sender | VARCHAR(32) | 发送提醒ID |  |
   | ypn_receiver | VARCHAR(32) | 提醒目标ID |  |
   | ypn_content | JSON | 提醒内容 |  |
   | ypn_type | TINYINT | 提醒类型 |  |
   | ypn_status | TINYINT | 提醒状态 |  |
   | ypn_create_time | TIMESTAMP | 提醒时间 |  |
   > 提醒类型分为“新信息”和“任务相关”。  
   > 如提醒类型为任务相关，则提醒内容为任务ID，具体情况（新进展？有问题？需验收？等等）  
   > 如提醒类型为信息，则提醒内容为信息ID


4. 待讨论

5. 修改内容  
   update at 11/20/20
   - ~~增加任务既定完成时间~~
   - ~~增加任务历史记录表~~
   - ~~增加任务前继关系属性~~
   - ~~增加进度消息表~~
   - ~~领取人历史（暂定json）~~（暂改为通过历史记录表实现）
   - ~~任务进度条，由任务发布者管理~~
   - ~~增加提醒表~~
