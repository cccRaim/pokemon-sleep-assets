BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" (
	"version"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"status"	INTEGER NOT NULL DEFAULT 1,
	"success"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("version")
);
CREATE TABLE IF NOT EXISTS "pickup_special" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT,
	"value_bigint"	BIGINT
);
CREATE TABLE IF NOT EXISTS "pickup_special_items" (
	"ItemId"	TEXT,
	"ItemType"	INTEGER,
	"Num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pickup_pokemon_extra_item_list" (
	"PokemonId"	BIGINT,
	"ItemId"	TEXT,
	"ItemType"	INTEGER,
	"Num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pickup_auto" (
	"PokemonId"	BIGINT,
	"TypeNumber"	INTEGER NOT NULL,
	"Energy"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "pickup_pokemon_lottery_items" (
	"PokemonId"	BIGINT NOT NULL,
	"Time"	BIGINT NOT NULL,
	"ItemId"	TEXT,
	"ItemType"	INTEGER NOT NULL,
	"Num"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "pickup_main_skill_list" (
	"PokemonId"	BIGINT NOT NULL,
	"Time"	BIGINT NOT NULL,
	"IsOn"	INTEGER NOT NULL,
	"SkillId"	INTEGER NOT NULL,
	"TargetValue"	INTEGER,
	"TargetPokemonIdStr"	TEXT
);
CREATE TABLE IF NOT EXISTS "user_best_energy" (
	"FieldId"	TEXT NOT NULL,
	"Energy"	INTEGER,
	"SnorlaxRank"	INTEGER,
	"VisitCount"	INTEGER,
	"SnorlaxGrowthMultiplier"	INTEGER,
	PRIMARY KEY("FieldId")
);
CREATE TABLE IF NOT EXISTS "user_collection" (
	"RecordKey"	TEXT NOT NULL,
	"ResourceType"	INTEGER NOT NULL,
	"ItemId"	INTEGER NOT NULL,
	"ItemCount"	INTEGER,
	"ReceivedAt"	BIGINT,
	"RegisteredAt"	BIGINT,
	"DidShowNewIcon"	INTEGER,
	PRIMARY KEY("RecordKey")
);
CREATE TABLE IF NOT EXISTS "user_field_items_berry_box" (
	"ItemId"	TEXT NOT NULL,
	"Num"	INTEGER NOT NULL,
	"PokemonId"	BIGINT,
	"Rank"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_field_mission" (
	"MissionType"	INTEGER NOT NULL,
	"Count"	INTEGER,
	PRIMARY KEY("MissionType")
);
CREATE TABLE IF NOT EXISTS "user_field_mission_content" (
	"MissionId"	INTEGER,
	"RewardReceived"	INTEGER,
	"ParentMissionType"	INTEGER,
	"PokemonIncenseId"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_field_mission_reward_pokemon" (
	"PokemonId"	INTEGER,
	"ParentMissionType"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_inventory" (
	"RecordKey"	TEXT NOT NULL,
	"ResourceType"	INTEGER,
	"ItemId"	TEXT,
	"ItemCount"	INTEGER,
	"ObtainedAt"	BIGINT,
	PRIMARY KEY("RecordKey")
);
CREATE TABLE IF NOT EXISTS "user_pokemon_friend" (
	"MasterPokemonId"	INTEGER NOT NULL,
	"FriendPoint"	INTEGER,
	PRIMARY KEY("MasterPokemonId")
);
CREATE TABLE IF NOT EXISTS "user_purchase_count" (
	"ItemId"	INTEGER NOT NULL,
	"Count"	INTEGER,
	"ExpireAt"	INTEGER,
	PRIMARY KEY("ItemId")
);
CREATE TABLE IF NOT EXISTS "user_recipe" (
	"RecipeId"	INTEGER NOT NULL,
	"Count"	INTEGER,
	"Energy"	INTEGER,
	PRIMARY KEY("RecipeId")
);
CREATE TABLE IF NOT EXISTS "user_seen_new_icon_sleeping_face" (
	"PokemonId"	TEXT NOT NULL,
	"SleepingFaceIds"	TEXT,
	"NewFlag"	INTEGER NOT NULL,
	"RegisteredAt"	BIGINT NOT NULL,
	PRIMARY KEY("PokemonId")
);
CREATE TABLE IF NOT EXISTS "user_sleeping_face_pokedex" (
	"TypeNumber"	INTEGER,
	"SleepingFaceId"	INTEGER,
	"PatternId"	INTEGER,
	"Normal_Male"	INTEGER NOT NULL,
	"Normal_Female"	INTEGER NOT NULL,
	"Normal_Unknown"	INTEGER NOT NULL,
	"Shiny_Male"	INTEGER NOT NULL,
	"Shiny_Female"	INTEGER NOT NULL,
	"Shiny_Unknown"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep_point_exchange" (
	"ShopItemId"	INTEGER NOT NULL,
	"TableId"	INTEGER NOT NULL,
	"ChangedCount"	INTEGER,
	"ExpireAt"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_sleep_sound_volume" (
	"MeasureStartTime"	BIGINT NOT NULL,
	"Time"	BIGINT NOT NULL,
	"Volume"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep_tips_collection" (
	"SleepTipsId"	INTEGER NOT NULL,
	"RegisteredAt"	BIGINT NOT NULL,
	PRIMARY KEY("SleepTipsId")
);
CREATE TABLE IF NOT EXISTS "user_ui_new_icon_times" (
	"RecordKey"	TEXT NOT NULL,
	"LastViewTime"	BIGINT NOT NULL,
	PRIMARY KEY("RecordKey")
);
CREATE TABLE IF NOT EXISTS "user_wild_pokemon" (
	"TypeNumber"	INTEGER NOT NULL,
	"FriendPoint"	INTEGER,
	"TotalFriendPoint"	INTEGER,
	"AppearanceCount"	INTEGER,
	"TotalCaptureCount"	INTEGER,
	"FaceResearchedCount"	INTEGER,
	"UpdatedAt"	INTEGER,
	"CreatedAt"	INTEGER,
	"EvolveCount"	INTEGER,
	PRIMARY KEY("TypeNumber")
);
CREATE TABLE IF NOT EXISTS "user_wild_pokemon_face_id_status" (
	"TypeNumber"	INTEGER NOT NULL,
	"FaceId"	INTEGER,
	"Status"	INTEGER NOT NULL,
	"ResearchCount"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep_transitions" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"Time"	INTEGER NOT NULL,
	"State"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep_incense_info" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"ItemType"	INTEGER NOT NULL,
	"ItemId"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep" (
	"MeasureStartTime"	BIGINT NOT NULL,
	"MeasureEndTime"	BIGINT,
	"SleepStartTime"	BIGINT,
	"SleepEndTime"	BIGINT,
	"TimezoneOffset"	INTEGER,
	"SummerTimeTimezoneOffset"	INTEGER,
	"SummerTimeAcrossTimeChange"	INTEGER,
	"SleepDay"	INTEGER,
	"SleepNumber"	INTEGER,
	"FallAsleepTime"	INTEGER,
	"LightSleepMinutes"	INTEGER,
	"WakeSleepMinutes"	INTEGER,
	"DeepSleepMinutes"	INTEGER,
	"LightSleepTimePermyriad"	INTEGER,
	"WakeTimePermyriad"	INTEGER,
	"DeepSleepTimePermyriad"	INTEGER,
	"SleepSeconds"	INTEGER,
	"MidSleepTime"	BIGINT,
	"ManualRecordFlag"	INTEGER,
	"SleepType"	INTEGER,
	"SleepScore"	INTEGER,
	"RevisedSleepScore"	INTEGER,
	"SleepPoint"	INTEGER,
	"SleepPointType"	INTEGER,
	"PromiseResult"	INTEGER,
	"DefaultPhotoLotteryId"	INTEGER NOT NULL,
	"BaitBallOrder"	TEXT,
	"SleepFieldId"	INTEGER,
	"SleepReportType"	INTEGER,
	"DeviceSendSleepMeasurements"	INTEGER,
	"SleepStatus"	INTEGER,
	"DeviceType"	INTEGER,
	"InvalidType"	INTEGER,
	"FoodPower"	INTEGER,
	"SleepPower"	INTEGER NOT NULL,
	"PokemonExp"	INTEGER,
	"ResearchExp"	INTEGER,
	"Coin"	INTEGER,
	"SleepingFaceImageKey"	TEXT,
	"VoiceDataKey"	TEXT,
	"IsAborted"	INTEGER,
	"VoiceDataDecibel"	INTEGER,
	"VoiceDataCount"	INTEGER,
	"InMaintenanceMeasurement"	INTEGER,
	"Memo"	TEXT,
	"MemoLanguage"	INTEGER,
	"BeginnerRewardSleepPoint"	INTEGER,
	"SleepDataVersion"	INTEGER,
	"SnorlaxColor"	INTEGER,
	"IsTutorialSkipData"	INTEGER,
	PRIMARY KEY("MeasureStartTime")
);
CREATE TABLE IF NOT EXISTS "user_sleep_joined_pokemons" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"PokemonId"	BIGINT,
	"PokemonDataId"	INTEGER,
	"Gender"	INTEGER NOT NULL,
	"ColorId"	INTEGER NOT NULL,
	"LevelValue"	INTEGER NOT NULL,
	"LotteryResultId"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_sleep_pokemon_baitball_results" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"Identifier"	INTEGER NOT NULL,
	"BaitBallId"	INTEGER NOT NULL,
	"SuccessFlag"	INTEGER,
	"KeyForLotteryResult"	TEXT,
	"AddFriendPoint"	INTEGER NOT NULL DEFAULT 0,
	"FriendPoint"	INTEGER NOT NULL DEFAULT 0,
	"TotalFriendPoint"	INTEGER NOT NULL DEFAULT 0,
	"OverLimitFriendPoint"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_sleep_pokemon_lottery_results" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"Identifier"	INTEGER NOT NULL,
	"TypeNumber"	INTEGER NOT NULL,
	"SleepingFaceId"	INTEGER NOT NULL,
	"Gender"	INTEGER NOT NULL,
	"ColorId"	INTEGER NOT NULL,
	"IsNew"	INTEGER NOT NULL,
	"BoostBonusFlag"	INTEGER NOT NULL,
	"IncenseBonusFlag"	INTEGER NOT NULL,
	"TutorialFlag"	INTEGER NOT NULL,
	"PatternId"	INTEGER NOT NULL DEFAULT 0,
	"KeyForBaitBallResult"	TEXT,
	"SleepingFaceImageTarget"	INTEGER DEFAULT -1
);
CREATE TABLE IF NOT EXISTS "user_sleep_weekly_report" (
	"Week"	INTEGER NOT NULL,
	"MidSleepTimeScore"	INTEGER,
	"SleepTimeScore"	INTEGER,
	"SleepIds"	TEXT,
	"HasRewardAvailableSleeps"	INTEGER,
	"RewardReceivedScore"	INTEGER,
	"FieldChangeDay"	INTEGER,
	"TotalWeekCount"	INTEGER,
	"MaxEnergy"	INTEGER,
	"MaxSnorlaxRank"	INTEGER,
	"BerryEnergy"	INTEGER,
	"DishEnergy"	INTEGER,
	PRIMARY KEY("Week")
);
CREATE TABLE IF NOT EXISTS "user_profile" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT,
	"value_bigint"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_main_incense_info" (
	"SlotId"	INTEGER NOT NULL,
	"ItemType"	INTEGER NOT NULL,
	"ItemId"	INTEGER NOT NULL,
	PRIMARY KEY("SlotId")
);
CREATE TABLE IF NOT EXISTS "user_main_next_sleep_pokemon" (
	"FieldId"	INTEGER NOT NULL,
	"PokemonId"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_main_research_progress_baitball" (
	"PokemonStatusIdentifier"	INTEGER NOT NULL,
	"BaitBallId"	INTEGER NOT NULL,
	"SuccessFlag"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_main_research_progress" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT,
	"value_bigint"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_main_research_progress_pokemon_status" (
	"Identifier"	INTEGER NOT NULL,
	"TypeNumber"	INTEGER NOT NULL,
	"SleepingFaceId"	INTEGER NOT NULL,
	"Gender"	INTEGER NOT NULL,
	"ColorId"	INTEGER NOT NULL,
	"PatternId"	INTEGER NOT NULL,
	"Joined"	INTEGER NOT NULL,
	"AddedFriendPointByBaitBall"	INTEGER,
	"FullFlag"	INTEGER,
	"BoostBonusFlag"	INTEGER,
	"SuccessType"	INTEGER,
	"TutorialFlag"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_main_sleep_record_result" (
	"SleepId"	INTEGER NOT NULL,
	"Status"	INTEGER NOT NULL,
	PRIMARY KEY("SleepId")
);
CREATE TABLE IF NOT EXISTS "user_main" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT,
	"value_bigint"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_main_skill" (
	"EffectType"	INTEGER NOT NULL,
	"EffectValue"	INTEGER,
	PRIMARY KEY("EffectType")
);
CREATE TABLE IF NOT EXISTS "user_main_pass_stock" (
	"BoughtTime"	BIGINT NOT NULL,
	PRIMARY KEY("BoughtTime")
);
CREATE TABLE IF NOT EXISTS "user_main_boost_history" (
	"StartTime"	BIGINT NOT NULL,
	"ExpireTime"	BIGINT,
	PRIMARY KEY("StartTime")
);
CREATE TABLE IF NOT EXISTS "user_main_total_purchase_amount_info" (
	"PriceCurrensyCode"	TEXT,
	"Month"	INTEGER,
	"Total"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_support_pokemons" (
	"PokemonId"	BIGINT NOT NULL,
	"TypeNumber"	INTEGER,
	"FormNumber"	INTEGER,
	"Gender"	INTEGER,
	"Nickname"	TEXT,
	"NickNameFlag"	INTEGER,
	"Favorited"	INTEGER,
	"ColorId"	INTEGER,
	"EventID"	INTEGER,
	"PowerValue"	INTEGER,
	"PowerUpdatedAt"	BIGINT,
	"ExperiencePoint"	INTEGER,
	"Rank"	INTEGER,
	"MainSkillLevelValue"	INTEGER,
	"SubSkill1"	INTEGER,
	"SubSkill2"	INTEGER,
	"SubSkill3"	INTEGER,
	"SubSkill4"	INTEGER,
	"SubSkill5"	INTEGER,
	"PickupItemId1"	TEXT,
	"PickupItemType1"	INTEGER,
	"PickupItemNum1"	INTEGER,
	"PickupItemId2"	TEXT,
	"PickupItemType2"	INTEGER,
	"PickupItemNum2"	INTEGER,
	"PickupItemId3"	TEXT,
	"PickupItemType3"	INTEGER,
	"PickupItemNum3"	INTEGER,
	"Nature"	INTEGER,
	"SleepTime"	BIGINT,
	"SkillFailedCount"	INTEGER,
	"SP"	INTEGER,
	"Specialty"	INTEGER,
	"LaungageCode"	INTEGER,
	"ItemsInUse"	TEXT,
	"ExpirationsItemsInUsed"	TEXT,
	"CapturedTime"	BIGINT,
	"CapturedField"	INTEGER,
	"PickupTime"	INTEGER,
	"UpdatedAt"	BIGINT,
	"DidShowNewIcon"	INTEGER,
	"EvolutionCount"	INTEGER,
	"DetailPopupInfoSubSkillSlotIds"	TEXT,
	"DetailPopupInfoPickupItemSlotIds"	TEXT,
	"BerrySP"	INTEGER NOT NULL DEFAULT 0,
	"CookingSP"	INTEGER NOT NULL DEFAULT 0,
	"SkillSP"	INTEGER NOT NULL DEFAULT 0,
	"PowerUpdateAtBySleep"	INTEGER,
	PRIMARY KEY("PokemonId")
);
CREATE TABLE IF NOT EXISTS "user_support_teams" (
	"TeamId"	INTEGER NOT NULL,
	"TeamName"	TEXT,
	"CurrentFlag"	INTEGER,
	"LanguageCode"	INTEGER,
	"Member1"	BIGINT,
	"Member2"	BIGINT,
	"Member3"	BIGINT,
	"Member4"	BIGINT,
	"Member5"	BIGINT,
	PRIMARY KEY("TeamId")
);
CREATE TABLE IF NOT EXISTS "user_achievement_rewards" (
	"AchievementId"	INTEGER NOT NULL,
	"ConditionId"	INTEGER,
	"ReceivedAt"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_achievement" (
	"AchievementId"	INTEGER NOT NULL,
	"Step"	INTEGER,
	"Count"	INTEGER,
	"ClearStep"	INTEGER,
	PRIMARY KEY("AchievementId")
);
CREATE TABLE IF NOT EXISTS "user_social_research" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT,
	"value_bigint"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_present" (
	"key"	TEXT NOT NULL UNIQUE,
	"value_int"	INTEGER,
	"value_str"	TEXT,
	"value_bigint"	BIGINT
);
CREATE TABLE IF NOT EXISTS "user_field_items_candy" (
	"PokemonId"	BIGINT NOT NULL,
	"ReceivableAt"	INTEGER NOT NULL,
	PRIMARY KEY("PokemonId")
);
CREATE TABLE IF NOT EXISTS "user_sleep_invalid_transitions" (
	"MeasureStartTime"	BIGINT NOT NULL,
	"StartTime"	BIGINT NOT NULL,
	"EndTime"	BIGINT NOT NULL,
	"InvalidType"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_field_items_whistle_box" (
	"ItemId"	TEXT,
	"ItemType"	INTEGER NOT NULL,
	"Num"	INTEGER NOT NULL,
	"PokemonId"	BIGINT,
	"Rank"	INTEGER
);
CREATE TABLE IF NOT EXISTS "user_sleep_buff_data_event" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"BuffType"	INTEGER NOT NULL,
	"EventId"	INTEGER NOT NULL,
	"BuffValue"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep_buff_data_pokemon" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"PokemonId"	BIGINT NOT NULL,
	"TypeNumber"	INTEGER NOT NULL,
	"FormNumber"	INTEGER NOT NULL,
	"Gender"	INTEGER NOT NULL,
	"Nickname"	TEXT,
	"NickNameFlag"	INTEGER NOT NULL,
	"ColorId"	INTEGER NOT NULL,
	"ExperiencePoint"	INTEGER NOT NULL,
	"Rank"	INTEGER NOT NULL,
	"SubSkills"	TEXT,
	"Nature"	INTEGER NOT NULL,
	"LaungageCode"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_sleep_buff_data_subskill" (
	"MeasureStartTime"	INTEGER NOT NULL,
	"SubSkillId"	INTEGER NOT NULL,
	"PokemonId"	BIGINT NOT NULL,
	"BuffType"	INTEGER NOT NULL,
	"BuffValue"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_main_purchase_transaction_ids" (
	"TransactionId"	TEXT,
	"PurchaseType"	TEXT,
	"Platform"	INTEGER NOT NULL,
	"ProductId"	TEXT,
	"ReceiptUniqueId"	TEXT
);
CREATE TABLE IF NOT EXISTS "user_main_recovery_time" (
	"Timestamp"	BIGINT NOT NULL,
	"Power"	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "user_event_mission" (
	"EventId"	INTEGER NOT NULL,
	PRIMARY KEY("EventId")
);
CREATE TABLE IF NOT EXISTS "user_event_mission_content" (
	"MissionId"	INTEGER,
	"Count"	INTEGER,
	"RewardReceived"	INTEGER,
	"ParentEventId"	INTEGER
);
INSERT INTO "schema_migrations" VALUES ('202210131200','InitDB',1,1);
INSERT INTO "schema_migrations" VALUES ('202211041544','AddUserSleepVoiceColumn',1,1);
INSERT INTO "schema_migrations" VALUES ('202211071509','UDPresent',1,1);
INSERT INTO "schema_migrations" VALUES ('202211101439','AddPickupMainSkillListTargetInfoColumn',1,1);
INSERT INTO "schema_migrations" VALUES ('202211151752','UserSleepLotteryAddColumn',1,1);
INSERT INTO "schema_migrations" VALUES ('202211161908','UserSleepGbbiAddColumn',1,1);
INSERT INTO "schema_migrations" VALUES ('202211171525','AddVisitCountSnorlaxMultiplierToBestEnergy',1,1);
INSERT INTO "schema_migrations" VALUES ('202211171527','CreateUserFieldItemCandy',1,1);
INSERT INTO "schema_migrations" VALUES ('202211171605','AddColumnsToUserFiledItem',1,1);
INSERT INTO "schema_migrations" VALUES ('202212091709','UserWildAddEvolveCountColumn',1,1);
INSERT INTO "schema_migrations" VALUES ('202301121422','AddSPDataToUserSupportPokemon',1,1);
INSERT INTO "schema_migrations" VALUES ('202301231725','AddUserSleepMaintenanceFlag',1,1);
INSERT INTO "schema_migrations" VALUES ('202301251858','UserSleepAddMemoColumns',1,1);
INSERT INTO "schema_migrations" VALUES ('202301302115','AddBeginnerRewardColumns',1,1);
INSERT INTO "schema_migrations" VALUES ('202302142258','CreateUserSleepInvalidTransitionTable',1,1);
INSERT INTO "schema_migrations" VALUES ('202303161915','DropFieldWhistleBoxRecordKey',1,1);
INSERT INTO "schema_migrations" VALUES ('202304191646','AddPokemonIncenseIdToFieldMission',1,1);
INSERT INTO "schema_migrations" VALUES ('202305101153','AddSleepDataBuffTables',1,1);
INSERT INTO "schema_migrations" VALUES ('202305151350','AddClearStepToUserAchivement',1,1);
INSERT INTO "schema_migrations" VALUES ('202305291708','AddUserMain',1,1);
INSERT INTO "schema_migrations" VALUES ('202307112133','UserSleepLotteryAddSleepingFaceImageColumn',1,1);
INSERT INTO "schema_migrations" VALUES ('202307281610','AddUserSleepVersion',1,1);
INSERT INTO "schema_migrations" VALUES ('202308221655','AddUserSleepSnorlaxColor',1,1);
INSERT INTO "schema_migrations" VALUES ('202309061730','CreateUserMainRecoveryTimeTable',1,1);
INSERT INTO "schema_migrations" VALUES ('202309062051','AddPowerUpdateBySleepColumnToUserPokemon',1,1);
INSERT INTO "schema_migrations" VALUES ('202309201214','AddTutorialSkipFlagToUserSleep',1,1);
INSERT INTO "schema_migrations" VALUES ('202309291031','CreateUserEventFieldMissionTables',1,1);
INSERT INTO "pickup_pokemon_extra_item_list" VALUES (2683378025326690192,'2',3,8);
INSERT INTO "pickup_pokemon_extra_item_list" VALUES (2683378025326690192,'7',4,4);
INSERT INTO "pickup_pokemon_extra_item_list" VALUES (3669786575658158875,'18',3,5);
INSERT INTO "pickup_pokemon_extra_item_list" VALUES (3669786575658158875,'9',4,3);
INSERT INTO "pickup_pokemon_extra_item_list" VALUES (8797235573036727908,'1',3,8);
INSERT INTO "pickup_pokemon_extra_item_list" VALUES (8797235573036727908,'5',4,2);
INSERT INTO "pickup_pokemon_lottery_items" VALUES (1115683323196697783,1701876085,'4',3,2);
INSERT INTO "pickup_pokemon_lottery_items" VALUES (1115683323196697783,1701878763,'4',3,2);
INSERT INTO "pickup_pokemon_lottery_items" VALUES (1115683323196697783,1701881441,'4',3,2);
INSERT INTO "pickup_pokemon_lottery_items" VALUES (1115683323196697783,1701884119,'5',4,1);
INSERT INTO "pickup_pokemon_lottery_items" VALUES (1115683323196697783,1701886797,'4',3,2);
INSERT INTO "pickup_main_skill_list" VALUES (2683378025326690192,1701810868,1,10,NULL,NULL);
INSERT INTO "user_best_energy" VALUES ('1',10438,3,2,10500);
INSERT INTO "user_collection" VALUES ('03_4',3,4,92,1701750612,1701282065,NULL);
INSERT INTO "user_collection" VALUES ('03_2',3,2,24,1701750612,1701319462,NULL);
INSERT INTO "user_collection" VALUES ('04_5',4,5,52,1701750608,1701282065,NULL);
INSERT INTO "user_collection" VALUES ('04_1001',4,1001,1,1701752855,1701752061,NULL);
INSERT INTO "user_collection" VALUES ('03_18',3,18,10,NULL,1701785836,NULL);
INSERT INTO "user_collection" VALUES ('04_9',4,9,3,NULL,1701785836,NULL);
INSERT INTO "user_collection" VALUES ('03_1',3,1,11,NULL,1701785843,NULL);
INSERT INTO "user_collection" VALUES ('04_7',4,7,6,NULL,1701785845,NULL);
INSERT INTO "user_field_items_berry_box" VALUES ('4',15,1115683323196697783,5);
INSERT INTO "user_field_mission" VALUES (1,3);
INSERT INTO "user_field_mission" VALUES (2,1);
INSERT INTO "user_field_mission" VALUES (5,307);
INSERT INTO "user_field_mission" VALUES (7,0);
INSERT INTO "user_field_mission" VALUES (8,2);
INSERT INTO "user_field_mission" VALUES (9,7);
INSERT INTO "user_field_mission_content" VALUES (2,0,1,NULL);
INSERT INTO "user_field_mission_content" VALUES (202,0,1,NULL);
INSERT INTO "user_field_mission_content" VALUES (402,0,1,3);
INSERT INTO "user_field_mission_content" VALUES (1002,0,2,NULL);
INSERT INTO "user_field_mission_content" VALUES (1202,0,5,NULL);
INSERT INTO "user_field_mission_content" VALUES (1602,0,7,NULL);
INSERT INTO "user_field_mission_content" VALUES (1802,0,8,NULL);
INSERT INTO "user_field_mission_content" VALUES (2002,0,9,NULL);
INSERT INTO "user_inventory" VALUES ('04_5',4,'5',40,1701873407);
INSERT INTO "user_inventory" VALUES ('05_3',5,'3',1,1701281886);
INSERT INTO "user_inventory" VALUES ('09_1',9,'1',16,1701750589);
INSERT INTO "user_inventory" VALUES ('09_3',9,'3',0,1701281462);
INSERT INTO "user_inventory" VALUES ('18_14',18,'14',7,1701785833);
INSERT INTO "user_inventory" VALUES ('18_39',18,'39',5,1701281886);
INSERT INTO "user_inventory" VALUES ('18_4',18,'4',6,1701752737);
INSERT INTO "user_inventory" VALUES ('18_50',18,'50',8,1701281886);
INSERT INTO "user_inventory" VALUES ('25_1',25,'1',1,1701281886);
INSERT INTO "user_inventory" VALUES ('26_1',26,'1',1,1701750589);
INSERT INTO "user_inventory" VALUES ('18_1',18,'1',2,1701750690);
INSERT INTO "user_inventory" VALUES ('09_2',9,'2',0,1701752474);
INSERT INTO "user_inventory" VALUES ('18_11',18,'11',5,1701797310);
INSERT INTO "user_inventory" VALUES ('18_3',18,'3',3,1701752737);
INSERT INTO "user_inventory" VALUES ('04_9',4,'9',3,1701797324);
INSERT INTO "user_inventory" VALUES ('04_7',4,'7',6,1701785850);
INSERT INTO "user_inventory" VALUES ('22_1',22,'1',0,1701797334);
INSERT INTO "user_recipe" VALUES (1001,NULL,1173);
INSERT INTO "user_seen_new_icon_sleeping_face" VALUES ('14','',1,1701281245);
INSERT INTO "user_seen_new_icon_sleeping_face" VALUES ('50','',1,1701281245);
INSERT INTO "user_seen_new_icon_sleeping_face" VALUES ('39','',1,1701281245);
INSERT INTO "user_seen_new_icon_sleeping_face" VALUES ('4','',1,1701281245);
INSERT INTO "user_seen_new_icon_sleeping_face" VALUES ('38','',1,1701752226);
INSERT INTO "user_seen_new_icon_sleeping_face" VALUES ('3','',1,1701752226);
INSERT INTO "user_sleeping_face_pokedex" VALUES (14,40,1,2,0,0,0,0,0);
INSERT INTO "user_sleeping_face_pokedex" VALUES (39,116,1,2,0,0,0,0,0);
INSERT INTO "user_sleeping_face_pokedex" VALUES (4,10,1,2,2,0,0,0,0);
INSERT INTO "user_sleeping_face_pokedex" VALUES (50,148,1,2,2,0,0,0,0);
INSERT INTO "user_sleeping_face_pokedex" VALUES (38,112,1,0,2,0,0,0,0);
INSERT INTO "user_sleeping_face_pokedex" VALUES (3,7,1,0,2,0,0,0,0);
INSERT INTO "user_sleep_point_exchange" VALUES (4,24,2,1704067199);
INSERT INTO "user_sleep_sound_volume" VALUES (1701752146,1701788146,67);
INSERT INTO "user_sleep_tips_collection" VALUES (14,1701752125);
INSERT INTO "user_ui_new_icon_times" VALUES ('1',1701797438);
INSERT INTO "user_ui_new_icon_times" VALUES ('2',1701752884);
INSERT INTO "user_ui_new_icon_times" VALUES ('4',1701752851);
INSERT INTO "user_ui_new_icon_times" VALUES ('6',1701750607);
INSERT INTO "user_ui_new_icon_times" VALUES ('5',1701750611);
INSERT INTO "user_ui_new_icon_times" VALUES ('3',1701752868);
INSERT INTO "user_ui_new_icon_times" VALUES ('7',1701752854);
INSERT INTO "user_wild_pokemon" VALUES (1,0,0,0,1,0,1701281164,1701281164,NULL);
INSERT INTO "user_wild_pokemon" VALUES (3,0,5,1,1,1,1701752575,1701752226,NULL);
INSERT INTO "user_wild_pokemon" VALUES (4,4,4,2,0,1,1701752675,1701281245,NULL);
INSERT INTO "user_wild_pokemon" VALUES (14,0,5,1,1,1,1701281487,1701281245,NULL);
INSERT INTO "user_wild_pokemon" VALUES (38,0,5,1,1,1,1701752488,1701752226,NULL);
INSERT INTO "user_wild_pokemon" VALUES (39,0,0,1,0,1,1701281245,1701281245,NULL);
INSERT INTO "user_wild_pokemon" VALUES (50,0,0,2,0,1,1701281245,1701281245,NULL);
INSERT INTO "user_wild_pokemon_face_id_status" VALUES (14,40,2,1);
INSERT INTO "user_wild_pokemon_face_id_status" VALUES (50,148,2,2);
INSERT INTO "user_wild_pokemon_face_id_status" VALUES (39,116,2,1);
INSERT INTO "user_wild_pokemon_face_id_status" VALUES (4,10,2,2);
INSERT INTO "user_wild_pokemon_face_id_status" VALUES (38,112,2,1);
INSERT INTO "user_wild_pokemon_face_id_status" VALUES (3,7,2,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701253043,4);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701253343,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701253943,0);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701258143,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701262043,4);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701262343,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701265643,0);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701268343,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701272843,4);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701273143,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701276443,0);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701277343,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701279143,4);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701279443,1);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701280943,4);
INSERT INTO "user_sleep_transitions" VALUES (1701253043,1701281003,4);
INSERT INTO "user_sleep_transitions" VALUES (1701752146,1701752146,4);
INSERT INTO "user_sleep_transitions" VALUES (1701752146,1701752146,4);
INSERT INTO "user_sleep" VALUES (1701253043,1701281243,1701253943,1701280943,-480,0,0,20231129,1,900,305,15,130,6778,333,2889,27000,1701267443,0,1,88,88,0,1,0,3,'1,1',1,2,0,1001,1,0,40000,3520000,88,181,267,'f4eb817e2f80d024/1701280382/1701253043_nrO5jGgfTEUG8L3Q.img',NULL,0,70,NULL,NULL,NULL,NULL,NULL,2,0,1);
INSERT INTO "user_sleep" VALUES (1701752146,1701788161,1701752146,1701788161,-480,0,0,20231205,1,0,0,0,0,0,0,0,36000,1701770154,0,99,100,100,700,1,0,1,'1,3,3,2,2,2,2',1,2,0,1,1,9,3411,341100,100,44,81,'f4eb817e2f80d024/1701280382/1701752146_JDTZiUBjyyccMATm.img','13f3032f9aa60b54/1701280382/1701752146_UBi7i5MAHVE0sy8d.voz',0,70,NULL,NULL,NULL,NULL,600,2,0,NULL);
INSERT INTO "user_sleep_joined_pokemons" VALUES (1701253043,2683378025326690192,14,1,0,1,1);
INSERT INTO "user_sleep_joined_pokemons" VALUES (1701752146,3669786575658158875,38,2,0,1,1);
INSERT INTO "user_sleep_joined_pokemons" VALUES (1701752146,8797235573036727908,3,2,0,1,3);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701253043,1,0,NULL,'1701253043-1',3,3,3,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701253043,1,3,NULL,'1701253043-1',3,5,5,1);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,1,2,NULL,'1701752146-1',5,5,5,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,2,1,NULL,'1701752146-2',1,1,1,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,2,1,NULL,'1701752146-2',1,2,2,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,2,1,NULL,'1701752146-2',1,3,3,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,2,1,NULL,'1701752146-2',1,4,4,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,3,0,NULL,'1701752146-3',3,3,3,NULL);
INSERT INTO "user_sleep_pokemon_baitball_results" VALUES (1701752146,3,1,1,'1701752146-3',3,5,5,1);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701253043,1,14,40,1,0,1,0,0,1,1,'1701253043-1',1);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701253043,2,50,148,1,0,1,0,0,0,1,'1701253043-2',0);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701253043,3,39,116,1,0,1,0,0,0,1,'1701253043-3',0);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701253043,4,4,10,2,0,1,0,0,0,1,'1701253043-4',0);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701253043,5,50,148,2,0,1,0,0,0,1,'1701253043-5',0);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701752146,1,38,112,2,0,1,0,0,0,1,'1701752146-1',1);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701752146,2,4,10,1,0,0,0,0,0,1,'1701752146-2',0);
INSERT INTO "user_sleep_pokemon_lottery_results" VALUES (1701752146,3,3,7,2,0,1,0,0,0,1,'1701752146-3',0);
INSERT INTO "user_profile" VALUES ('LoggedInAt',NULL,NULL,1701882570);
INSERT INTO "user_profile" VALUES ('UpdatedAt',NULL,NULL,1701743748);
INSERT INTO "user_profile" VALUES ('Birthday',19941115,NULL,NULL);
INSERT INTO "user_profile" VALUES ('LanguageCode',8,NULL,NULL);
INSERT INTO "user_profile" VALUES ('CountryCode',313,NULL,NULL);
INSERT INTO "user_profile" VALUES ('UserName',NULL,'root',NULL);
INSERT INTO "user_profile" VALUES ('UUID',NULL,'QuklRxRQ83dYfh9Q9kwpIFNjLTm4p8to1701280382',NULL);
INSERT INTO "user_profile" VALUES ('FriendId',NULL,'Hu4gzlaAx3P5GoxM',NULL);
INSERT INTO "user_profile" VALUES ('SupportId',NULL,'8CR2J346A7C9GYW4',NULL);
INSERT INTO "user_profile" VALUES ('FriendCode',NULL,'',NULL);
INSERT INTO "user_profile" VALUES ('FriendCodeCreatedAt',0,NULL,NULL);
INSERT INTO "user_profile" VALUES ('FriendCodeNextAt',0,NULL,NULL);
INSERT INTO "user_profile" VALUES ('AModeAgreeTime',1701280383,NULL,NULL);
INSERT INTO "user_profile" VALUES ('Mode',1,NULL,NULL);
INSERT INTO "user_profile" VALUES ('ToAModeTime',NULL,NULL,1289779200);
INSERT INTO "user_profile" VALUES ('TotalLoginDays',5,NULL,NULL);
INSERT INTO "user_profile" VALUES ('ConsecutiveLoginDays',3,NULL,NULL);
INSERT INTO "user_profile" VALUES ('EnableRemotePush',1,NULL,NULL);
INSERT INTO "user_profile" VALUES ('DeviceToken',NULL,'cOVBWoetRsa9z2WgGUGsae:APA91bHM1tttyNIfkQVU1SSwxVKl81VNZsXA3nQY81vr0AoDVPSgMY6YnlSG7n5DkOUCkCrQByM5wMoMf2dSp7PF0I0jKhNLIccjq1JtENsOsXkN5zQt4UZsNstREM33ZNjW7kD-LKwO',NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (1,2,NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (2,1,NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (2,1,NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (2,1,NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (2,1,NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (3,0,NULL);
INSERT INTO "user_main_research_progress_baitball" VALUES (3,1,1);
INSERT INTO "user_main_research_progress" VALUES ('States',0,NULL,NULL);
INSERT INTO "user_main_research_progress" VALUES ('SleepIds',NULL,'',NULL);
INSERT INTO "user_main_research_progress" VALUES ('SleepIdForResearch',NULL,NULL,NULL);
INSERT INTO "user_main_research_progress" VALUES ('FreeBaitBallCount',NULL,NULL,NULL);
INSERT INTO "user_main_research_progress" VALUES ('FieldId',NULL,NULL,NULL);
INSERT INTO "user_main_research_progress" VALUES ('BaitBallOrder',NULL,'',NULL);
INSERT INTO "user_main_research_progress" VALUES ('FreeBaitBallBonusAddFlag',NULL,NULL,NULL);
INSERT INTO "user_main_research_progress_pokemon_status" VALUES (1,38,112,2,0,1,1,5,NULL,NULL,NULL,NULL);
INSERT INTO "user_main_research_progress_pokemon_status" VALUES (2,4,10,1,0,1,0,4,NULL,NULL,NULL,NULL);
INSERT INTO "user_main_research_progress_pokemon_status" VALUES (3,3,7,2,0,1,1,5,NULL,NULL,NULL,NULL);
INSERT INTO "user_main_sleep_record_result" VALUES (1701752146,1);
INSERT INTO "user_main" VALUES ('UserDataVersion',422,NULL,NULL);
INSERT INTO "user_main" VALUES ('Coin',463,NULL,NULL);
INSERT INTO "user_main" VALUES ('DiaFree',280,NULL,NULL);
INSERT INTO "user_main" VALUES ('DiaPurchased',0,NULL,NULL);
INSERT INTO "user_main" VALUES ('ResearchExp',225,NULL,NULL);
INSERT INTO "user_main" VALUES ('PromiseTimeHour',23,NULL,NULL);
INSERT INTO "user_main" VALUES ('PromiseTimeMinute',30,NULL,NULL);
INSERT INTO "user_main" VALUES ('PromiseTimeCardNumber',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('PromiseTimeCardStepCount',0,NULL,NULL);
INSERT INTO "user_main" VALUES ('TutorialProgress',1000,NULL,NULL);
INSERT INTO "user_main" VALUES ('TutorialFlags',NULL,'20,30,40,50,60,10',NULL);
INSERT INTO "user_main" VALUES ('FieldId',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('IngredientsBagUnlockNumber',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('ConsumableItemBagUnlockNumber',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('SnorlaxNextDishEatTime',2023120518,NULL,NULL);
INSERT INTO "user_main" VALUES ('CookingExpansionUnlockLevel',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('SleepPoint',1220,NULL,NULL);
INSERT INTO "user_main" VALUES ('AlarmHour',8,NULL,NULL);
INSERT INTO "user_main" VALUES ('AlarmMinute',0,NULL,NULL);
INSERT INTO "user_main" VALUES ('ReNameFlag',0,NULL,NULL);
INSERT INTO "user_main" VALUES ('IgnoreIngredients',NULL,'',NULL);
INSERT INTO "user_main" VALUES ('BeginnerRewardCount',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('AddedFieldBonusHistory',NULL,'20231204',NULL);
INSERT INTO "user_main" VALUES ('SnorlaxEnergy',NULL,NULL,10438);
INSERT INTO "user_main" VALUES ('SnorlaxFavoriteFoods',NULL,'3,7,6',NULL);
INSERT INTO "user_main" VALUES ('SnorlaxRank',3,NULL,NULL);
INSERT INTO "user_main" VALUES ('SnorlaxRankupBonusReceivedRank',3,NULL,NULL);
INSERT INTO "user_main" VALUES ('SnorlaxDesiredDish',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('SnorlaxColorId',0,NULL,NULL);
INSERT INTO "user_main" VALUES ('MissionCount',6,NULL,NULL);
INSERT INTO "user_main" VALUES ('MissionId',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('SleepPassType',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('SleepPassExpireTime',NULL,NULL,0);
INSERT INTO "user_main" VALUES ('LastFieldId',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('LastFieldChangeDate',20231204,NULL,NULL);
INSERT INTO "user_main" VALUES ('PromiseRewardCardNum',1,NULL,NULL);
INSERT INTO "user_main" VALUES ('PromiseRewardStepCount',0,NULL,NULL);
INSERT INTO "user_main" VALUES ('BoostStartTime',NULL,NULL,0);
INSERT INTO "user_main" VALUES ('BoostExpireTime',NULL,NULL,0);
INSERT INTO "user_main" VALUES ('UnreceivedSleepPoint',0,NULL,NULL);
INSERT INTO "user_main_total_purchase_amount_info" VALUES ('JPY',202312,0);
INSERT INTO "user_support_pokemons" VALUES (1115683323196697783,1,1,1,'皮卡pika',1,0,0,0,0,1701872869,387,5,0,15,9,13,7,11,'5',4,1,'11',4,2,'11',4,3,8,64215,50,531,9,8,'','',1701281164,1,2678,1701281164,1,0,'','',308,126,56,1701797480);
INSERT INTO "user_support_pokemons" VALUES (2683378025326690192,14,0,1,'',0,0,0,0,0,1701873080,100,2,0,12,15,9,6,13,'7',4,2,'11',4,4,'7',4,7,2,36015,0,378,9,8,'','',1701281487,1,3143,1701281487,1,0,'','',133,189,55,1701797480);
INSERT INTO "user_support_pokemons" VALUES (3669786575658158875,38,0,2,'',0,0,0,0,0,1701873080,0,1,0,17,6,11,9,16,'9',4,1,'10',4,2,'10',4,3,11,0,39,260,9,8,'','',1701752488,1,5200,1701752488,1,0,'','',71,71,117,1701797480);
INSERT INTO "user_support_pokemons" VALUES (8797235573036727908,3,0,2,'',0,0,0,0,0,1701873080,0,1,0,12,9,5,13,14,'5',4,1,'5',4,2,'15',4,3,11,0,6,275,9,8,'','',1701752575,1,4900,1701752575,1,0,'','',146,93,35,1701797480);
INSERT INTO "user_support_teams" VALUES (1,'',1,8,1115683323196697783,2683378025326690192,3669786575658158875,8797235573036727908,-1);
INSERT INTO "user_support_teams" VALUES (2,'',0,8,1115683323196697783,-1,-1,-1,-1);
INSERT INTO "user_support_teams" VALUES (3,'',0,8,2683378025326690192,-1,-1,-1,-1);
INSERT INTO "user_support_teams" VALUES (4,'',0,8,1115683323196697783,-1,-1,-1,-1);
INSERT INTO "user_support_teams" VALUES (5,'',0,8,1115683323196697783,-1,-1,-1,-1);
INSERT INTO "user_achievement" VALUES (1,1,4,0);
INSERT INTO "user_achievement" VALUES (3,1,1,0);
INSERT INTO "user_achievement" VALUES (4,1,1,0);
INSERT INTO "user_achievement" VALUES (9,1,63000,0);
INSERT INTO "user_achievement" VALUES (10,1,2,0);
INSERT INTO "user_achievement" VALUES (13,1,1,0);
INSERT INTO "user_achievement" VALUES (14,1,909,0);
INSERT INTO "user_achievement" VALUES (15,1,3,0);
INSERT INTO "user_achievement" VALUES (16,1,1,0);
INSERT INTO "user_achievement" VALUES (18,1,1,0);
INSERT INTO "user_achievement" VALUES (25,1,2,0);
INSERT INTO "user_achievement" VALUES (32,1,1,0);
INSERT INTO "user_achievement" VALUES (33,1,3,1);
INSERT INTO "user_social_research" VALUES ('NextUpdateTime',NULL,NULL,1701935393);
INSERT INTO "user_social_research" VALUES ('LastUpdateTime',NULL,NULL,1701920993);
INSERT INTO "user_social_research" VALUES ('NewNumber',0,NULL,NULL);
INSERT INTO "user_social_research" VALUES ('ReceivedResearchRewardAt',NULL,NULL,0);
INSERT INTO "user_present" VALUES ('ReceivedAt',NULL,NULL,1701750589);
INSERT INTO "user_present" VALUES ('LatestPresentID',NULL,'449794135482695683',NULL);
INSERT INTO "user_present" VALUES ('OldestPresentID',NULL,'449630998221553665',NULL);
INSERT INTO "user_field_items_candy" VALUES (8797235573036727908,1701805480);
INSERT INTO "user_main_recovery_time" VALUES (1701752737,50);
INSERT INTO "user_main_recovery_time" VALUES (1701281886,50);
CREATE INDEX IF NOT EXISTS "index_on_sleep_sound_volume_smst" ON "user_sleep_sound_volume" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_stts_smst" ON "user_sleep_transitions" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_incei_mst" ON "user_sleep_incense_info" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_joip_mst" ON "user_sleep_joined_pokemons" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_plr_mst" ON "user_sleep_pokemon_lottery_results" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_bufs_ev_mst" ON "user_sleep_buff_data_event" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_bufs_po_mst" ON "user_sleep_buff_data_pokemon" (
	"MeasureStartTime"
);
CREATE INDEX IF NOT EXISTS "index_on_sleep_bufs_sub_mst" ON "user_sleep_buff_data_subskill" (
	"MeasureStartTime"
);
COMMIT;
