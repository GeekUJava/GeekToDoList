-- Тестовая база для sqlite3
--

PRAGMA foreign_keys = ON;

create table User
(
  user_id     INTEGER primary key autoincrement,
  username    VARCHAR(255) not null,
  email       VARCHAR(255) not null,
  isActivated INTEGER default 0 not null,
  created     DATETIME     not null,
  md5_password_hash VARCHAR(32) not null
);

create table TaskList
(
  tasklist_id INTEGER primary key autoincrement,
  name        VARCHAR(255) default '' not null,
  description TEXT         default '' not null,
  user_id     INTEGER      not null,
  created     DATETIME     not null,
  foreign key(user_id) references User(user_id)
);

create table Task
(
  task_id     INTEGER primary key autoincrement,
  tasklist_id INTEGER,
  name        VARCHAR(255) default '' not null,
  description TEXT         default '' not null,
  date        DATETIME,
  created     DATETIME     not null,
  priority    INTEGER,
  foreign key (tasklist_id) references TaskList(tasklist_id)
);



INSERT INTO User (user_id, username, email, isActivated, created, md5_password_hash) VALUES (1, 'alpha', 'alpha@gujava.org', 1, '1535109395955', '2c1743a391305fbf367df8e4f069f9f9');
INSERT INTO User (user_id, username, email, isActivated, created, md5_password_hash) VALUES (2, 'beta', 'beta@gujava.org', 0, '1535109422735', '987bcab01b929eb2c07877b224215c92');
INSERT INTO User (user_id, username, email, isActivated, created, md5_password_hash) VALUES (3, 'gamma', 'gamma@ya.ru', 1, '1535109453421', '05b048d7242cb7b8b57cfa3b1d65ecea');
INSERT INTO User (user_id, username, email, isActivated, created, md5_password_hash) VALUES (4, 'delta', 'delta@mail.ru', 1, '1535109498964', '63bcabf86a9a991864777c631c5b7617');
INSERT INTO User (user_id, username, email, isActivated, created, md5_password_hash) VALUES (5, 'dzeta', 'dzeta@rambler.ru', 1, '1535109497594', '2d431004e8368179f97309ddac2b4f9c');

INSERT INTO TaskList (tasklist_id, name, description, user_id, created) VALUES (1, 'Дела на следующую неделю', '', 1, '1535112013345');
INSERT INTO TaskList (tasklist_id, name, description, user_id, created) VALUES (2, 'Автомобиль', 'Ремонт', 2, '1535112047350');
INSERT INTO TaskList (tasklist_id, name, description, user_id, created) VALUES (3, 'План на завтра', 'Что будет завтра', 1, '1535112073587');
INSERT INTO TaskList (tasklist_id, name, description, user_id, created) VALUES (4, 'List4', 'List4 description', 1, '1535112098492');
INSERT INTO TaskList (tasklist_id, name, description, user_id, created) VALUES (5, 'List5', 'List5 description', 3, '1535112129517');


INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (1, 1, 'Сходть в магазин', '', '1535457600978', '1535112262683', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (2, 1, 'Купить продукты', '', '1535126400484', '1535112334041', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (3, 1, 'Забрать ребенка из школы', '', '1535378400263', '1535112392537', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (4, 2, 'Съездить на диагностику', '', '1535623200617', '1535112524900', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (5, 2, 'Переобуть на зимнюю резину', '', '1542297600494', '1535112594278', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (6, 3, 'Вымыть посуду', '', '1535112809162', '1535112812599', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (7, 3, 'Составить план на завтра', '', '1535112833907', '1535112837525', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (8, 3, 'Забрать у Вадима долг', '', '1535112853793', '1535112857023', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (9, 3, 'Выпить витамины', '', '1535112873240', '1535112875802', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (10, 3, 'Почитать книгу "К чёрту всё, берись и делай!"', '', '1535112890882', '1535112893148', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (11, 3, 'Подмести пол', '', '1535112905953', '1535112908066', null);
INSERT INTO Task (task_id, tasklist_id, name, description, date, created, priority) VALUES (12, 3, 'Принять душ ', '', '1535112925230', '1535112927708', null);