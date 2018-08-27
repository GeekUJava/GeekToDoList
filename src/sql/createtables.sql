COMMENT ON DATABASE "GeekToDoList"
    IS 'База данных GeekToDoList';



-- Table: public."User"

-- DROP TABLE public."User";

CREATE TABLE  IF NOT EXISTS public."User"
(
    user_id SERIAL NOT NULL,
    username character varying(255) COLLATE pg_catalog."default" NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    isActivated boolean,
    created timestamp without time zone NOT NULL DEFAULT now(),
    md5_password_hash character(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "User_pkey" PRIMARY KEY (user_id),
    CONSTRAINT "User_email_key" UNIQUE (email)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."User"
    OWNER to postgres;
COMMENT ON TABLE public."User"
    IS 'Пользователи системы';


--
--

-- Table: public."TaskList"

-- DROP TABLE public."TaskList";

CREATE TABLE IF NOT EXISTS public."TaskList"
(
    tasklist_id SERIAL NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL DEFAULT ''::character varying,
    description text COLLATE pg_catalog."default" NOT NULL DEFAULT ''::text,
    user_id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    CONSTRAINT "TaskList_pkey" PRIMARY KEY (tasklist_id),
    CONSTRAINT "TaskList_user_id_fkey" FOREIGN KEY (user_id)
        REFERENCES public."User" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."TaskList"
    OWNER to postgres;
COMMENT ON TABLE public."TaskList"
    IS 'Список дел пользователя';




--
--


-- Table: public."Task"

-- DROP TABLE public."Task";

CREATE TABLE IF NOT EXISTS public."Task"
(
    task_id SERIAL NOT NULL,
    tasklist_id integer NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    date timestamp without time zone,
    created timestamp without time zone NOT NULL,
	priority integer NOT NULL,
    CONSTRAINT "Task_pkey" PRIMARY KEY (task_id),
    CONSTRAINT "Task_tasklist_id_fkey" FOREIGN KEY (tasklist_id)
        REFERENCES public."TaskList" (tasklist_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Task"
    OWNER to postgres;