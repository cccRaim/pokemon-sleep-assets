BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" (
	"version"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"status"	INTEGER NOT NULL DEFAULT 1,
	"success"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("version")
);
CREATE TABLE IF NOT EXISTS "snorlax_data" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INT,
	"value_str"	TEXT
);
CREATE TABLE IF NOT EXISTS "using_consumable_items" (
	"item_id"	INTEGER NOT NULL DEFAULT 0,
	"expire_time"	INTEGER DEFAULT 0,
	"expire_count"	INTEGER DEFAULT 0,
	"effect_type"	INTEGER NOT NULL DEFAULT 0,
	"effect_num"	INTEGER NOT NULL DEFAULT 0
);
CREATE TABLE IF NOT EXISTS "tutorial_data" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT
);
CREATE TABLE IF NOT EXISTS "badges" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER
);
CREATE TABLE IF NOT EXISTS "gpp_voice_list" (
	"slot_id"	INTEGER NOT NULL UNIQUE,
	"is_unlocked"	INTEGER NOT NULL DEFAULT 0,
	"is_played"	INTEGER NOT NULL DEFAULT 0,
	"is_new"	INTEGER DEFAULT 1,
	"unlocked_rank"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("slot_id")
);
CREATE TABLE IF NOT EXISTS "gpp_go_bonus_items" (
	"item_id"	INTEGER NOT NULL,
	"item_type"	INTEGER NOT NULL,
	"item_num"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "sleep_data_tmp" (
	"sleep_measure_start_time"	INTEGER NOT NULL,
	"sleep_measure_end_time"	INTEGER NOT NULL,
	"device_type"	INTEGER NOT NULL DEFAULT 1,
	"timezone_offset"	INTEGER NOT NULL,
	"summertime_offset"	INTEGER NOT NULL DEFAULT 0,
	"did_change_summertime_status"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("sleep_measure_start_time")
);
CREATE TABLE IF NOT EXISTS "sleep_statuses_tmp" (
	"sleep_data_id"	INTEGER,
	"timestamp"	INTEGER,
	"status"	INTEGER
);
CREATE TABLE IF NOT EXISTS "eating_dish_list" (
	"cooking_food_id"	INTEGER NOT NULL,
	"power"	INTEGER NOT NULL,
	"add_order"	INTEGER NOT NULL DEFAULT 0
);
CREATE TABLE IF NOT EXISTS "new_flag_cache" (
	"key_ud"	TEXT NOT NULL,
	"key_resource_id"	TEXT NOT NULL,
	"value"	BIGINT NOT NULL DEFAULT 0
);
CREATE TABLE IF NOT EXISTS "collection_cache" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT
);
CREATE TABLE IF NOT EXISTS "sleep_tips_seen_cache" (
	"sleep_tips_id"	INTEGER NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS "socialresearch_data" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER
);
CREATE TABLE IF NOT EXISTS "berry_box_cache" (
	"berry_id"	INTEGER,
	"pokemon_id"	TEXT,
	"eat_flag"	INTEGER DEFAULT 0,
	"send_flag"	INTEGER DEFAULT 0,
	"rank"	INTEGER
);
CREATE TABLE IF NOT EXISTS "berry_box_order" (
	"berry_id"	INTEGER NOT NULL,
	"order_id"	INTEGER NOT NULL,
	"rank"	INTEGER,
	"pokemon_id"	TEXT,
	PRIMARY KEY("order_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "gpp_data" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT
);
CREATE TABLE IF NOT EXISTS "sleep_record_result_data" (
	"sleep_id"	TEXT NOT NULL,
	"result"	INT,
	"smst"	INT,
	"smet"	INT
);
INSERT INTO "schema_migrations" VALUES ('202210131200','InitDB',1,1);
INSERT INTO "schema_migrations" VALUES ('202211211155','AddRankDataToBerryBoxCache',1,1);
INSERT INTO "schema_migrations" VALUES ('202301182155','AddSleepRecordResultData',1,1);
INSERT INTO "snorlax_data" VALUES ('energy',465,NULL);
INSERT INTO "snorlax_data" VALUES ('level',3,NULL);
INSERT INTO "snorlax_data" VALUES ('last_eat_time',1701873424,NULL);
INSERT INTO "tutorial_data" VALUES ('how_to_sleep_tutorial_popup_show',0,NULL);
INSERT INTO "tutorial_data" VALUES ('phase',130,NULL);
INSERT INTO "tutorial_data" VALUES ('tutorial_sleep_skip_flag',0,NULL);
INSERT INTO "tutorial_data" VALUES ('power_recover_tutorial_show_time',1701292866,NULL);
INSERT INTO "tutorial_data" VALUES ('master_baitball_popup_show',0,NULL);
INSERT INTO "badges" VALUES ('notif_beginner_reward_notif',0);
INSERT INTO "collection_cache" VALUES ('03_4',0,NULL);
INSERT INTO "collection_cache" VALUES ('04_5',0,NULL);
INSERT INTO "collection_cache" VALUES ('03_2',0,NULL);
INSERT INTO "collection_cache" VALUES ('04_1001',0,NULL);
INSERT INTO "collection_cache" VALUES ('03_18',0,NULL);
INSERT INTO "collection_cache" VALUES ('04_9',0,NULL);
INSERT INTO "collection_cache" VALUES ('03_1',0,NULL);
INSERT INTO "collection_cache" VALUES ('04_7',0,NULL);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "berry_box_cache" VALUES (4,'1115683323196697783',2,0,5);
INSERT INTO "sleep_record_result_data" VALUES ('1701752146',1,0,0);
COMMIT;
