-- Fill data
INSERT INTO public."User" (user_id, username, email, isactivated, created, md5_password_hash) VALUES (1, 'alpha', 'alpha@gujava.org', true, '2018-08-27 13:00:05.532438', '2c1743a391305fbf367df8e4f069f9f9');
INSERT INTO public."User" (user_id, username, email, isactivated, created, md5_password_hash) VALUES (2, 'beta', 'beta@gujava.org', false, '2018-08-27 14:00:05.532438', '987bcab01b929eb2c07877b224215c92');
INSERT INTO public."User" (user_id, username, email, isactivated, created, md5_password_hash) VALUES (3, 'gamma', 'gamma@ya.ru', true, '2018-08-27 15:00:05.532438', '05b048d7242cb7b8b57cfa3b1d65ecea');
INSERT INTO public."User" (user_id, username, email, isactivated, created, md5_password_hash) VALUES (4, 'delta', 'delta@mail.ru', true, '2018-08-27 16:00:05.532438', '63bcabf86a9a991864777c631c5b7617');
INSERT INTO public."User" (user_id, username, email, isactivated, created, md5_password_hash) VALUES (5, 'dzeta', 'dzeta@rambler.ru', true, '2018-08-27 17:00:05.532438', '2d431004e8368179f97309ddac2b4f9c');



INSERT INTO public."TaskList" (tasklist_id, name, description, user_id, created) VALUES (1, 'Дела на следующую неделю', '', 1, '2018-08-27 18:10:05.532438');
INSERT INTO public."TaskList" (tasklist_id, name, description, user_id, created) VALUES (2, 'Автомобиль', 'Ремонт', 2, '2018-08-28 19:00:05.532438');
INSERT INTO public."TaskList" (tasklist_id, name, description, user_id, created) VALUES (3, 'План на завтра', 'Что будет завтра', 1, '2018-08-29 21:18:05.532438');
INSERT INTO public."TaskList" (tasklist_id, name, description, user_id, created) VALUES (4, 'List4', 'List4 description', 1, '2018-08-27 15:00:05.532438');
INSERT INTO public."TaskList" (tasklist_id, name, description, user_id, created) VALUES (5, 'List5', 'List5 description', 3, '2018-08-27 20:00:05.532438');


INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (1, 1, 'Сходть в магазин', '', '2018-08-28 18:10:05.532438', '2018-08-27 18:10:05.532438', 1);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (2, 1, 'Купить продукты', '', '2018-08-29 19:10:05.532438', '2018-08-27 18:10:05.532438', 2);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (3, 1, 'Забрать ребенка из школы', '', '2018-09-01 20:10:05.532438', '2018-08-27 18:10:05.532438', 3);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (4, 2, 'Съездить на диагностику', '', '2018-09-02 21:10:05.532438', '2018-08-27 18:10:05.532438', 4);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (5, 2, 'Переобуть на зимнюю резину', '', '2018-09-22 22:10:05.532438', '2018-08-27 18:10:05.532438', 5);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (6, 3, 'Вымыть посуду', '', '2018-09-04 23:23:05.532438', '2018-08-27 18:10:05.532438', 6);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (7, 3, 'Составить план на завтра', '', '2018-09-05 00:10:05.532438', '2018-08-27 18:10:05.532438', 7);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (8, 3, 'Забрать у Вадима долг', '', '2018-09-06 01:10:05.532438', '2018-08-27 18:10:05.532438', 8);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (9, 3, 'Выпить витамины', '', '2018-09-07 02:10:05.532438', '2018-08-27 18:10:05.532438', 9);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (10, 3, 'Почитать книгу "К чёрту всё, берись и делай!"', '', '2018-09-08 03:10:05.532438', '2018-08-27 18:10:05.532438', 10);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (11, 3, 'Подмести пол', '', '2018-09-09 04:10:05.532438', '2018-08-27 18:10:05.532438', 11);
INSERT INTO public."Task" (task_id, tasklist_id, name, description, date, created, priority) VALUES (12, 3, 'Принять душ ', '', '2018-09-10 05:10:05.532438', '2018-08-27 18:10:05.532438', 12);
