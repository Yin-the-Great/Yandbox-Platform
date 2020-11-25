CREATE TABLE IF NOT EXISTS yandbox_platform_task(
    ypt_id INT UNSIGNED UNIQUE AUTO_INCREMENT NOT NULL,
    ypt_parent_id INT UNSIGNED NOT NULL DEFAULT 0,
    ypt_name VARCHAR(64) NOT NULL,
    ypt_project VARCHAR(64) NOT NULL,
    ypt_status TINYINT NOT NULL DEFAULT 0,
    ypt_track TINYINT NOT NULL DEFAULT 0,
    ypt_tech_stack VARCHAR(256) NOT NULL,
    ypt_description VARCHAR(4096) NOT NULL,
    ypt_publisher VARCHAR(32) NOT NULL,
    ypt_acceptor VARCHAR(32) NOT NULL,
    ypt_acceptor_history JSON NOT NULL DEFAULT (JSON_ARRAY()),
    ypt_deadline DATE NOT NULL DEFAULT '1900-01-01',
    ypt_create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ypt_last_update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(ypt_id)
) ENGINE = MYISAM CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS yandbox_platform_task_history(
    ypth_id INT UNSIGNED UNIQUE AUTO_INCREMENT NOT NULL,
    ypth_task_id INT UNSIGNED NOT NULL,
    ypth_parent_id INT UNSIGNED NOT NULL,
    ypth_name VARCHAR(64) NOT NULL,
    ypth_project VARCHAR(64) NOT NULL,
    ypth_tech_stack VARCHAR(256) NOT NULL,
    ypth_description VARCHAR(4096) NOT NULL,
    ypth_acceptor VARCHAR(32) NOT NULL,
    ypt_deadline DATE NOT NULL DEFAULT '1900-01-01',
    ypt_create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(ypth_id)
) ENGINE = MYISAM CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS yandbox_platform_task_message(
    yptm_id INT UNSIGNED UNIQUE AUTO_INCREMENT NOT NULL,
    yptm_task_id INT UNSIGNED NOT NULL,
    yptm_sender VARCHAR(32) NOT NULL,
    yptm_content VARCHAR(4096) NOT NULL,
    yptm_create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(yptm_id)
) ENGINE = MYISAM CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS yandbox_platform_notification(
    ypn_id INT UNSIGNED UNIQUE AUTO_INCREMENT NOT NULL,
    ypn_sender VARCHAR(32) NOT NULL,
    ypn_receiver VARCHAR(32) NOT NULL,
    ypn_content JSON NOT NULL DEFAULT (JSON_ARRAY()),
    ypn_type TINYINT NOT NULL,
    ypn_status TINYINT NOT NULL,
    tpn_create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(ypn_id)
) ENGINE = MYISAM CHARACTER SET utf8mb4;