BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "sleeping_faces" (
	"id"	INTEGER,
	"name"	TEXT,
	"library_id"	INTEGER,
	"library_sub_id"	INTEGER,
	"display_name"	TEXT,
	"pokemon_id"	INTEGER,
	"rarity"	INTEGER,
	"research_p"	INTEGER,
	"coin"	INTEGER,
	"face_type"	INTEGER,
	"size"	INTEGER,
	"research_candy_num"	INTEGER,
	"on_snorlax"	INTEGER,
	"sleep_power_order"	INTEGER,
	"new_research_start_frame"	INTEGER,
	"ignore_tutorial"	INTEGER,
	"no_flip"	INTEGER
);
CREATE TABLE IF NOT EXISTS "species_candies" (
	"id"	INTEGER,
	"name"	TEXT,
	"narrow_name"	TEXT,
	"target_species_id"	INTEGER,
	"color_id"	INTEGER,
	"image_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemons" (
	"id"	INTEGER,
	"name"	TEXT,
	"full_name"	TEXT,
	"type"	INTEGER,
	"sleep_type"	INTEGER,
	"sleep_type_old"	INTEGER,
	"size"	INTEGER,
	"image_id"	INTEGER,
	"species_id"	INTEGER,
	"need_friend_point"	INTEGER,
	"exp_table_type"	INTEGER,
	"tmp_evolution_flag"	INTEGER,
	"transfer_candy_num"	INTEGER,
	"legendary"	INTEGER,
	"event_type_name"	INTEGER,
	"pattern_ids"	INTEGER,
	"form_id"	INTEGER,
	"form_order_id"	INTEGER,
	"form_name"	TEXT,
	"pokedex_order_id"	INTEGER,
	"pokedex_top_flag"	INTEGER,
	"is_invertable"	INTEGER,
	"capture_research_exp"	INTEGER,
	"capture_coin"	INTEGER,
	"is_rare"	INTEGER,
	"release_guard_flag"	INTEGER,
	"name_sort_id_jp"	INTEGER,
	"name_sort_id_en"	INTEGER,
	"name_sort_id_fr"	INTEGER,
	"name_sort_id_it"	INTEGER,
	"name_sort_id_de"	INTEGER,
	"name_sort_id_es"	INTEGER,
	"name_sort_id_ko"	INTEGER,
	"name_sort_id_ch"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_type_name" (
	"id"	INTEGER,
	"event_type_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "pokemon_pattern_name" (
	"id"	INTEGER,
	"pokemon_id"	INTEGER,
	"pattern_id"	INTEGER,
	"event_type_name"	INTEGER,
	"pokemon_pattern_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "event_weekly_missions" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"mission_type"	INTEGER,
	"need_num"	INTEGER,
	"reward_type"	INTEGER,
	"reward_id"	INTEGER,
	"reward_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokedex_data" (
	"id"	INTEGER,
	"pokemon_id"	INTEGER,
	"weight"	INTEGER,
	"height"	INTEGER,
	"pokedex_number"	INTEGER,
	"category_name"	TEXT,
	"desc"	TEXT,
	"has_male"	INTEGER,
	"has_female"	INTEGER,
	"is_gender_unknown"	INTEGER,
	"default_gender"	INTEGER,
	"has_event"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_evolutions" (
	"id"	INTEGER,
	"pokemon_id"	INTEGER,
	"evolves_into"	INTEGER,
	"evolution_type"	INTEGER,
	"need_candy"	INTEGER,
	"rank"	INTEGER,
	"evolution_item_id"	INTEGER,
	"evolution_item_num"	INTEGER,
	"total_sleep_min"	INTEGER,
	"period_of_time"	INTEGER,
	"gender"	INTEGER,
	"nature"	INTEGER,
	"field_id"	INTEGER,
	"sub_skill_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "evolution_items" (
	"id"	INTEGER,
	"name"	TEXT,
	"desc"	TEXT,
	"usage_type"	INTEGER
);
CREATE TABLE IF NOT EXISTS "all_purpose_candies" (
	"id"	INTEGER,
	"name"	TEXT,
	"change_num"	INTEGER,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "fields" (
	"id"	INTEGER,
	"name"	TEXT,
	"name_indirect"	TEXT,
	"desc"	TEXT,
	"field_sleeping_face_table_ids"	TEXT,
	"favorite_food_ids"	TEXT,
	"snorlax_rank_unlock_sleeping_faces_group_id"	INTEGER,
	"appropriate_party_sp"	INTEGER,
	"variation_ids"	TEXT
);
CREATE TABLE IF NOT EXISTS "color_codes" (
	"id"	INTEGER,
	"code"	TEXT
);
CREATE TABLE IF NOT EXISTS "field_sleeping_face_table" (
	"id"	INTEGER,
	"sleeping_face_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_rankup_bonus" (
	"id"	INTEGER,
	"name"	TEXT,
	"desc"	TEXT,
	"bonus_type"	INTEGER,
	"bonus_num"	INTEGER,
	"rarity"	INTEGER,
	"upgrade_to"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_types" (
	"id"	INTEGER,
	"name"	TEXT,
	"icon_type"	INTEGER,
	"is_ps_type"	INTEGER,
	"sleep_type"	INTEGER,
	"sleep_type_old"	INTEGER
);
CREATE TABLE IF NOT EXISTS "sleep_pass_exchange_shop" (
	"id"	INTEGER,
	"need_point"	INTEGER,
	"name"	TEXT,
	"item_id"	INTEGER,
	"item_num"	INTEGER,
	"item_type"	INTEGER,
	"exchange_limit_num"	INTEGER,
	"order_id"	INTEGER,
	"tracking_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "sleep_pass_exchange_shop_item_table" (
	"id"	INTEGER,
	"start_date"	INTEGER,
	"end_date"	INTEGER,
	"shop_item_ids"	TEXT,
	"premium_shop_item_ids"	TEXT,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "snorlax_rank" (
	"id"	INTEGER,
	"main_rank"	INTEGER,
	"sub_rank"	INTEGER,
	"need_energy_field_1"	INTEGER,
	"reward_coin_field_1"	INTEGER,
	"sample_pokemon_ids_field_1"	TEXT,
	"need_energy_field_2"	INTEGER,
	"reward_coin_field_2"	INTEGER,
	"sample_pokemon_ids_field_2"	TEXT,
	"need_energy_field_3"	INTEGER,
	"reward_coin_field_3"	INTEGER,
	"sample_pokemon_ids_field_3"	TEXT,
	"need_energy_field_4"	INTEGER,
	"reward_coin_field_4"	INTEGER,
	"sample_pokemon_ids_field_4"	TEXT,
	"need_energy_field_5"	INTEGER,
	"reward_coin_field_5"	INTEGER,
	"sample_pokemon_ids_field_5"	TEXT,
	"need_energy_field_6"	INTEGER,
	"reward_coin_field_6"	INTEGER,
	"sample_pokemon_ids_field_6"	TEXT
);
CREATE TABLE IF NOT EXISTS "berries" (
	"id"	INTEGER,
	"name"	TEXT,
	"energy"	INTEGER,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "berry_energy" (
	"id"	INTEGER,
	"berry_id"	INTEGER,
	"rank"	INTEGER,
	"energy"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_pickup_status" (
	"id"	INTEGER,
	"pokemon_id"	INTEGER,
	"need_sec"	INTEGER,
	"normal_berry_id"	INTEGER,
	"normal_berry_num"	INTEGER,
	"main_skill_id"	INTEGER,
	"max_own_item_count"	INTEGER,
	"formation_tag"	INTEGER
);
CREATE TABLE IF NOT EXISTS "cooking_foods" (
	"id"	INTEGER,
	"name"	TEXT,
	"narrow_name"	TEXT,
	"memo_value"	INTEGER,
	"energy"	INTEGER,
	"type"	INTEGER,
	"need_cooking"	INTEGER,
	"cooking_stuff"	INTEGER,
	"sell_coin"	INTEGER,
	"desc"	TEXT,
	"name_sort_id_jp"	INTEGER,
	"name_sort_id_en"	INTEGER,
	"name_sort_id_fr"	INTEGER,
	"name_sort_id_it"	INTEGER,
	"name_sort_id_de"	INTEGER,
	"name_sort_id_es"	INTEGER,
	"name_sort_id_ko"	INTEGER,
	"name_sort_id_ch"	INTEGER
);
CREATE TABLE IF NOT EXISTS "cooking_bonus" (
	"id"	INTEGER,
	"cooking_count"	INTEGER,
	"energy_bonus_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "daytimepower_condition" (
	"id"	INTEGER,
	"daytimepower"	INTEGER,
	"condition"	INTEGER
);
CREATE TABLE IF NOT EXISTS "cooking_new_dishes_table" (
	"id"	INTEGER,
	"record_num_or_less"	INTEGER,
	"per"	INTEGER
);
CREATE TABLE IF NOT EXISTS "other_parameters" (
	"id"	INTEGER,
	"key"	TEXT,
	"value"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_main_skills" (
	"id"	INTEGER,
	"name"	TEXT,
	"effect_type"	INTEGER,
	"desc"	TEXT,
	"level_1"	INTEGER,
	"level_2"	INTEGER,
	"level_3"	INTEGER,
	"level_4"	INTEGER,
	"level_5"	INTEGER,
	"level_6"	INTEGER,
	"level_1_formation_power"	INTEGER,
	"level_2_formation_power"	INTEGER,
	"level_3_formation_power"	INTEGER,
	"level_4_formation_power"	INTEGER,
	"level_5_formation_power"	INTEGER,
	"level_6_formation_power"	INTEGER,
	"random_range_lower"	INTEGER,
	"random_range_upper"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_nature" (
	"id"	INTEGER,
	"name"	TEXT,
	"daytimepower"	INTEGER,
	"exp"	INTEGER,
	"pickup_speed_comment"	INTEGER,
	"daytimepower_comment"	INTEGER,
	"rare_freq_comment"	INTEGER,
	"main_skill_freq_comment"	INTEGER,
	"exp_comment"	INTEGER,
	"skill_freq_comment"	INTEGER,
	"sp_per"	INTEGER
);
CREATE TABLE IF NOT EXISTS "incense" (
	"id"	INTEGER,
	"name"	TEXT,
	"effect_type"	INTEGER,
	"effect_num"	INTEGER,
	"icon_id"	INTEGER,
	"desc"	TEXT,
	"bag_sort_index"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_incense" (
	"id"	INTEGER,
	"name"	TEXT,
	"target_pokemon_id"	INTEGER,
	"available_field_ids"	TEXT,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "research_rank" (
	"id"	INTEGER,
	"rank"	INTEGER,
	"level"	INTEGER,
	"need_user_exp"	INTEGER,
	"reward_item_type1"	INTEGER,
	"reward_item_id1"	INTEGER,
	"reward_item_num1"	INTEGER,
	"reward_item_type2"	INTEGER,
	"reward_item_id2"	INTEGER,
	"reward_item_num2"	INTEGER,
	"reward_item_type3"	INTEGER,
	"reward_item_id3"	INTEGER,
	"reward_item_num3"	INTEGER,
	"pokemon_rank_cap"	INTEGER,
	"coin_bag_num_base"	INTEGER
);
CREATE TABLE IF NOT EXISTS "gpp_go_bonus_reward" (
	"id"	INTEGER,
	"reward_food_num"	INTEGER,
	"reward_food_id"	INTEGER,
	"rolls"	INTEGER
);
CREATE TABLE IF NOT EXISTS "sleeptime_promise" (
	"id"	INTEGER,
	"day"	INTEGER,
	"reward_item_type"	INTEGER,
	"reward_item_id"	INTEGER,
	"reward_item_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "weekly_report_comment" (
	"id"	INTEGER,
	"sleep_length_score"	INTEGER,
	"mst_score"	INTEGER,
	"comment"	TEXT
);
CREATE TABLE IF NOT EXISTS "weekly_report_reward" (
	"id"	INTEGER,
	"score"	INTEGER,
	"type_id"	INTEGER,
	"item_id"	INTEGER,
	"num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "coin_per_candy_table" (
	"id"	INTEGER,
	"level"	INTEGER,
	"rank"	INTEGER,
	"need_coin_per_candy"	INTEGER
);
CREATE TABLE IF NOT EXISTS "storehouse_cookingfood" (
	"id"	INTEGER,
	"level"	INTEGER,
	"max_num"	INTEGER,
	"price"	INTEGER
);
CREATE TABLE IF NOT EXISTS "storehouse_consumable_item" (
	"id"	INTEGER,
	"level"	INTEGER,
	"max_num"	INTEGER,
	"price"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_rank_exp_table" (
	"id"	INTEGER,
	"rank"	INTEGER,
	"need_exp_type_1"	INTEGER,
	"need_exp_type_2"	INTEGER,
	"need_exp_type_3"	INTEGER,
	"need_exp_type_4"	INTEGER,
	"need_exp_type_5"	INTEGER,
	"need_exp_type_6"	INTEGER,
	"need_exp_type_7"	INTEGER,
	"need_exp_type_8"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemonbox_expand_table" (
	"id"	INTEGER,
	"level"	INTEGER,
	"max_num"	INTEGER,
	"price"	INTEGER
);
CREATE TABLE IF NOT EXISTS "main_missions" (
	"id"	INTEGER,
	"name"	TEXT,
	"need_library_num"	INTEGER,
	"unlock_field_id"	INTEGER,
	"unlock_features"	INTEGER,
	"reward_dia_num"	INTEGER,
	"additional_cooking_max_num"	INTEGER,
	"optinal_task_ids"	INTEGER,
	"cooking_expand_level_limit"	INTEGER,
	"reward_item_types"	TEXT,
	"reward_item_ids"	TEXT,
	"reward_item_nums"	TEXT,
	"snorlax_growth_multiplier_max"	INTEGER
);
CREATE TABLE IF NOT EXISTS "main_mission_optinal_task_types" (
	"id"	INTEGER,
	"name"	TEXT,
	"tips"	TEXT
);
CREATE TABLE IF NOT EXISTS "main_mission_optional_tasks" (
	"id"	INTEGER,
	"mission_type"	INTEGER,
	"memo"	TEXT,
	"need_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "main_mission_story" (
	"id"	INTEGER,
	"mission_id"	INTEGER,
	"story_index"	INTEGER,
	"message"	TEXT,
	"illust_id"	INTEGER,
	"ms_tag_flag"	INTEGER
);
CREATE TABLE IF NOT EXISTS "unlock_features" (
	"id"	INTEGER,
	"name"	TEXT
);
CREATE TABLE IF NOT EXISTS "weekly_missions" (
	"id"	INTEGER,
	"mission_type"	INTEGER,
	"need_num"	INTEGER,
	"reward_type"	INTEGER,
	"reward_id"	INTEGER,
	"reward_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "weekly_mission_types" (
	"id"	INTEGER,
	"name"	TEXT,
	"tips"	TEXT
);
CREATE TABLE IF NOT EXISTS "bait_balls" (
	"id"	INTEGER,
	"name"	TEXT,
	"num"	INTEGER,
	"bag_sort_index"	INTEGER,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "item_type" (
	"id"	INTEGER,
	"name"	TEXT
);
CREATE TABLE IF NOT EXISTS "ingredient_bag_items" (
	"id"	INTEGER,
	"name"	TEXT,
	"num"	INTEGER,
	"bag_sort_index"	INTEGER,
	"ingredient_type_num"	INTEGER,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "coin_bag_items" (
	"id"	INTEGER,
	"name"	TEXT,
	"num"	INTEGER,
	"bag_sort_index"	INTEGER,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "power_recover_items" (
	"id"	INTEGER,
	"name"	TEXT,
	"desc"	TEXT,
	"num"	INTEGER,
	"bag_sort_index"	INTEGER
);
CREATE TABLE IF NOT EXISTS "gpp_voice_list" (
	"id"	INTEGER,
	"slot_id"	INTEGER,
	"name"	TEXT,
	"memo"	TEXT,
	"is_secret"	INTEGER
);
CREATE TABLE IF NOT EXISTS "gpp_totalsleep_reward_table" (
	"id"	INTEGER,
	"level"	INTEGER,
	"total_sleep_hour"	INTEGER,
	"pickup_max_num"	INTEGER,
	"pickup_need_sec"	INTEGER,
	"pickup_berry_id"	INTEGER,
	"pickup_berry_num"	INTEGER,
	"pickup_ingredient_1_id"	INTEGER,
	"pickup_ingredient_1_num"	INTEGER,
	"pickup_ingredient_2_id"	INTEGER,
	"pickup_ingredient_2_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "sleep_tips" (
	"id"	INTEGER,
	"title"	TEXT,
	"narrow_title"	TEXT,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "cooking_expand_table" (
	"id"	INTEGER,
	"level"	INTEGER,
	"expand_num"	INTEGER,
	"need_coin"	INTEGER
);
CREATE TABLE IF NOT EXISTS "item_packs" (
	"id"	INTEGER,
	"name"	TEXT,
	"item_types"	TEXT,
	"item_ids"	TEXT,
	"item_nums"	TEXT,
	"bonus_purchase_count"	INTEGER,
	"bonus_item_types"	INTEGER,
	"bonus_item_ids"	INTEGER,
	"bonus_item_nums"	INTEGER,
	"desc"	TEXT
);
CREATE TABLE IF NOT EXISTS "event_item_packs" (
	"id"	INTEGER,
	"name"	TEXT,
	"item_types"	TEXT,
	"item_ids"	TEXT,
	"item_nums"	TEXT,
	"desc"	TEXT,
	"image_id"	INTEGER,
	"label_tag_num"	INTEGER
);
CREATE TABLE IF NOT EXISTS "dia_shop" (
	"id"	INTEGER,
	"price"	INTEGER,
	"name"	TEXT,
	"item_type"	INTEGER,
	"item_id"	INTEGER,
	"item_num"	INTEGER,
	"order_id"	INTEGER,
	"group_id"	INTEGER,
	"limit_count"	INTEGER,
	"tracking_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "dia_shop_group" (
	"id"	INTEGER,
	"order_id"	INTEGER,
	"section_header_type"	INTEGER,
	"ms_label"	TEXT,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_list" (
	"id"	INTEGER,
	"start_date"	INTEGER,
	"end_date"	TEXT,
	"event_type"	INTEGER,
	"sub_type_1"	INTEGER,
	"sub_type_2"	INTEGER,
	"sub_type_3"	INTEGER,
	"time_zone_type"	INTEGER,
	"event_field_ids"	INTEGER
);
CREATE TABLE IF NOT EXISTS "dia_products" (
	"id"	INTEGER,
	"os"	INTEGER,
	"product_id"	TEXT,
	"name"	TEXT,
	"desc"	TEXT,
	"image"	TEXT,
	"paid_dia"	INTEGER,
	"free_dia"	INTEGER,
	"purchase_bonuses_ids"	INTEGER,
	"order_id"	INTEGER,
	"jpy"	INTEGER,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "premium_pass_products" (
	"id"	INTEGER,
	"os"	INTEGER,
	"product_id"	TEXT,
	"name"	TEXT,
	"desc"	TEXT,
	"image"	TEXT,
	"continuous_months"	INTEGER,
	"purchase_bonuses_group_id"	INTEGER,
	"continuation_bonuses_group_id"	INTEGER,
	"purchase_bonuses_ids"	INTEGER,
	"continuation_bonuses_ids"	INTEGER,
	"order_id"	INTEGER,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "purchase_bonuses" (
	"id"	INTEGER,
	"group_id"	INTEGER,
	"item_type1"	INTEGER,
	"item_id1"	INTEGER,
	"item_num1"	INTEGER,
	"item_type2"	INTEGER,
	"item_id2"	INTEGER,
	"item_num2"	INTEGER,
	"item_type3"	INTEGER,
	"item_id3"	INTEGER,
	"item_num3"	INTEGER,
	"item_type"	INTEGER,
	"item_id"	INTEGER,
	"item_count"	INTEGER,
	"order_id"	INTEGER,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "continuation_bonuses" (
	"id"	INTEGER,
	"group_id"	INTEGER,
	"interval_month"	INTEGER,
	"item_type1"	INTEGER,
	"item_id1"	INTEGER,
	"item_num1"	INTEGER,
	"item_type2"	INTEGER,
	"item_id2"	INTEGER,
	"item_num2"	INTEGER,
	"item_type3"	INTEGER,
	"item_id3"	INTEGER,
	"item_num3"	INTEGER,
	"item_type"	INTEGER,
	"item_id"	INTEGER,
	"item_count"	INTEGER,
	"order_id"	INTEGER,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "achievements" (
	"id"	INTEGER,
	"type_id"	INTEGER,
	"name"	TEXT,
	"short_name"	TEXT,
	"desc"	TEXT,
	"cleard_message"	TEXT,
	"param1"	INTEGER,
	"param2"	INTEGER,
	"param3"	INTEGER
);
CREATE TABLE IF NOT EXISTS "achievement_conditions" (
	"id"	INTEGER,
	"desc"	TEXT,
	"achievement_id"	INTEGER,
	"step"	INTEGER,
	"clear_count"	INTEGER,
	"reward_item_type"	INTEGER,
	"reward_item_id"	INTEGER,
	"reward_item_num"	INTEGER,
	"condition1"	INTEGER,
	"condition2"	INTEGER,
	"condition3"	INTEGER
);
CREATE TABLE IF NOT EXISTS "country_codes" (
	"id"	INTEGER,
	"group_id"	INTEGER,
	"group_sort"	INTEGER,
	"country_codes"	INTEGER,
	"country_sort"	INTEGER
);
CREATE TABLE IF NOT EXISTS "friendship_rewards" (
	"id"	INTEGER,
	"item_type"	INTEGER,
	"item_id"	INTEGER,
	"item_count"	INTEGER
);
CREATE TABLE IF NOT EXISTS "profile_icons" (
	"id"	INTEGER,
	"image_id"	TEXT,
	"unlock_captured_pokemon_id"	INTEGER,
	"sort_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "snorlax_rank_unlock_sleeping_faces" (
	"id"	INTEGER,
	"group_id"	INTEGER,
	"snorlax_rank_unlock_face_table_ids1"	TEXT,
	"snorlax_rank_unlock_face_table_ids2"	TEXT,
	"snorlax_rank_unlock_face_table_ids3"	TEXT,
	"snorlax_rank_unlock_face_table_ids4"	TEXT,
	"snorlax_rank_unlock_face_table_ids5"	TEXT,
	"snorlax_rank_unlock_face_table_ids6"	TEXT,
	"snorlax_rank_unlock_face_table_ids7"	TEXT,
	"snorlax_rank_unlock_face_table_ids8"	TEXT,
	"snorlax_rank_unlock_face_table_ids9"	TEXT,
	"snorlax_rank_unlock_face_table_ids10"	TEXT,
	"snorlax_rank_unlock_face_table_ids11"	TEXT,
	"snorlax_rank_unlock_face_table_ids12"	TEXT,
	"snorlax_rank_unlock_face_table_ids13"	TEXT,
	"snorlax_rank_unlock_face_table_ids14"	TEXT,
	"snorlax_rank_unlock_face_table_ids15"	TEXT,
	"snorlax_rank_unlock_face_table_ids16"	TEXT,
	"snorlax_rank_unlock_face_table_ids17"	TEXT,
	"snorlax_rank_unlock_face_table_ids18"	TEXT,
	"snorlax_rank_unlock_face_table_ids19"	TEXT,
	"snorlax_rank_unlock_face_table_ids20"	TEXT,
	"snorlax_rank_unlock_face_table_ids21"	TEXT,
	"snorlax_rank_unlock_face_table_ids22"	TEXT,
	"snorlax_rank_unlock_face_table_ids23"	TEXT,
	"snorlax_rank_unlock_face_table_ids24"	TEXT,
	"snorlax_rank_unlock_face_table_ids25"	TEXT,
	"snorlax_rank_unlock_face_table_ids26"	TEXT,
	"snorlax_rank_unlock_face_table_ids27"	INTEGER,
	"snorlax_rank_unlock_face_table_ids28"	INTEGER,
	"snorlax_rank_unlock_face_table_ids29"	INTEGER,
	"snorlax_rank_unlock_face_table_ids30"	INTEGER,
	"snorlax_rank_unlock_face_table_ids31"	INTEGER,
	"snorlax_rank_unlock_face_table_ids32"	INTEGER,
	"snorlax_rank_unlock_face_table_ids33"	INTEGER,
	"snorlax_rank_unlock_face_table_ids34"	INTEGER,
	"snorlax_rank_unlock_face_table_ids35"	INTEGER,
	"snorlax_rank_unlock_face_table_ids36"	INTEGER,
	"event_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "tutorial_stories" (
	"id"	INTEGER,
	"story_id"	INTEGER,
	"page_index"	INTEGER,
	"message"	TEXT,
	"illust_id"	INTEGER,
	"speaker_id"	INTEGER,
	"ms_tag_flag"	INTEGER,
	"branch_flag"	INTEGER,
	"mode_b_flag"	INTEGER
);
CREATE TABLE IF NOT EXISTS "item_name_data" (
	"id"	INTEGER,
	"item_type"	INTEGER,
	"item_id"	INTEGER,
	"name"	TEXT,
	"desc"	TEXT,
	"desc_short"	TEXT
);
CREATE TABLE IF NOT EXISTS "item_sort_data" (
	"id"	INTEGER,
	"item_type"	INTEGER,
	"item_id"	INTEGER,
	"default_sort"	INTEGER,
	"name_sort_id_jp"	INTEGER,
	"name_sort_id_en"	INTEGER,
	"name_sort_id_fr"	INTEGER,
	"name_sort_id_it"	INTEGER,
	"name_sort_id_de"	INTEGER,
	"name_sort_id_es"	INTEGER,
	"name_sort_id_ko"	INTEGER,
	"name_sort_id_ch"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_interaction_data" (
	"id"	INTEGER,
	"message"	TEXT,
	"freq"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_sleep_power_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"multiplier"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_sleep_type_lottery_ratio" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"lottery_ratio"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_pokemon_sleep_exp_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"multiplier"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_sleep_point_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"normal_pass_multiplier"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_shiny_freq_denominator" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"pokemon_ids"	TEXT,
	"denominator"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_sleeping_face_params" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"pokemon_face_ids"	TEXT,
	"desc_label"	TEXT
);
CREATE TABLE IF NOT EXISTS "event_pickup_buff_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"main_skill_rate_up"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_pokemon_candy_exp_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"multiplier"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_energy_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"berry_multiplier"	INTEGER,
	"cooking_multiplier"	INTEGER,
	"support_skill_multiplier"	INTEGER
);
CREATE TABLE IF NOT EXISTS "event_research_candy_multiplier" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"multiplier"	INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_food_sp_correction" (
	"id"	INTEGER,
	"rank"	INTEGER,
	"correction_per"	INTEGER
);
CREATE TABLE IF NOT EXISTS "kpi_event_token_list" (
	"id"	INTEGER,
	"event_name"	TEXT,
	"token"	TEXT
);
CREATE TABLE IF NOT EXISTS "event_sleep_point_bonus" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	"add_point"	INTEGER
);
CREATE TABLE IF NOT EXISTS "fields_event_pokemons" (
	"id"	INTEGER,
	"field_ids"	INTEGER,
	"sleeping_face_ids"	TEXT,
	"event_ids"	TEXT
);
CREATE TABLE IF NOT EXISTS "cooking_recovery_power" (
	"id"	INTEGER,
	"from_current_power"	INTEGER,
	"to_current_power"	INTEGER,
	"recovery_power"	INTEGER
);
CREATE TABLE IF NOT EXISTS "buff_type" (
	"id"	INTEGER,
	"name"	TEXT
);
CREATE TABLE IF NOT EXISTS "sleep_sounds" (
	"id"	INTEGER,
	"name"	TEXT,
	"sort_order"	INTEGER,
	"file_id"	TEXT,
	"sound_type"	INTEGER
);
INSERT INTO "sleeping_faces" VALUES (1,'md_sleeping_faces_name_25-1',25,1,'md_sleeping_faces_display_name_25-1',1,1,7,20,1,1,4,0,2,523,0,0);
INSERT INTO "sleeping_faces" VALUES (2,'md_sleeping_faces_name_25-2',25,2,'md_sleeping_faces_display_name_25-2',1,2,77,232,2,1,6,0,60,345,0,0);
INSERT INTO "sleeping_faces" VALUES (3,'md_sleeping_faces_name_25-3',25,3,'md_sleeping_faces_display_name_25-3',1,3,320,958,3,2,8,0,219,379,0,0);
INSERT INTO "sleeping_faces" VALUES (4,'md_sleeping_faces_name_133-1',133,1,'md_sleeping_faces_display_name_133-1',2,1,20,36,1,2,3,0,11,398,0,0);
INSERT INTO "sleeping_faces" VALUES (5,'md_sleeping_faces_name_133-2',133,2,'md_sleeping_faces_display_name_133-2',2,2,127,227,2,1,5,0,74,590,0,0);
INSERT INTO "sleeping_faces" VALUES (6,'md_sleeping_faces_name_133-3',133,3,'md_sleeping_faces_display_name_133-3',2,3,508,915,3,1,7,0,261,390,0,0);
INSERT INTO "sleeping_faces" VALUES (7,'md_sleeping_faces_name_19-1',19,1,'md_sleeping_faces_display_name_19-1',3,1,7,20,1,1,3,0,2,340,0,0);
INSERT INTO "sleeping_faces" VALUES (8,'md_sleeping_faces_name_19-2',19,2,'md_sleeping_faces_display_name_19-2',3,2,53,158,2,1,5,0,41,382,0,0);
INSERT INTO "sleeping_faces" VALUES (9,'md_sleeping_faces_name_19-3',19,3,'md_sleeping_faces_display_name_19-3',3,3,252,757,3,1,7,0,173,332,0,0);
INSERT INTO "sleeping_faces" VALUES (10,'md_sleeping_faces_name_52-1',52,1,'md_sleeping_faces_display_name_52-1',4,1,8,17,1,1,3,0,2,380,0,0);
INSERT INTO "sleeping_faces" VALUES (11,'md_sleeping_faces_name_52-2',52,2,'md_sleeping_faces_display_name_52-2',4,2,95,201,2,1,5,0,60,345,0,0);
INSERT INTO "sleeping_faces" VALUES (12,'md_sleeping_faces_name_52-3',52,3,'md_sleeping_faces_display_name_52-3',4,3,392,828,3,1,7,0,219,332,0,0);
INSERT INTO "sleeping_faces" VALUES (13,'md_sleeping_faces_name_172-1',172,1,'md_sleeping_faces_display_name_172-1',5,1,7,20,1,2,3,0,2,397,0,0);
INSERT INTO "sleeping_faces" VALUES (14,'md_sleeping_faces_name_172-2',172,2,'md_sleeping_faces_display_name_172-2',5,2,53,158,2,2,5,0,41,603,0,0);
INSERT INTO "sleeping_faces" VALUES (15,'md_sleeping_faces_name_172-3',172,3,'md_sleeping_faces_display_name_172-3',5,3,252,757,3,1,7,0,173,501,0,0);
INSERT INTO "sleeping_faces" VALUES (16,'md_sleeping_faces_name_1-1',1,1,'md_sleeping_faces_display_name_1-1',6,1,18,39,1,1,3,0,11,602,0,0);
INSERT INTO "sleeping_faces" VALUES (17,'md_sleeping_faces_name_1-2',1,2,'md_sleeping_faces_display_name_1-2',6,2,116,246,2,1,5,0,74,361,0,0);
INSERT INTO "sleeping_faces" VALUES (18,'md_sleeping_faces_name_1-3',1,3,'md_sleeping_faces_display_name_1-3',6,3,468,988,3,1,7,0,261,285,0,0);
INSERT INTO "sleeping_faces" VALUES (19,'md_sleeping_faces_name_2-1',2,1,'md_sleeping_faces_display_name_2-1',7,1,116,245,1,2,5,0,83,450,0,0);
INSERT INTO "sleeping_faces" VALUES (20,'md_sleeping_faces_name_2-2',2,2,'md_sleeping_faces_display_name_2-2',7,2,318,673,2,2,7,0,203,307,0,0);
INSERT INTO "sleeping_faces" VALUES (21,'md_sleeping_faces_name_2-3',2,3,'md_sleeping_faces_display_name_2-3',7,3,1043,2205,3,1,9,0,583,380,0,0);
INSERT INTO "sleeping_faces" VALUES (22,'md_sleeping_faces_name_10-1',10,1,'md_sleeping_faces_display_name_10-1',8,1,11,12,1,1,3,0,2,474,0,0);
INSERT INTO "sleeping_faces" VALUES (23,'md_sleeping_faces_name_10-2',10,2,'md_sleeping_faces_display_name_10-2',8,2,88,95,2,1,5,0,41,381,0,0);
INSERT INTO "sleeping_faces" VALUES (24,'md_sleeping_faces_name_10-3',10,3,'md_sleeping_faces_display_name_10-3',8,3,421,454,3,1,7,0,173,378,0,0);
INSERT INTO "sleeping_faces" VALUES (25,'md_sleeping_faces_name_11-1',11,1,'md_sleeping_faces_display_name_11-1',9,1,29,31,1,2,5,0,15,372,0,0);
INSERT INTO "sleeping_faces" VALUES (26,'md_sleeping_faces_name_11-2',11,2,'md_sleeping_faces_display_name_11-2',9,2,176,191,2,2,7,0,83,511,0,0);
INSERT INTO "sleeping_faces" VALUES (27,'md_sleeping_faces_name_11-3',11,3,'md_sleeping_faces_display_name_11-3',9,3,693,748,3,1,9,0,285,420,0,0);
INSERT INTO "sleeping_faces" VALUES (28,'md_sleeping_faces_name_12-1',12,1,'md_sleeping_faces_display_name_12-1',10,1,397,715,1,1,8,0,261,318,0,0);
INSERT INTO "sleeping_faces" VALUES (29,'md_sleeping_faces_name_12-2',12,2,'md_sleeping_faces_display_name_12-2',10,2,933,1679,2,2,10,0,548,352,0,0);
INSERT INTO "sleeping_faces" VALUES (30,'md_sleeping_faces_name_12-3',12,3,'md_sleeping_faces_display_name_12-3',10,3,2461,4430,3,2,12,0,1265,360,0,0);
INSERT INTO "sleeping_faces" VALUES (31,'md_sleeping_faces_name_39-1',39,1,'md_sleeping_faces_display_name_39-1',11,1,23,24,1,2,4,0,8,335,0,0);
INSERT INTO "sleeping_faces" VALUES (32,'md_sleeping_faces_name_39-2',39,2,'md_sleeping_faces_display_name_39-2',11,2,141,153,2,2,6,0,66,279,0,0);
INSERT INTO "sleeping_faces" VALUES (33,'md_sleeping_faces_name_39-3',39,3,'md_sleeping_faces_display_name_39-3',11,3,582,629,3,1,8,0,240,474,0,0);
INSERT INTO "sleeping_faces" VALUES (34,'md_sleeping_faces_name_7-1',7,1,'md_sleeping_faces_display_name_7-1',12,1,18,39,1,1,3,0,11,354,0,0);
INSERT INTO "sleeping_faces" VALUES (35,'md_sleeping_faces_name_7-2',7,2,'md_sleeping_faces_display_name_7-2',12,2,116,246,2,2,5,0,74,372,0,0);
INSERT INTO "sleeping_faces" VALUES (36,'md_sleeping_faces_name_7-3',7,3,'md_sleeping_faces_display_name_7-3',12,3,468,988,3,2,7,0,261,524,0,0);
INSERT INTO "sleeping_faces" VALUES (37,'md_sleeping_faces_name_8-1',8,1,'md_sleeping_faces_display_name_8-1',13,1,116,245,1,1,5,0,83,435,0,0);
INSERT INTO "sleeping_faces" VALUES (38,'md_sleeping_faces_name_8-2',8,2,'md_sleeping_faces_display_name_8-2',13,2,318,673,2,1,7,0,203,342,0,0);
INSERT INTO "sleeping_faces" VALUES (39,'md_sleeping_faces_name_8-3',8,3,'md_sleeping_faces_display_name_8-3',13,3,1043,2205,3,2,9,0,583,394,0,0);
INSERT INTO "sleeping_faces" VALUES (40,'md_sleeping_faces_name_4-1',4,1,'md_sleeping_faces_display_name_4-1',14,1,16,42,1,2,3,0,11,395,0,0);
INSERT INTO "sleeping_faces" VALUES (41,'md_sleeping_faces_name_4-2',4,2,'md_sleeping_faces_display_name_4-2',14,2,104,268,2,1,5,0,74,290,0,0);
INSERT INTO "sleeping_faces" VALUES (42,'md_sleeping_faces_name_4-3',4,3,'md_sleeping_faces_display_name_4-3',14,3,417,1080,3,1,7,0,261,296,0,0);
INSERT INTO "sleeping_faces" VALUES (43,'md_sleeping_faces_name_5-1',5,1,'md_sleeping_faces_display_name_5-1',15,1,116,245,1,1,5,0,83,390,0,0);
INSERT INTO "sleeping_faces" VALUES (44,'md_sleeping_faces_name_5-2',5,2,'md_sleeping_faces_display_name_5-2',15,2,318,673,2,1,7,0,203,473,0,0);
INSERT INTO "sleeping_faces" VALUES (45,'md_sleeping_faces_name_5-3',5,3,'md_sleeping_faces_display_name_5-3',15,3,1043,2205,3,1,9,0,583,282,0,0);
INSERT INTO "sleeping_faces" VALUES (46,'md_sleeping_faces_name_79-1',79,1,'md_sleeping_faces_display_name_79-1',16,1,11,12,1,1,3,0,2,285,0,0);
INSERT INTO "sleeping_faces" VALUES (47,'md_sleeping_faces_name_79-2',79,2,'md_sleeping_faces_display_name_79-2',16,2,116,125,2,1,5,0,55,316,0,0);
INSERT INTO "sleeping_faces" VALUES (48,'md_sleeping_faces_name_79-3',79,3,'md_sleeping_faces_display_name_79-3',16,3,494,534,3,1,7,0,203,558,0,0);
INSERT INTO "sleeping_faces" VALUES (49,'md_sleeping_faces_name_158-1',158,1,'md_sleeping_faces_display_name_158-1',17,1,20,36,1,1,3,0,11,370,1,0);
INSERT INTO "sleeping_faces" VALUES (50,'md_sleeping_faces_name_158-2',158,2,'md_sleeping_faces_display_name_158-2',17,2,127,227,2,1,5,0,74,427,1,0);
INSERT INTO "sleeping_faces" VALUES (51,'md_sleeping_faces_name_158-3',158,3,'md_sleeping_faces_display_name_158-3',17,3,508,915,3,1,7,0,261,280,0,0);
INSERT INTO "sleeping_faces" VALUES (52,'md_sleeping_faces_name_159-1',159,1,'md_sleeping_faces_display_name_159-1',18,1,126,227,1,1,5,0,83,340,0,0);
INSERT INTO "sleeping_faces" VALUES (53,'md_sleeping_faces_name_159-2',159,2,'md_sleeping_faces_display_name_159-2',18,2,346,623,2,1,7,0,203,447,0,0);
INSERT INTO "sleeping_faces" VALUES (54,'md_sleeping_faces_name_159-3',159,3,'md_sleeping_faces_display_name_159-3',18,3,1134,2042,3,1,9,0,583,550,0,0);
INSERT INTO "sleeping_faces" VALUES (55,'md_sleeping_faces_name_50-1',50,1,'md_sleeping_faces_display_name_50-1',19,1,7,20,1,1,3,0,2,290,0,0);
INSERT INTO "sleeping_faces" VALUES (56,'md_sleeping_faces_name_50-2',50,2,'md_sleeping_faces_display_name_50-2',19,2,53,158,2,1,5,0,41,255,0,0);
INSERT INTO "sleeping_faces" VALUES (57,'md_sleeping_faces_name_50-3',50,3,'md_sleeping_faces_display_name_50-3',19,3,252,757,3,1,7,0,173,507,0,0);
INSERT INTO "sleeping_faces" VALUES (58,'md_sleeping_faces_name_51-1',51,1,'md_sleeping_faces_display_name_51-1',20,1,95,284,1,1,5,0,83,363,0,0);
INSERT INTO "sleeping_faces" VALUES (59,'md_sleeping_faces_name_51-2',51,2,'md_sleeping_faces_display_name_51-2',20,2,260,778,2,1,7,0,203,300,0,0);
INSERT INTO "sleeping_faces" VALUES (60,'md_sleeping_faces_name_51-3',51,3,'md_sleeping_faces_display_name_51-3',20,3,851,2552,3,1,9,0,583,295,0,0);
INSERT INTO "sleeping_faces" VALUES (61,'md_sleeping_faces_name_40-1',40,1,'md_sleeping_faces_display_name_40-1',21,1,253,273,1,1,8,0,133,360,0,0);
INSERT INTO "sleeping_faces" VALUES (62,'md_sleeping_faces_name_40-2',40,2,'md_sleeping_faces_display_name_40-2',21,2,659,712,2,1,10,0,310,306,0,0);
INSERT INTO "sleeping_faces" VALUES (63,'md_sleeping_faces_name_40-3',40,3,'md_sleeping_faces_display_name_40-3',21,3,1952,2108,3,1,12,0,802,336,0,0);
INSERT INTO "sleeping_faces" VALUES (64,'md_sleeping_faces_name_3-1',3,1,'md_sleeping_faces_display_name_3-1',22,1,574,1033,1,1,8,0,377,378,0,0);
INSERT INTO "sleeping_faces" VALUES (65,'md_sleeping_faces_name_3-2',3,2,'md_sleeping_faces_display_name_3-2',22,2,1289,2321,2,1,10,0,757,334,0,0);
INSERT INTO "sleeping_faces" VALUES (66,'md_sleeping_faces_name_3-3',3,3,'md_sleeping_faces_display_name_3-3',22,3,3214,5786,3,1,12,0,1652,305,0,0);
INSERT INTO "sleeping_faces" VALUES (67,'md_sleeping_faces_name_175-1',175,1,'md_sleeping_faces_display_name_175-1',23,1,18,39,1,1,3,0,11,436,0,0);
INSERT INTO "sleeping_faces" VALUES (68,'md_sleeping_faces_name_175-2',175,2,'md_sleeping_faces_display_name_175-2',23,2,116,246,2,1,5,0,74,472,0,0);
INSERT INTO "sleeping_faces" VALUES (69,'md_sleeping_faces_name_175-3',175,3,'md_sleeping_faces_display_name_175-3',23,3,468,988,3,1,7,0,261,422,0,0);
INSERT INTO "sleeping_faces" VALUES (70,'md_sleeping_faces_name_74-1',74,1,'md_sleeping_faces_display_name_74-1',24,1,7,19,1,1,3,0,2,391,0,0);
INSERT INTO "sleeping_faces" VALUES (71,'md_sleeping_faces_name_74-2',74,2,'md_sleeping_faces_display_name_74-2',24,2,58,149,2,1,5,0,41,279,0,0);
INSERT INTO "sleeping_faces" VALUES (72,'md_sleeping_faces_name_74-3',74,3,'md_sleeping_faces_display_name_74-3',24,3,276,714,3,1,7,0,173,237,0,0);
INSERT INTO "sleeping_faces" VALUES (73,'md_sleeping_faces_name_75-1',75,1,'md_sleeping_faces_display_name_75-1',25,1,67,141,1,1,5,0,48,396,0,0);
INSERT INTO "sleeping_faces" VALUES (74,'md_sleeping_faces_name_75-2',75,2,'md_sleeping_faces_display_name_75-2',25,2,208,440,2,1,7,0,133,447,0,0);
INSERT INTO "sleeping_faces" VALUES (75,'md_sleeping_faces_name_75-3',75,3,'md_sleeping_faces_display_name_75-3',25,3,729,1540,3,1,9,0,407,545,0,0);
INSERT INTO "sleeping_faces" VALUES (76,'md_sleeping_faces_name_23-1',23,1,'md_sleeping_faces_display_name_23-1',26,1,7,19,1,1,3,0,2,455,0,0);
INSERT INTO "sleeping_faces" VALUES (77,'md_sleeping_faces_name_23-2',23,2,'md_sleeping_faces_display_name_23-2',26,2,58,149,2,1,5,0,41,482,0,0);
INSERT INTO "sleeping_faces" VALUES (78,'md_sleeping_faces_name_23-3',23,3,'md_sleeping_faces_display_name_23-3',26,3,276,714,3,1,7,0,173,315,0,0);
INSERT INTO "sleeping_faces" VALUES (79,'md_sleeping_faces_name_24-1',24,1,'md_sleeping_faces_display_name_24-1',27,1,103,268,1,1,5,0,83,498,0,0);
INSERT INTO "sleeping_faces" VALUES (80,'md_sleeping_faces_name_24-2',24,2,'md_sleeping_faces_display_name_24-2',27,2,284,735,2,1,7,0,203,310,0,0);
INSERT INTO "sleeping_faces" VALUES (81,'md_sleeping_faces_name_24-3',24,3,'md_sleeping_faces_display_name_24-3',27,3,930,2409,3,1,9,0,583,355,0,0);
INSERT INTO "sleeping_faces" VALUES (82,'md_sleeping_faces_name_104-1',104,1,'md_sleeping_faces_display_name_104-1',28,1,9,16,1,1,3,0,2,341,0,0);
INSERT INTO "sleeping_faces" VALUES (83,'md_sleeping_faces_name_104-2',104,2,'md_sleeping_faces_display_name_104-2',28,2,93,167,2,1,5,0,55,362,0,0);
INSERT INTO "sleeping_faces" VALUES (84,'md_sleeping_faces_name_104-3',104,3,'md_sleeping_faces_display_name_104-3',28,3,396,712,3,1,7,0,203,431,0,0);
INSERT INTO "sleeping_faces" VALUES (85,'md_sleeping_faces_name_155-1',155,1,'md_sleeping_faces_display_name_155-1',29,1,16,42,1,1,3,0,11,347,1,0);
INSERT INTO "sleeping_faces" VALUES (86,'md_sleeping_faces_name_155-2',155,2,'md_sleeping_faces_display_name_155-2',29,2,104,268,2,1,5,0,74,436,1,0);
INSERT INTO "sleeping_faces" VALUES (87,'md_sleeping_faces_name_155-3',155,3,'md_sleeping_faces_display_name_155-3',29,3,417,1080,3,1,7,0,261,439,0,0);
INSERT INTO "sleeping_faces" VALUES (88,'md_sleeping_faces_name_156-1',156,1,'md_sleeping_faces_display_name_156-1',30,1,116,245,1,1,5,0,83,350,0,0);
INSERT INTO "sleeping_faces" VALUES (89,'md_sleeping_faces_name_156-2',156,2,'md_sleeping_faces_display_name_156-2',30,2,318,673,2,1,7,0,203,378,0,0);
INSERT INTO "sleeping_faces" VALUES (90,'md_sleeping_faces_name_156-3',156,3,'md_sleeping_faces_display_name_156-3',30,3,1043,2205,3,1,9,0,583,553,0,0);
INSERT INTO "sleeping_faces" VALUES (91,'md_sleeping_faces_name_9-1',9,1,'md_sleeping_faces_display_name_9-1',31,1,528,1116,1,1,8,0,377,423,0,0);
INSERT INTO "sleeping_faces" VALUES (92,'md_sleeping_faces_name_9-2',9,2,'md_sleeping_faces_display_name_9-2',31,2,1186,2506,2,1,10,0,757,453,0,0);
INSERT INTO "sleeping_faces" VALUES (93,'md_sleeping_faces_name_9-3',9,3,'md_sleeping_faces_display_name_9-3',31,3,2957,6248,3,1,12,0,1652,351,0,0);
INSERT INTO "sleeping_faces" VALUES (94,'md_sleeping_faces_name_58-1',58,1,'md_sleeping_faces_display_name_58-1',32,1,9,16,1,1,3,0,2,417,0,0);
INSERT INTO "sleeping_faces" VALUES (95,'md_sleeping_faces_name_58-2',58,2,'md_sleeping_faces_display_name_58-2',32,2,103,186,2,1,5,0,60,506,0,0);
INSERT INTO "sleeping_faces" VALUES (96,'md_sleeping_faces_name_58-3',58,3,'md_sleeping_faces_display_name_58-3',32,3,426,767,3,1,7,0,219,466,0,0);
INSERT INTO "sleeping_faces" VALUES (97,'md_sleeping_faces_name_6-1',6,1,'md_sleeping_faces_display_name_6-1',33,1,528,1116,1,1,8,0,377,300,0,0);
INSERT INTO "sleeping_faces" VALUES (98,'md_sleeping_faces_name_6-2',6,2,'md_sleeping_faces_display_name_6-2',33,2,1186,2506,2,1,10,0,757,363,0,0);
INSERT INTO "sleeping_faces" VALUES (99,'md_sleeping_faces_name_6-3',6,3,'md_sleeping_faces_display_name_6-3',33,3,2957,6248,3,1,12,0,1652,426,0,0);
INSERT INTO "sleeping_faces" VALUES (100,'md_sleeping_faces_name_20-1',20,1,'md_sleeping_faces_display_name_20-1',34,1,60,155,1,1,5,0,48,373,0,0);
INSERT INTO "sleeping_faces" VALUES (101,'md_sleeping_faces_name_20-2',20,2,'md_sleeping_faces_display_name_20-2',34,2,186,481,2,1,7,0,133,300,0,0);
INSERT INTO "sleeping_faces" VALUES (102,'md_sleeping_faces_name_20-3',20,3,'md_sleeping_faces_display_name_20-3',34,3,650,1683,3,1,9,0,407,285,0,0);
INSERT INTO "sleeping_faces" VALUES (103,'md_sleeping_faces_name_56-1',56,1,'md_sleeping_faces_display_name_56-1',35,1,7,19,1,1,3,0,2,263,0,0);
INSERT INTO "sleeping_faces" VALUES (104,'md_sleeping_faces_name_56-2',56,2,'md_sleeping_faces_display_name_56-2',35,2,76,197,2,1,5,0,55,332,0,0);
INSERT INTO "sleeping_faces" VALUES (105,'md_sleeping_faces_name_56-3',56,3,'md_sleeping_faces_display_name_56-3',35,3,324,840,3,1,7,0,203,389,0,0);
INSERT INTO "sleeping_faces" VALUES (106,'md_sleeping_faces_name_69-1',69,1,'md_sleeping_faces_display_name_69-1',36,1,9,16,1,1,3,0,2,344,0,0);
INSERT INTO "sleeping_faces" VALUES (107,'md_sleeping_faces_name_69-2',69,2,'md_sleeping_faces_display_name_69-2',36,2,82,147,2,1,5,0,48,420,0,0);
INSERT INTO "sleeping_faces" VALUES (108,'md_sleeping_faces_name_69-3',69,3,'md_sleeping_faces_display_name_69-3',36,3,366,659,3,1,7,0,188,299,0,0);
INSERT INTO "sleeping_faces" VALUES (109,'md_sleeping_faces_name_70-1',70,1,'md_sleeping_faces_display_name_70-1',37,1,73,131,1,1,5,0,48,387,0,0);
INSERT INTO "sleeping_faces" VALUES (110,'md_sleeping_faces_name_70-2',70,2,'md_sleeping_faces_display_name_70-2',37,2,226,408,2,1,7,0,133,295,0,0);
INSERT INTO "sleeping_faces" VALUES (111,'md_sleeping_faces_name_70-3',70,3,'md_sleeping_faces_display_name_70-3',37,3,792,1426,3,1,9,0,407,305,0,0);
INSERT INTO "sleeping_faces" VALUES (112,'md_sleeping_faces_name_174-1',174,1,'md_sleeping_faces_display_name_174-1',38,1,11,12,1,1,3,0,2,266,0,0);
INSERT INTO "sleeping_faces" VALUES (113,'md_sleeping_faces_name_174-2',174,2,'md_sleeping_faces_display_name_174-2',38,2,88,95,2,1,5,0,41,336,0,0);
INSERT INTO "sleeping_faces" VALUES (114,'md_sleeping_faces_name_174-3',174,3,'md_sleeping_faces_display_name_174-3',38,3,421,454,3,1,7,0,173,306,0,0);
INSERT INTO "sleeping_faces" VALUES (115,'md_sleeping_faces_name_179-1',179,1,'md_sleeping_faces_display_name_179-1',39,1,11,13,1,1,3,0,2,340,0,0);
INSERT INTO "sleeping_faces" VALUES (116,'md_sleeping_faces_name_179-2',179,2,'md_sleeping_faces_display_name_179-2',39,2,83,104,2,1,5,0,41,381,0,0);
INSERT INTO "sleeping_faces" VALUES (117,'md_sleeping_faces_name_179-3',179,3,'md_sleeping_faces_display_name_179-3',39,3,397,496,3,1,7,0,173,491,0,0);
INSERT INTO "sleeping_faces" VALUES (118,'md_sleeping_faces_name_185-1',185,1,'md_sleeping_faces_display_name_185-1',40,1,23,41,1,1,4,0,15,322,0,0);
INSERT INTO "sleeping_faces" VALUES (119,'md_sleeping_faces_name_185-2',185,2,'md_sleeping_faces_display_name_185-2',40,2,141,254,2,1,6,0,83,289,0,0);
INSERT INTO "sleeping_faces" VALUES (120,'md_sleeping_faces_name_185-3',185,3,'md_sleeping_faces_display_name_185-3',40,3,554,997,3,1,8,0,285,439,0,0);
INSERT INTO "sleeping_faces" VALUES (121,'md_sleeping_faces_name_54-1',54,1,'md_sleeping_faces_display_name_54-1',41,1,9,16,1,1,3,0,2,301,0,0);
INSERT INTO "sleeping_faces" VALUES (122,'md_sleeping_faces_name_54-2',54,2,'md_sleeping_faces_display_name_54-2',41,2,71,127,2,1,5,0,41,336,0,0);
INSERT INTO "sleeping_faces" VALUES (123,'md_sleeping_faces_name_54-3',54,3,'md_sleeping_faces_display_name_54-3',41,3,337,605,3,1,7,0,173,499,0,0);
INSERT INTO "sleeping_faces" VALUES (124,'md_sleeping_faces_name_80-1',80,1,'md_sleeping_faces_display_name_80-1',42,1,136,209,1,1,5,0,83,373,0,0);
INSERT INTO "sleeping_faces" VALUES (125,'md_sleeping_faces_name_80-2',80,2,'md_sleeping_faces_display_name_80-2',42,2,374,573,2,1,7,0,203,590,0,0);
INSERT INTO "sleeping_faces" VALUES (126,'md_sleeping_faces_name_80-3',80,3,'md_sleeping_faces_display_name_80-3',42,3,1225,1878,3,1,9,0,583,360,0,0);
INSERT INTO "sleeping_faces" VALUES (127,'md_sleeping_faces_name_84-1',84,1,'md_sleeping_faces_display_name_84-1',43,1,7,20,1,1,3,0,2,354,0,0);
INSERT INTO "sleeping_faces" VALUES (128,'md_sleeping_faces_name_84-2',84,2,'md_sleeping_faces_display_name_84-2',43,2,53,158,2,1,5,0,41,351,0,0);
INSERT INTO "sleeping_faces" VALUES (129,'md_sleeping_faces_name_84-3',84,3,'md_sleeping_faces_display_name_84-3',43,3,252,757,3,1,7,0,173,490,0,0);
INSERT INTO "sleeping_faces" VALUES (130,'md_sleeping_faces_name_92-1',92,1,'md_sleeping_faces_display_name_92-1',44,1,7,20,1,1,3,0,2,470,0,0);
INSERT INTO "sleeping_faces" VALUES (131,'md_sleeping_faces_name_92-2',92,2,'md_sleeping_faces_display_name_92-2',44,2,70,209,2,1,5,0,55,240,0,0);
INSERT INTO "sleeping_faces" VALUES (132,'md_sleeping_faces_name_92-3',92,3,'md_sleeping_faces_display_name_92-3',44,3,297,890,3,1,7,0,203,451,0,0);
INSERT INTO "sleeping_faces" VALUES (133,'md_sleeping_faces_name_93-1',93,1,'md_sleeping_faces_display_name_93-1',45,1,62,186,1,1,5,0,55,445,0,0);
INSERT INTO "sleeping_faces" VALUES (134,'md_sleeping_faces_name_93-2',93,2,'md_sleeping_faces_display_name_93-2',45,2,184,552,2,1,7,0,144,364,0,0);
INSERT INTO "sleeping_faces" VALUES (135,'md_sleeping_faces_name_93-3',93,3,'md_sleeping_faces_display_name_93-3',45,3,639,1918,3,1,9,0,438,323,0,0);
INSERT INTO "sleeping_faces" VALUES (136,'md_sleeping_faces_name_105-1',105,1,'md_sleeping_faces_display_name_105-1',46,1,93,197,1,1,5,0,66,542,0,0);
INSERT INTO "sleeping_faces" VALUES (137,'md_sleeping_faces_name_105-2',105,2,'md_sleeping_faces_display_name_105-2',46,2,271,572,2,1,7,0,173,320,0,0);
INSERT INTO "sleeping_faces" VALUES (138,'md_sleeping_faces_name_105-3',105,3,'md_sleeping_faces_display_name_105-3',46,3,922,1948,3,1,9,0,515,473,0,0);
INSERT INTO "sleeping_faces" VALUES (139,'md_sleeping_faces_name_152-1',152,1,'md_sleeping_faces_display_name_152-1',47,1,18,39,1,1,3,0,11,411,1,0);
INSERT INTO "sleeping_faces" VALUES (140,'md_sleeping_faces_name_152-2',152,2,'md_sleeping_faces_display_name_152-2',47,2,116,246,2,1,5,0,74,296,1,0);
INSERT INTO "sleeping_faces" VALUES (141,'md_sleeping_faces_name_152-3',152,3,'md_sleeping_faces_display_name_152-3',47,3,468,988,3,1,7,0,261,385,0,0);
INSERT INTO "sleeping_faces" VALUES (142,'md_sleeping_faces_name_153-1',153,1,'md_sleeping_faces_display_name_153-1',48,1,116,245,1,1,5,0,83,518,0,0);
INSERT INTO "sleeping_faces" VALUES (143,'md_sleeping_faces_name_153-2',153,2,'md_sleeping_faces_display_name_153-2',48,2,318,673,2,1,7,0,203,378,0,0);
INSERT INTO "sleeping_faces" VALUES (144,'md_sleeping_faces_name_153-3',153,3,'md_sleeping_faces_display_name_153-3',48,3,1043,2205,3,1,9,0,583,449,0,0);
INSERT INTO "sleeping_faces" VALUES (145,'md_sleeping_faces_name_180-1',180,1,'md_sleeping_faces_display_name_180-1',49,1,79,121,1,1,5,0,48,283,0,0);
INSERT INTO "sleeping_faces" VALUES (146,'md_sleeping_faces_name_180-2',180,2,'md_sleeping_faces_display_name_180-2',49,2,244,375,2,1,7,0,133,479,0,0);
INSERT INTO "sleeping_faces" VALUES (147,'md_sleeping_faces_name_180-3',180,3,'md_sleeping_faces_display_name_180-3',49,3,856,1312,3,1,9,0,407,184,0,0);
INSERT INTO "sleeping_faces" VALUES (148,'md_sleeping_faces_name_202-1',202,1,'md_sleeping_faces_display_name_202-1',50,1,29,31,1,1,4,0,15,468,0,0);
INSERT INTO "sleeping_faces" VALUES (149,'md_sleeping_faces_name_202-2',202,2,'md_sleeping_faces_display_name_202-2',50,2,176,191,2,1,6,0,83,473,0,0);
INSERT INTO "sleeping_faces" VALUES (150,'md_sleeping_faces_name_202-3',202,3,'md_sleeping_faces_display_name_202-3',50,3,693,748,3,1,8,0,285,492,0,0);
INSERT INTO "sleeping_faces" VALUES (151,'md_sleeping_faces_name_316-1',316,1,'md_sleeping_faces_display_name_316-1',51,1,11,12,1,1,3,0,2,450,0,0);
INSERT INTO "sleeping_faces" VALUES (152,'md_sleeping_faces_name_316-2',316,2,'md_sleeping_faces_display_name_316-2',51,2,102,110,2,1,5,0,48,403,0,0);
INSERT INTO "sleeping_faces" VALUES (153,'md_sleeping_faces_name_316-3',316,3,'md_sleeping_faces_display_name_316-3',51,3,458,494,3,1,7,0,188,458,0,0);
INSERT INTO "sleeping_faces" VALUES (154,'md_sleeping_faces_name_317-1',317,1,'md_sleeping_faces_display_name_317-1',52,1,158,170,1,1,5,0,83,368,0,0);
INSERT INTO "sleeping_faces" VALUES (155,'md_sleeping_faces_name_317-2',317,2,'md_sleeping_faces_display_name_317-2',52,2,433,467,2,1,7,0,203,464,0,0);
INSERT INTO "sleeping_faces" VALUES (156,'md_sleeping_faces_name_317-3',317,3,'md_sleeping_faces_display_name_317-3',52,3,1418,1531,3,1,9,0,583,445,0,0);
INSERT INTO "sleeping_faces" VALUES (157,'md_sleeping_faces_name_333-1',333,1,'md_sleeping_faces_display_name_333-1',53,1,8,17,1,1,3,0,2,481,0,0);
INSERT INTO "sleeping_faces" VALUES (158,'md_sleeping_faces_name_333-2',333,2,'md_sleeping_faces_display_name_333-2',53,2,75,158,2,1,5,0,48,409,0,0);
INSERT INTO "sleeping_faces" VALUES (159,'md_sleeping_faces_name_333-3',333,3,'md_sleeping_faces_display_name_333-3',53,3,337,712,3,1,7,0,188,447,0,0);
INSERT INTO "sleeping_faces" VALUES (160,'md_sleeping_faces_name_360-1',360,1,'md_sleeping_faces_display_name_360-1',54,1,11,12,1,1,3,0,2,377,0,0);
INSERT INTO "sleeping_faces" VALUES (161,'md_sleeping_faces_name_360-2',360,2,'md_sleeping_faces_display_name_360-2',54,2,88,95,2,1,5,0,41,242,0,0);
INSERT INTO "sleeping_faces" VALUES (162,'md_sleeping_faces_name_360-3',360,3,'md_sleeping_faces_display_name_360-3',54,3,421,454,3,1,7,0,173,533,0,0);
INSERT INTO "sleeping_faces" VALUES (163,'md_sleeping_faces_name_438-1',438,1,'md_sleeping_faces_display_name_438-1',55,1,9,16,1,1,3,0,2,445,0,0);
INSERT INTO "sleeping_faces" VALUES (164,'md_sleeping_faces_name_438-2',438,2,'md_sleeping_faces_display_name_438-2',55,2,71,127,2,1,5,0,41,330,0,0);
INSERT INTO "sleeping_faces" VALUES (165,'md_sleeping_faces_name_438-3',438,3,'md_sleeping_faces_display_name_438-3',55,3,337,605,3,1,7,0,173,267,0,0);
INSERT INTO "sleeping_faces" VALUES (166,'md_sleeping_faces_name_453-1',453,1,'md_sleeping_faces_display_name_453-1',56,1,9,16,1,1,3,0,2,375,0,0);
INSERT INTO "sleeping_faces" VALUES (167,'md_sleeping_faces_name_453-2',453,2,'md_sleeping_faces_display_name_453-2',56,2,93,167,2,1,5,0,55,501,0,0);
INSERT INTO "sleeping_faces" VALUES (168,'md_sleeping_faces_name_453-3',453,3,'md_sleeping_faces_display_name_453-3',56,3,396,712,3,1,7,0,203,398,0,0);
INSERT INTO "sleeping_faces" VALUES (169,'md_sleeping_faces_name_454-1',454,1,'md_sleeping_faces_display_name_454-1',57,1,126,227,1,1,5,0,83,473,0,0);
INSERT INTO "sleeping_faces" VALUES (170,'md_sleeping_faces_name_454-2',454,2,'md_sleeping_faces_display_name_454-2',57,2,346,623,2,1,7,0,203,431,0,0);
INSERT INTO "sleeping_faces" VALUES (171,'md_sleeping_faces_name_454-3',454,3,'md_sleeping_faces_display_name_454-3',57,3,1134,2042,3,1,9,0,583,359,0,0);
INSERT INTO "sleeping_faces" VALUES (172,'md_sleeping_faces_name_26-1',26,1,'md_sleeping_faces_display_name_26-1',58,1,326,844,1,1,8,0,261,337,0,0);
INSERT INTO "sleeping_faces" VALUES (173,'md_sleeping_faces_name_26-2',26,2,'md_sleeping_faces_display_name_26-2',58,2,765,1981,2,1,10,0,548,450,0,0);
INSERT INTO "sleeping_faces" VALUES (174,'md_sleeping_faces_name_26-3',26,3,'md_sleeping_faces_display_name_26-3',58,3,2018,5227,3,1,12,0,1265,456,0,0);
INSERT INTO "sleeping_faces" VALUES (175,'md_sleeping_faces_name_53-1',53,1,'md_sleeping_faces_display_name_53-1',59,1,116,245,1,1,5,0,83,443,0,0);
INSERT INTO "sleeping_faces" VALUES (176,'md_sleeping_faces_name_53-2',53,2,'md_sleeping_faces_display_name_53-2',59,2,318,673,2,1,7,0,203,406,0,0);
INSERT INTO "sleeping_faces" VALUES (177,'md_sleeping_faces_name_53-3',53,3,'md_sleeping_faces_display_name_53-3',59,3,1043,2205,3,1,9,0,583,466,0,0);
INSERT INTO "sleeping_faces" VALUES (178,'md_sleeping_faces_name_55-1',55,1,'md_sleeping_faces_display_name_55-1',60,1,126,227,1,1,5,0,83,340,0,0);
INSERT INTO "sleeping_faces" VALUES (179,'md_sleeping_faces_name_55-2',55,2,'md_sleeping_faces_display_name_55-2',60,2,346,623,2,1,7,0,203,484,0,0);
INSERT INTO "sleeping_faces" VALUES (180,'md_sleeping_faces_name_55-3',55,3,'md_sleeping_faces_display_name_55-3',60,3,1134,2042,3,1,9,0,583,522,0,0);
INSERT INTO "sleeping_faces" VALUES (181,'md_sleeping_faces_name_57-1',57,1,'md_sleeping_faces_display_name_57-1',61,1,116,245,1,1,5,0,83,450,0,0);
INSERT INTO "sleeping_faces" VALUES (182,'md_sleeping_faces_name_57-2',57,2,'md_sleeping_faces_display_name_57-2',61,2,318,673,2,1,7,0,203,209,0,0);
INSERT INTO "sleeping_faces" VALUES (183,'md_sleeping_faces_name_57-3',57,3,'md_sleeping_faces_display_name_57-3',61,3,1043,2205,3,1,9,0,583,530,0,0);
INSERT INTO "sleeping_faces" VALUES (184,'md_sleeping_faces_name_59-1',59,1,'md_sleeping_faces_display_name_59-1',62,1,666,1199,1,1,7,0,438,465,0,0);
INSERT INTO "sleeping_faces" VALUES (185,'md_sleeping_faces_name_59-2',59,2,'md_sleeping_faces_display_name_59-2',62,2,1425,2565,2,1,9,0,837,392,0,0);
INSERT INTO "sleeping_faces" VALUES (186,'md_sleeping_faces_name_59-3',59,3,'md_sleeping_faces_display_name_59-3',62,3,3516,6330,3,1,11,0,1807,402,0,0);
INSERT INTO "sleeping_faces" VALUES (187,'md_sleeping_faces_name_71-1',71,1,'md_sleeping_faces_display_name_71-1',63,1,397,715,1,1,8,0,261,513,0,0);
INSERT INTO "sleeping_faces" VALUES (188,'md_sleeping_faces_name_71-2',71,2,'md_sleeping_faces_display_name_71-2',63,2,933,1679,2,1,10,0,548,472,0,0);
INSERT INTO "sleeping_faces" VALUES (189,'md_sleeping_faces_name_71-3',71,3,'md_sleeping_faces_display_name_71-3',63,3,2461,4430,3,1,12,0,1265,332,0,0);
INSERT INTO "sleeping_faces" VALUES (190,'md_sleeping_faces_name_76-1',76,1,'md_sleeping_faces_display_name_76-1',64,1,574,1033,1,1,8,0,377,300,0,0);
INSERT INTO "sleeping_faces" VALUES (191,'md_sleeping_faces_name_76-2',76,2,'md_sleeping_faces_display_name_76-2',64,2,1289,2321,2,1,10,0,757,550,0,0);
INSERT INTO "sleeping_faces" VALUES (192,'md_sleeping_faces_name_76-3',76,3,'md_sleeping_faces_display_name_76-3',64,3,3214,5786,3,1,12,0,1652,300,0,0);
INSERT INTO "sleeping_faces" VALUES (193,'md_sleeping_faces_name_81-1',81,1,'md_sleeping_faces_display_name_81-1',65,1,7,20,1,1,3,0,2,357,0,0);
INSERT INTO "sleeping_faces" VALUES (194,'md_sleeping_faces_name_81-2',81,2,'md_sleeping_faces_display_name_81-2',65,2,61,183,2,1,5,0,48,420,0,0);
INSERT INTO "sleeping_faces" VALUES (195,'md_sleeping_faces_name_81-3',81,3,'md_sleeping_faces_display_name_81-3',65,3,275,824,3,1,7,0,188,341,0,0);
INSERT INTO "sleeping_faces" VALUES (196,'md_sleeping_faces_name_82-1',82,1,'md_sleeping_faces_display_name_82-1',66,1,95,284,1,1,5,0,83,320,0,0);
INSERT INTO "sleeping_faces" VALUES (197,'md_sleeping_faces_name_82-2',82,2,'md_sleeping_faces_display_name_82-2',66,2,260,778,2,1,7,0,203,340,0,0);
INSERT INTO "sleeping_faces" VALUES (198,'md_sleeping_faces_name_82-3',82,3,'md_sleeping_faces_display_name_82-3',66,3,851,2552,3,1,9,0,583,331,0,0);
INSERT INTO "sleeping_faces" VALUES (199,'md_sleeping_faces_name_85-1',85,1,'md_sleeping_faces_display_name_85-1',67,1,60,155,1,1,5,0,48,358,0,0);
INSERT INTO "sleeping_faces" VALUES (200,'md_sleeping_faces_name_85-2',85,2,'md_sleeping_faces_display_name_85-2',67,2,186,481,2,1,7,0,133,327,0,0);
INSERT INTO "sleeping_faces" VALUES (201,'md_sleeping_faces_name_85-3',85,3,'md_sleeping_faces_display_name_85-3',67,3,650,1683,3,1,9,0,407,360,0,0);
INSERT INTO "sleeping_faces" VALUES (202,'md_sleeping_faces_name_94-1',94,1,'md_sleeping_faces_display_name_94-1',68,1,431,1291,1,1,8,0,377,402,0,0);
INSERT INTO "sleeping_faces" VALUES (203,'md_sleeping_faces_name_94-2',94,2,'md_sleeping_faces_display_name_94-2',68,2,967,2901,2,1,10,0,757,475,0,0);
INSERT INTO "sleeping_faces" VALUES (204,'md_sleeping_faces_name_94-3',94,3,'md_sleeping_faces_display_name_94-3',68,3,2411,7232,3,1,12,0,1652,437,0,0);
INSERT INTO "sleeping_faces" VALUES (205,'md_sleeping_faces_name_115-1',115,1,'md_sleeping_faces_display_name_115-1',69,1,416,449,1,1,6,0,219,450,0,0);
INSERT INTO "sleeping_faces" VALUES (206,'md_sleeping_faces_name_115-2',115,2,'md_sleeping_faces_display_name_115-2',69,2,1011,1092,2,1,8,0,475,375,0,0);
INSERT INTO "sleeping_faces" VALUES (207,'md_sleeping_faces_name_115-3',115,3,'md_sleeping_faces_display_name_115-3',69,3,2797,3020,3,1,10,0,1150,360,0,0);
INSERT INTO "sleeping_faces" VALUES (208,'md_sleeping_faces_name_127-1',127,1,'md_sleeping_faces_display_name_127-1',70,1,235,608,1,1,6,0,188,240,0,0);
INSERT INTO "sleeping_faces" VALUES (209,'md_sleeping_faces_name_127-2',127,2,'md_sleeping_faces_display_name_127-2',70,2,568,1472,2,1,8,0,407,393,0,0);
INSERT INTO "sleeping_faces" VALUES (210,'md_sleeping_faces_name_127-3',127,3,'md_sleeping_faces_display_name_127-3',70,3,1608,4166,3,1,10,0,1008,440,0,0);
INSERT INTO "sleeping_faces" VALUES (211,'md_sleeping_faces_name_132-1',132,1,'md_sleeping_faces_display_name_132-1',71,1,219,394,1,1,6,0,144,438,0,0);
INSERT INTO "sleeping_faces" VALUES (212,'md_sleeping_faces_name_132-2',132,2,'md_sleeping_faces_display_name_132-2',71,2,568,1023,2,1,8,0,334,599,0,0);
INSERT INTO "sleeping_faces" VALUES (213,'md_sleeping_faces_name_132-3',132,3,'md_sleeping_faces_display_name_132-3',71,3,1628,2931,3,1,10,0,837,614,0,0);
INSERT INTO "sleeping_faces" VALUES (214,'md_sleeping_faces_name_134-1',134,1,'md_sleeping_faces_display_name_134-1',72,1,675,729,1,1,7,0,355,476,0,0);
INSERT INTO "sleeping_faces" VALUES (215,'md_sleeping_faces_name_134-2',134,2,'md_sleeping_faces_display_name_134-2',72,2,1519,1641,2,1,9,0,714,400,0,0);
INSERT INTO "sleeping_faces" VALUES (216,'md_sleeping_faces_name_134-3',134,3,'md_sleeping_faces_display_name_134-3',72,3,3779,4082,3,1,11,0,1554,421,0,0);
INSERT INTO "sleeping_faces" VALUES (217,'md_sleeping_faces_name_135-1',135,1,'md_sleeping_faces_display_name_135-1',73,1,443,1147,1,1,7,0,355,417,0,0);
INSERT INTO "sleeping_faces" VALUES (218,'md_sleeping_faces_name_135-2',135,2,'md_sleeping_faces_display_name_135-2',73,2,996,2581,2,1,9,0,714,450,0,0);
INSERT INTO "sleeping_faces" VALUES (219,'md_sleeping_faces_name_135-3',135,3,'md_sleeping_faces_display_name_135-3',73,3,2479,6422,3,1,11,0,1554,390,0,0);
INSERT INTO "sleeping_faces" VALUES (220,'md_sleeping_faces_name_136-1',136,1,'md_sleeping_faces_display_name_136-1',74,1,443,1147,1,1,7,0,355,317,0,0);
INSERT INTO "sleeping_faces" VALUES (221,'md_sleeping_faces_name_136-2',136,2,'md_sleeping_faces_display_name_136-2',74,2,996,2581,2,1,9,0,714,356,0,0);
INSERT INTO "sleeping_faces" VALUES (222,'md_sleeping_faces_name_136-3',136,3,'md_sleeping_faces_display_name_136-3',74,3,2479,6422,3,1,11,0,1554,291,0,0);
INSERT INTO "sleeping_faces" VALUES (232,'md_sleeping_faces_name_154-1',154,1,'md_sleeping_faces_display_name_154-1',78,1,574,1033,1,1,8,0,377,470,0,0);
INSERT INTO "sleeping_faces" VALUES (233,'md_sleeping_faces_name_154-2',154,2,'md_sleeping_faces_display_name_154-2',78,2,1289,2321,2,1,10,0,757,524,0,0);
INSERT INTO "sleeping_faces" VALUES (234,'md_sleeping_faces_name_154-3',154,3,'md_sleeping_faces_display_name_154-3',78,3,3214,5786,3,1,12,0,1652,562,0,0);
INSERT INTO "sleeping_faces" VALUES (235,'md_sleeping_faces_name_157-1',157,1,'md_sleeping_faces_display_name_157-1',79,1,528,1116,1,1,8,0,377,396,0,0);
INSERT INTO "sleeping_faces" VALUES (236,'md_sleeping_faces_name_157-2',157,2,'md_sleeping_faces_display_name_157-2',79,2,1186,2506,2,1,10,0,757,445,0,0);
INSERT INTO "sleeping_faces" VALUES (237,'md_sleeping_faces_name_157-3',157,3,'md_sleeping_faces_display_name_157-3',79,3,2957,6248,3,1,12,0,1652,375,0,0);
INSERT INTO "sleeping_faces" VALUES (238,'md_sleeping_faces_name_160-1',160,1,'md_sleeping_faces_display_name_160-1',80,1,574,1033,1,1,8,0,377,376,0,0);
INSERT INTO "sleeping_faces" VALUES (239,'md_sleeping_faces_name_160-2',160,2,'md_sleeping_faces_display_name_160-2',80,2,1289,2321,2,1,10,0,757,540,0,0);
INSERT INTO "sleeping_faces" VALUES (240,'md_sleeping_faces_name_160-3',160,3,'md_sleeping_faces_display_name_160-3',80,3,3214,5786,3,1,12,0,1652,388,0,0);
INSERT INTO "sleeping_faces" VALUES (241,'md_sleeping_faces_name_176-1',176,1,'md_sleeping_faces_display_name_176-1',81,1,76,161,1,1,4,0,55,377,0,0);
INSERT INTO "sleeping_faces" VALUES (242,'md_sleeping_faces_name_176-2',176,2,'md_sleeping_faces_display_name_176-2',81,2,226,477,2,1,6,0,144,483,0,0);
INSERT INTO "sleeping_faces" VALUES (243,'md_sleeping_faces_name_176-3',176,3,'md_sleeping_faces_display_name_176-3',81,3,784,1657,3,1,8,0,438,498,0,0);
INSERT INTO "sleeping_faces" VALUES (244,'md_sleeping_faces_name_181-1',181,1,'md_sleeping_faces_display_name_181-1',82,1,397,715,1,1,8,0,261,330,0,0);
INSERT INTO "sleeping_faces" VALUES (245,'md_sleeping_faces_name_181-2',181,2,'md_sleeping_faces_display_name_181-2',82,2,933,1679,2,1,10,0,548,487,0,0);
INSERT INTO "sleeping_faces" VALUES (246,'md_sleeping_faces_name_181-3',181,3,'md_sleeping_faces_display_name_181-3',82,3,2461,4430,3,1,12,0,1265,311,0,0);
INSERT INTO "sleeping_faces" VALUES (247,'md_sleeping_faces_name_196-1',196,1,'md_sleeping_faces_display_name_196-1',83,1,443,1147,1,1,7,0,355,516,0,0);
INSERT INTO "sleeping_faces" VALUES (248,'md_sleeping_faces_name_196-2',196,2,'md_sleeping_faces_display_name_196-2',83,2,996,2581,2,1,9,0,714,300,0,0);
INSERT INTO "sleeping_faces" VALUES (249,'md_sleeping_faces_name_196-3',196,3,'md_sleeping_faces_display_name_196-3',83,3,2479,6422,3,1,11,0,1554,389,0,0);
INSERT INTO "sleeping_faces" VALUES (250,'md_sleeping_faces_name_197-1',197,1,'md_sleeping_faces_display_name_197-1',84,1,583,894,1,1,7,0,355,336,0,0);
INSERT INTO "sleeping_faces" VALUES (251,'md_sleeping_faces_name_197-2',197,2,'md_sleeping_faces_display_name_197-2',84,2,1312,2012,2,1,9,0,714,504,0,0);
INSERT INTO "sleeping_faces" VALUES (252,'md_sleeping_faces_name_197-3',197,3,'md_sleeping_faces_display_name_197-3',84,3,3265,5007,3,1,11,0,1554,527,0,0);
INSERT INTO "sleeping_faces" VALUES (253,'md_sleeping_faces_name_199-1',199,1,'md_sleeping_faces_display_name_199-1',85,1,719,1103,1,1,7,0,438,319,0,0);
INSERT INTO "sleeping_faces" VALUES (254,'md_sleeping_faces_name_199-2',199,2,'md_sleeping_faces_display_name_199-2',85,2,1539,2360,2,1,9,0,837,386,0,0);
INSERT INTO "sleeping_faces" VALUES (255,'md_sleeping_faces_name_199-3',199,3,'md_sleeping_faces_display_name_199-3',85,3,3797,5823,3,1,11,0,1807,401,0,0);
INSERT INTO "sleeping_faces" VALUES (256,'md_sleeping_faces_name_214-1',214,1,'md_sleeping_faces_display_name_214-1',86,1,286,515,1,1,6,0,188,581,0,0);
INSERT INTO "sleeping_faces" VALUES (257,'md_sleeping_faces_name_214-2',214,2,'md_sleeping_faces_display_name_214-2',86,2,693,1248,2,1,8,0,407,557,0,0);
INSERT INTO "sleeping_faces" VALUES (258,'md_sleeping_faces_name_214-3',214,3,'md_sleeping_faces_display_name_214-3',86,3,1961,3530,3,1,10,0,1008,583,0,0);
INSERT INTO "sleeping_faces" VALUES (259,'md_sleeping_faces_name_246-1',246,1,'md_sleeping_faces_display_name_246-1',87,1,30,54,1,1,3,0,20,395,0,0);
INSERT INTO "sleeping_faces" VALUES (260,'md_sleeping_faces_name_246-2',246,2,'md_sleeping_faces_display_name_246-2',87,2,157,282,2,1,5,0,92,448,0,0);
INSERT INTO "sleeping_faces" VALUES (261,'md_sleeping_faces_name_246-3',246,3,'md_sleeping_faces_display_name_246-3',87,3,603,1085,3,1,7,0,310,387,0,0);
INSERT INTO "sleeping_faces" VALUES (262,'md_sleeping_faces_name_247-1',247,1,'md_sleeping_faces_display_name_247-1',88,1,156,281,1,1,5,0,103,341,0,0);
INSERT INTO "sleeping_faces" VALUES (263,'md_sleeping_faces_name_247-2',247,2,'md_sleeping_faces_display_name_247-2',88,2,408,734,2,1,7,0,240,341,0,0);
INSERT INTO "sleeping_faces" VALUES (264,'md_sleeping_faces_name_247-3',247,3,'md_sleeping_faces_display_name_247-3',88,3,1308,2355,3,1,9,0,672,666,0,0);
INSERT INTO "sleeping_faces" VALUES (265,'md_sleeping_faces_name_248-1',248,1,'md_sleeping_faces_display_name_248-1',89,1,1432,2578,1,1,8,0,942,395,0,0);
INSERT INTO "sleeping_faces" VALUES (266,'md_sleeping_faces_name_248-2',248,2,'md_sleeping_faces_display_name_248-2',89,2,2812,5062,2,1,10,0,1652,379,0,0);
INSERT INTO "sleeping_faces" VALUES (267,'md_sleeping_faces_name_248-3',248,3,'md_sleeping_faces_display_name_248-3',89,3,6660,11987,3,1,12,0,3423,300,0,0);
INSERT INTO "sleeping_faces" VALUES (268,'md_sleeping_faces_name_470-1',470,1,'md_sleeping_faces_display_name_470-1',90,1,443,1147,1,1,7,0,355,506,0,0);
INSERT INTO "sleeping_faces" VALUES (269,'md_sleeping_faces_name_470-2',470,2,'md_sleeping_faces_display_name_470-2',90,2,996,2581,2,1,9,0,714,464,0,0);
INSERT INTO "sleeping_faces" VALUES (270,'md_sleeping_faces_name_470-3',470,3,'md_sleeping_faces_display_name_470-3',90,3,2479,6422,3,1,11,0,1554,541,0,0);
INSERT INTO "sleeping_faces" VALUES (271,'md_sleeping_faces_name_359-1',359,1,'md_sleeping_faces_display_name_359-1',91,1,263,556,1,1,6,0,188,472,0,0);
INSERT INTO "sleeping_faces" VALUES (272,'md_sleeping_faces_name_359-2',359,2,'md_sleeping_faces_display_name_359-2',91,2,638,1347,2,1,8,0,407,431,0,0);
INSERT INTO "sleeping_faces" VALUES (273,'md_sleeping_faces_name_359-3',359,3,'md_sleeping_faces_display_name_359-3',91,3,1804,3813,3,1,10,0,1008,338,0,0);
INSERT INTO "sleeping_faces" VALUES (274,'md_sleeping_faces_name_700-1',700,1,'md_sleeping_faces_display_name_700-1',92,1,583,894,1,1,7,0,355,460,0,0);
INSERT INTO "sleeping_faces" VALUES (275,'md_sleeping_faces_name_700-2',700,2,'md_sleeping_faces_display_name_700-2',92,2,1312,2012,2,1,9,0,714,308,0,0);
INSERT INTO "sleeping_faces" VALUES (276,'md_sleeping_faces_name_700-3',700,3,'md_sleeping_faces_display_name_700-3',92,3,3265,5007,3,1,11,0,1554,610,0,0);
INSERT INTO "sleeping_faces" VALUES (277,'md_sleeping_faces_name_468-1',468,1,'md_sleeping_faces_display_name_468-1',93,1,722,1300,1,1,8,0,475,320,0,0);
INSERT INTO "sleeping_faces" VALUES (278,'md_sleeping_faces_name_468-2',468,2,'md_sleeping_faces_display_name_468-2',93,2,1500,2699,2,1,10,0,881,522,0,0);
INSERT INTO "sleeping_faces" VALUES (279,'md_sleeping_faces_name_468-3',468,3,'md_sleeping_faces_display_name_468-3',93,3,3744,6739,3,1,12,0,1924,405,0,0);
INSERT INTO "sleeping_faces" VALUES (280,'md_sleeping_faces_name_287-1',287,1,'md_sleeping_faces_display_name_287-1',94,1,11,12,1,1,3,0,2,468,0,0);
INSERT INTO "sleeping_faces" VALUES (281,'md_sleeping_faces_name_287-2',287,2,'md_sleeping_faces_display_name_287-2',94,2,116,125,2,1,5,0,55,441,0,0);
INSERT INTO "sleeping_faces" VALUES (282,'md_sleeping_faces_name_287-3',287,3,'md_sleeping_faces_display_name_287-3',94,3,494,534,3,1,7,0,203,370,0,0);
INSERT INTO "sleeping_faces" VALUES (283,'md_sleeping_faces_name_288-1',288,1,'md_sleeping_faces_display_name_288-1',95,1,122,187,1,1,5,0,74,560,0,0);
INSERT INTO "sleeping_faces" VALUES (284,'md_sleeping_faces_name_288-2',288,2,'md_sleeping_faces_display_name_288-2',95,2,346,531,2,1,7,0,188,410,0,0);
INSERT INTO "sleeping_faces" VALUES (285,'md_sleeping_faces_name_288-3',288,3,'md_sleeping_faces_display_name_288-3',95,3,1152,1765,3,1,9,0,548,530,0,0);
INSERT INTO "sleeping_faces" VALUES (286,'md_sleeping_faces_name_289-1',289,1,'md_sleeping_faces_display_name_289-1',96,1,1108,1196,1,1,8,0,583,355,0,0);
INSERT INTO "sleeping_faces" VALUES (287,'md_sleeping_faces_name_289-2',289,2,'md_sleeping_faces_display_name_289-2',96,2,2292,2475,2,1,10,0,1077,548,0,0);
INSERT INTO "sleeping_faces" VALUES (288,'md_sleeping_faces_name_289-3',289,3,'md_sleeping_faces_display_name_289-3',96,3,5478,5916,3,1,12,0,2253,553,0,0);
INSERT INTO "sleeping_faces" VALUES (289,'md_sleeping_faces_name_462-1',462,1,'md_sleeping_faces_display_name_462-1',97,1,546,1415,1,1,8,0,438,548,0,0);
INSERT INTO "sleeping_faces" VALUES (290,'md_sleeping_faces_name_462-2',462,2,'md_sleeping_faces_display_name_462-2',97,2,1168,3026,2,1,10,0,837,358,0,0);
INSERT INTO "sleeping_faces" VALUES (291,'md_sleeping_faces_name_462-3',462,3,'md_sleeping_faces_display_name_462-3',97,3,2883,7469,3,1,12,0,1807,499,0,0);
INSERT INTO "sleeping_faces" VALUES (292,'md_sleeping_faces_name_471-1',471,1,'md_sleeping_faces_display_name_471-1',98,1,443,1147,1,1,7,0,355,522,0,0);
INSERT INTO "sleeping_faces" VALUES (293,'md_sleeping_faces_name_471-2',471,2,'md_sleeping_faces_display_name_471-2',98,2,996,2581,2,1,9,0,714,536,0,0);
INSERT INTO "sleeping_faces" VALUES (294,'md_sleeping_faces_name_471-3',471,3,'md_sleeping_faces_display_name_471-3',98,3,2479,6422,3,1,11,0,1554,551,0,0);
INSERT INTO "sleeping_faces" VALUES (295,'md_sleeping_faces_name_334-1',334,1,'md_sleeping_faces_display_name_334-1',99,1,170,306,1,1,5,0,112,460,0,0);
INSERT INTO "sleeping_faces" VALUES (296,'md_sleeping_faces_name_334-2',334,2,'md_sleeping_faces_display_name_334-2',99,2,445,801,2,1,7,0,261,359,0,0);
INSERT INTO "sleeping_faces" VALUES (297,'md_sleeping_faces_name_334-3',334,3,'md_sleeping_faces_display_name_334-3',99,3,1389,2500,3,1,9,0,714,348,0,0);
INSERT INTO "sleeping_faces" VALUES (298,'md_sleeping_faces_name_447-1',447,1,'md_sleeping_faces_display_name_447-1',100,1,8,17,1,1,3,0,2,418,0,0);
INSERT INTO "sleeping_faces" VALUES (299,'md_sleeping_faces_name_447-2',447,2,'md_sleeping_faces_display_name_447-2',100,2,95,201,2,1,5,0,60,381,0,0);
INSERT INTO "sleeping_faces" VALUES (300,'md_sleeping_faces_name_447-3',447,3,'md_sleeping_faces_display_name_447-3',100,3,392,828,3,1,7,0,219,415,0,0);
INSERT INTO "sleeping_faces" VALUES (301,'md_sleeping_faces_name_448-1',448,1,'md_sleeping_faces_display_name_448-1',101,1,443,1147,1,1,7,0,355,380,0,0);
INSERT INTO "sleeping_faces" VALUES (302,'md_sleeping_faces_name_448-2',448,2,'md_sleeping_faces_display_name_448-2',101,2,996,2581,2,1,9,0,714,441,0,0);
INSERT INTO "sleeping_faces" VALUES (303,'md_sleeping_faces_name_448-3',448,3,'md_sleeping_faces_display_name_448-3',101,3,2479,6422,3,1,11,0,1554,470,0,0);
INSERT INTO "sleeping_faces" VALUES (304,'md_sleeping_faces_name_363-1',363,1,'md_sleeping_faces_display_name_363-1',102,1,11,12,1,1,3,0,2,600,0,0);
INSERT INTO "sleeping_faces" VALUES (305,'md_sleeping_faces_name_363-2',363,2,'md_sleeping_faces_display_name_363-2',102,2,116,125,2,1,5,0,55,366,0,0);
INSERT INTO "sleeping_faces" VALUES (306,'md_sleeping_faces_name_363-3',363,3,'md_sleeping_faces_display_name_363-3',102,3,494,534,3,1,7,0,203,488,0,0);
INSERT INTO "sleeping_faces" VALUES (307,'md_sleeping_faces_name_364-1',364,1,'md_sleeping_faces_display_name_364-1',103,1,158,170,1,1,5,0,83,462,0,0);
INSERT INTO "sleeping_faces" VALUES (308,'md_sleeping_faces_name_364-2',364,2,'md_sleeping_faces_display_name_364-2',103,2,433,467,2,1,7,0,203,786,0,0);
INSERT INTO "sleeping_faces" VALUES (309,'md_sleeping_faces_name_364-3',364,3,'md_sleeping_faces_display_name_364-3',103,3,1418,1531,3,1,9,0,583,410,0,0);
INSERT INTO "sleeping_faces" VALUES (310,'md_sleeping_faces_name_365-1',365,1,'md_sleeping_faces_display_name_365-1',104,1,468,586,1,1,8,0,261,603,0,0);
INSERT INTO "sleeping_faces" VALUES (311,'md_sleeping_faces_name_365-2',365,2,'md_sleeping_faces_display_name_365-2',104,2,1101,1377,2,1,10,0,548,396,0,0);
INSERT INTO "sleeping_faces" VALUES (312,'md_sleeping_faces_name_365-3',365,3,'md_sleeping_faces_display_name_365-3',104,3,2904,3633,3,1,12,0,1265,522,0,0);
INSERT INTO "sleeping_faces" VALUES (313,'md_sleeping_faces_name_228-1',228,1,'md_sleeping_faces_display_name_228-1',105,1,8,17,1,1,3,0,2,330,0,0);
INSERT INTO "sleeping_faces" VALUES (314,'md_sleeping_faces_name_228-2',228,2,'md_sleeping_faces_display_name_228-2',105,2,95,201,2,1,5,0,60,421,0,0);
INSERT INTO "sleeping_faces" VALUES (315,'md_sleeping_faces_name_228-3',228,3,'md_sleeping_faces_display_name_228-3',105,3,392,828,3,1,7,0,219,473,0,0);
INSERT INTO "sleeping_faces" VALUES (316,'md_sleeping_faces_name_229-1',229,1,'md_sleeping_faces_display_name_229-1',106,1,144,303,1,1,5,0,103,330,0,0);
INSERT INTO "sleeping_faces" VALUES (317,'md_sleeping_faces_name_229-2',229,2,'md_sleeping_faces_display_name_229-2',106,2,375,792,2,1,7,0,240,328,0,0);
INSERT INTO "sleeping_faces" VALUES (318,'md_sleeping_faces_name_229-3',229,3,'md_sleeping_faces_display_name_229-3',106,3,1204,2544,3,1,9,0,672,573,0,0);
INSERT INTO "sleeping_faces" VALUES (319,'md_sleeping_faces_name_302-1',302,1,'md_sleeping_faces_display_name_302-1',107,1,180,465,1,1,6,0,144,517,0,0);
INSERT INTO "sleeping_faces" VALUES (320,'md_sleeping_faces_name_302-2',302,2,'md_sleeping_faces_display_name_302-2',107,2,466,1207,2,1,8,0,334,547,0,0);
INSERT INTO "sleeping_faces" VALUES (321,'md_sleeping_faces_name_302-3',302,3,'md_sleeping_faces_display_name_302-3',107,3,1335,3459,3,1,10,0,837,455,0,0);
INSERT INTO "sleeping_faces" VALUES (322,'md_sleeping_faces_name_132-5',132,5,'md_sleeping_faces_display_name_132-5',71,4,2325,4185,5,1,11,0,1077,361,0,0);
INSERT INTO "sleeping_faces" VALUES (323,'md_sleeping_faces_name_132-7',132,7,'md_sleeping_faces_display_name_132-7',71,4,2325,4185,7,1,11,0,1077,372,0,0);
INSERT INTO "sleeping_faces" VALUES (324,'md_sleeping_faces_name_132-6',132,6,'md_sleeping_faces_display_name_132-6',71,4,2325,4185,6,1,11,0,1077,290,0,0);
INSERT INTO "sleeping_faces" VALUES (325,'md_sleeping_faces_name_132-12',132,12,'md_sleeping_faces_display_name_132-12',71,4,2325,4185,12,1,11,0,1077,424,0,0);
INSERT INTO "sleeping_faces" VALUES (326,'md_sleeping_faces_name_132-11',132,11,'md_sleeping_faces_display_name_132-11',71,4,2325,4185,11,1,11,0,1077,530,0,0);
INSERT INTO "sleeping_faces" VALUES (327,'md_sleeping_faces_name_132-10',132,10,'md_sleeping_faces_display_name_132-10',71,4,2325,4185,10,1,11,0,1077,418,0,0);
INSERT INTO "sleeping_faces" VALUES (328,'md_sleeping_faces_name_onSnorlax',1,4,'お腹の上寝の',6,4,705,1491,1,1,8,2,355,381,0,0);
INSERT INTO "sleeping_faces" VALUES (329,'md_sleeping_faces_name_onSnorlax',2,4,'お腹の上寝の',7,4,1504,3178,1,1,10,3,757,367,0,0);
INSERT INTO "sleeping_faces" VALUES (330,'md_sleeping_faces_name_onSnorlax',3,4,'お腹の上寝の',22,4,4379,7882,1,1,13,4,2029,506,0,0);
INSERT INTO "sleeping_faces" VALUES (331,'md_sleeping_faces_name_onSnorlax',4,4,'お腹の上寝の',14,4,629,1629,1,1,8,2,355,300,0,0);
INSERT INTO "sleeping_faces" VALUES (332,'md_sleeping_faces_name_onSnorlax',5,4,'お腹の上寝の',15,4,1504,3178,1,1,10,2,757,378,0,0);
INSERT INTO "sleeping_faces" VALUES (333,'md_sleeping_faces_name_onSnorlax',6,4,'お腹の上寝の',33,4,4029,8513,1,1,13,3,2029,211,0,0);
INSERT INTO "sleeping_faces" VALUES (334,'md_sleeping_faces_name_onSnorlax',7,4,'お腹の上寝の',12,4,705,1491,1,1,8,2,355,349,0,0);
INSERT INTO "sleeping_faces" VALUES (335,'md_sleeping_faces_name_onSnorlax',8,4,'お腹の上寝の',13,4,1504,3178,1,1,10,2,757,290,0,0);
INSERT INTO "sleeping_faces" VALUES (336,'md_sleeping_faces_name_onSnorlax',9,4,'お腹の上寝の',31,4,4029,8513,1,1,13,3,2029,496,0,0);
INSERT INTO "sleeping_faces" VALUES (337,'md_sleeping_faces_name_onSnorlax',10,4,'お腹の上寝の',8,4,646,698,1,1,8,2,240,272,0,0);
INSERT INTO "sleeping_faces" VALUES (338,'md_sleeping_faces_name_onSnorlax',11,4,'お腹の上寝の',9,4,1019,1100,1,1,10,2,377,435,0,0);
INSERT INTO "sleeping_faces" VALUES (339,'md_sleeping_faces_name_onSnorlax',12,4,'お腹の上寝の',10,4,3354,6038,3,1,13,2,1554,360,0,0);
INSERT INTO "sleeping_faces" VALUES (340,'md_sleeping_faces_name_onSnorlax',19,4,'お腹の上寝の',3,4,388,1163,1,1,8,2,240,388,0,0);
INSERT INTO "sleeping_faces" VALUES (341,'md_sleeping_faces_name_onSnorlax',20,4,'お腹の上寝の',34,4,970,2512,1,1,10,2,548,469,0,0);
INSERT INTO "sleeping_faces" VALUES (342,'md_sleeping_faces_name_onSnorlax',23,4,'お腹の上寝の',26,4,424,1098,1,1,8,2,240,274,0,0);
INSERT INTO "sleeping_faces" VALUES (343,'md_sleeping_faces_name_onSnorlax',24,4,'お腹の上寝の',27,4,1340,3472,1,1,10,3,757,320,0,0);
INSERT INTO "sleeping_faces" VALUES (344,'md_sleeping_faces_name_onSnorlax',25,4,'お腹の上寝の',1,4,502,1505,1,1,9,2,310,523,0,0);
INSERT INTO "sleeping_faces" VALUES (345,'md_sleeping_faces_name_onSnorlax',26,4,'お腹の上寝の',58,4,2750,7125,1,1,13,2,1554,337,0,0);
INSERT INTO "sleeping_faces" VALUES (346,'md_sleeping_faces_name_onSnorlax',39,4,'お腹の上寝の',11,4,900,972,1,1,9,2,334,385,0,0);
INSERT INTO "sleeping_faces" VALUES (347,'md_sleeping_faces_name_onSnorlax',40,4,'お腹の上寝の',21,4,2719,2937,1,1,13,2,1008,423,0,0);
INSERT INTO "sleeping_faces" VALUES (348,'md_sleeping_faces_name_onSnorlax',52,4,'お腹の上寝の',4,4,615,1300,1,1,8,2,310,603,0,0);
INSERT INTO "sleeping_faces" VALUES (349,'md_sleeping_faces_name_onSnorlax',53,4,'お腹の上寝の',59,4,1504,3178,1,1,10,3,757,443,0,0);
INSERT INTO "sleeping_faces" VALUES (350,'md_sleeping_faces_name_onSnorlax',54,4,'お腹の上寝の',41,4,517,930,1,1,8,2,240,380,0,0);
INSERT INTO "sleeping_faces" VALUES (351,'md_sleeping_faces_name_onSnorlax',55,4,'お腹の上寝の',60,4,1634,2942,1,1,10,3,757,340,0,0);
INSERT INTO "sleeping_faces" VALUES (352,'md_sleeping_faces_name_onSnorlax',56,4,'お腹の上寝の',35,4,504,1305,1,1,8,2,285,490,0,0);
INSERT INTO "sleeping_faces" VALUES (353,'md_sleeping_faces_name_onSnorlax',57,4,'お腹の上寝の',61,4,1504,3178,1,1,10,3,757,301,0,0);
INSERT INTO "sleeping_faces" VALUES (354,'md_sleeping_faces_name_onSnorlax',58,4,'お腹の上寝の',32,4,669,1204,1,1,8,2,310,296,0,0);
INSERT INTO "sleeping_faces" VALUES (355,'md_sleeping_faces_name_onSnorlax',59,4,'お腹の上寝の',62,4,4862,8751,1,1,12,3,2253,346,0,0);
INSERT INTO "sleeping_faces" VALUES (356,'md_sleeping_faces_name_onSnorlax',69,4,'お腹の上寝の',36,4,564,1015,1,1,8,2,261,381,0,0);
INSERT INTO "sleeping_faces" VALUES (357,'md_sleeping_faces_name_onSnorlax',70,4,'お腹の上寝の',37,4,1183,2129,1,1,10,2,548,345,0,0);
INSERT INTO "sleeping_faces" VALUES (358,'md_sleeping_faces_name_onSnorlax',71,4,'お腹の上寝の',63,4,3354,6038,1,1,13,3,1554,332,0,0);
INSERT INTO "sleeping_faces" VALUES (359,'md_sleeping_faces_name_onSnorlax',74,4,'お腹の上寝の',24,4,424,1098,1,1,8,2,240,332,0,0);
INSERT INTO "sleeping_faces" VALUES (360,'md_sleeping_faces_name_onSnorlax',75,4,'お腹の上寝の',25,4,1088,2299,1,1,10,3,548,340,0,0);
INSERT INTO "sleeping_faces" VALUES (361,'md_sleeping_faces_name_onSnorlax',76,4,'お腹の上寝の',64,4,4379,7882,1,1,13,3,2029,300,0,0);
INSERT INTO "sleeping_faces" VALUES (362,'md_sleeping_faces_name_onSnorlax',79,4,'お腹の上寝の',16,4,769,830,1,1,8,3,285,385,0,0);
INSERT INTO "sleeping_faces" VALUES (363,'md_sleeping_faces_name_onSnorlax',80,4,'お腹の上寝の',42,4,1765,2707,1,1,10,3,757,360,0,0);
INSERT INTO "sleeping_faces" VALUES (364,'md_sleeping_faces_name_onSnorlax',84,4,'お腹の上寝の',43,4,388,1163,1,1,8,2,240,294,0,0);
INSERT INTO "sleeping_faces" VALUES (365,'md_sleeping_faces_name_onSnorlax',85,4,'お腹の上寝の',67,4,970,2512,3,1,10,2,548,358,0,0);
INSERT INTO "sleeping_faces" VALUES (366,'md_sleeping_faces_name_onSnorlax',94,4,'お腹の上寝の',68,4,3284,9853,1,1,13,3,2029,402,0,0);
INSERT INTO "sleeping_faces" VALUES (367,'md_sleeping_faces_name_onSnorlax',104,4,'お腹の上寝の',28,4,615,1106,1,1,8,2,285,336,0,0);
INSERT INTO "sleeping_faces" VALUES (368,'md_sleeping_faces_name_onSnorlax',105,4,'お腹の上寝の',46,4,1335,2822,1,1,10,2,672,305,0,0);
INSERT INTO "sleeping_faces" VALUES (369,'md_sleeping_faces_name_onSnorlax',115,4,'お腹の上寝の',69,4,3742,4041,1,1,11,4,1387,457,0,0);
INSERT INTO "sleeping_faces" VALUES (370,'md_sleeping_faces_name_onSnorlax',127,4,'お腹の上寝の',70,4,2239,5799,1,1,11,3,1265,240,0,0);
INSERT INTO "sleeping_faces" VALUES (371,'md_sleeping_faces_name_onSnorlax',132,4,'お腹の上寝の',71,4,2325,4185,1,1,11,2,1077,335,0,0);
INSERT INTO "sleeping_faces" VALUES (372,'md_sleeping_faces_name_onSnorlax',133,4,'お腹の上寝の',2,4,767,1380,1,1,8,2,355,590,0,0);
INSERT INTO "sleeping_faces" VALUES (373,'md_sleeping_faces_name_onSnorlax',134,4,'お腹の上寝の',72,4,5192,5607,1,1,12,2,1924,340,0,0);
INSERT INTO "sleeping_faces" VALUES (374,'md_sleeping_faces_name_onSnorlax',135,4,'お腹の上寝の',73,4,3406,8822,1,1,12,2,1924,385,0,0);
INSERT INTO "sleeping_faces" VALUES (375,'md_sleeping_faces_name_onSnorlax',136,4,'お腹の上寝の',74,4,3406,8822,1,1,12,2,1924,241,0,0);
INSERT INTO "sleeping_faces" VALUES (379,'md_sleeping_faces_name_onSnorlax',152,4,'お腹の上寝の',47,4,705,1491,1,1,8,2,355,545,0,0);
INSERT INTO "sleeping_faces" VALUES (380,'md_sleeping_faces_name_onSnorlax',153,4,'お腹の上寝の',48,4,1504,3178,1,1,10,2,757,410,0,0);
INSERT INTO "sleeping_faces" VALUES (381,'md_sleeping_faces_name_onSnorlax',154,4,'お腹の上寝の',78,4,4379,7882,1,1,13,3,2029,350,0,0);
INSERT INTO "sleeping_faces" VALUES (382,'md_sleeping_faces_name_onSnorlax',155,4,'お腹の上寝の',29,4,629,1629,1,1,8,2,355,354,0,0);
INSERT INTO "sleeping_faces" VALUES (383,'md_sleeping_faces_name_onSnorlax',156,4,'お腹の上寝の',30,4,1504,3178,1,1,10,2,757,240,0,0);
INSERT INTO "sleeping_faces" VALUES (384,'md_sleeping_faces_name_onSnorlax',157,4,'お腹の上寝の',79,4,4029,8513,1,1,13,3,2029,300,0,0);
INSERT INTO "sleeping_faces" VALUES (385,'md_sleeping_faces_name_onSnorlax',158,4,'お腹の上寝の',17,4,767,1380,1,1,8,2,355,434,0,0);
INSERT INTO "sleeping_faces" VALUES (386,'md_sleeping_faces_name_onSnorlax',159,4,'お腹の上寝の',18,4,1634,2942,1,1,10,2,757,482,0,0);
INSERT INTO "sleeping_faces" VALUES (387,'md_sleeping_faces_name_onSnorlax',160,4,'お腹の上寝の',80,4,4379,7882,1,1,13,3,2029,365,0,0);
INSERT INTO "sleeping_faces" VALUES (388,'md_sleeping_faces_name_onSnorlax',172,4,'お腹の上寝の',5,4,388,1163,1,1,8,2,240,450,0,0);
INSERT INTO "sleeping_faces" VALUES (389,'md_sleeping_faces_name_onSnorlax',174,4,'お腹の上寝の',38,4,646,698,1,1,8,2,240,501,0,0);
INSERT INTO "sleeping_faces" VALUES (390,'md_sleeping_faces_name_onSnorlax',175,4,'お腹の上寝の',23,4,705,1491,1,1,8,2,355,373,0,0);
INSERT INTO "sleeping_faces" VALUES (391,'md_sleeping_faces_name_onSnorlax',176,4,'お腹の上寝の',81,4,1157,2446,1,1,9,2,583,365,0,0);
INSERT INTO "sleeping_faces" VALUES (392,'md_sleeping_faces_name_onSnorlax',179,4,'お腹の上寝の',39,4,610,763,1,1,8,2,240,379,0,0);
INSERT INTO "sleeping_faces" VALUES (393,'md_sleeping_faces_name_onSnorlax',180,4,'お腹の上寝の',49,4,1277,1958,1,1,10,2,548,351,0,0);
INSERT INTO "sleeping_faces" VALUES (394,'md_sleeping_faces_name_onSnorlax',181,4,'お腹の上寝の',82,4,3354,6038,1,1,13,2,1554,330,0,0);
INSERT INTO "sleeping_faces" VALUES (395,'md_sleeping_faces_name_onSnorlax',185,4,'お腹の上寝の',40,4,815,1467,3,1,9,3,377,332,0,0);
INSERT INTO "sleeping_faces" VALUES (396,'md_sleeping_faces_name_onSnorlax',196,4,'お腹の上寝の',83,4,3406,8822,1,1,12,2,1924,100,0,0);
INSERT INTO "sleeping_faces" VALUES (397,'md_sleeping_faces_name_onSnorlax',197,4,'お腹の上寝の',84,4,4486,6878,1,1,12,2,1924,336,0,0);
INSERT INTO "sleeping_faces" VALUES (398,'md_sleeping_faces_name_onSnorlax',199,4,'お腹の上寝の',85,4,5251,8051,1,1,12,3,2253,300,0,0);
INSERT INTO "sleeping_faces" VALUES (399,'md_sleeping_faces_name_onSnorlax',202,4,'お腹の上寝の',50,4,1019,1100,1,1,9,3,377,285,0,0);
INSERT INTO "sleeping_faces" VALUES (400,'md_sleeping_faces_name_onSnorlax',214,4,'お腹の上寝の',86,4,2731,4915,1,1,11,3,1265,680,0,0);
INSERT INTO "sleeping_faces" VALUES (401,'md_sleeping_faces_name_onSnorlax',228,4,'お腹の上寝の',105,4,615,1300,1,1,8,2,310,300,0,0);
INSERT INTO "sleeping_faces" VALUES (402,'md_sleeping_faces_name_onSnorlax',229,4,'お腹の上寝の',106,4,1662,3512,1,1,10,3,837,300,0,0);
INSERT INTO "sleeping_faces" VALUES (403,'md_sleeping_faces_name_onSnorlax',246,4,'お腹の上寝の',87,4,879,1582,1,1,8,2,407,581,0,0);
INSERT INTO "sleeping_faces" VALUES (404,'md_sleeping_faces_name_onSnorlax',247,4,'お腹の上寝の',88,4,1806,3252,1,1,10,2,837,400,0,0);
INSERT INTO "sleeping_faces" VALUES (405,'md_sleeping_faces_name_onSnorlax',248,4,'お腹の上寝の',89,4,8825,15886,1,1,13,3,4088,280,0,0);
INSERT INTO "sleeping_faces" VALUES (406,'md_sleeping_faces_name_onSnorlax',287,4,'お腹の上寝の',94,4,769,830,1,1,8,3,285,300,0,0);
INSERT INTO "sleeping_faces" VALUES (407,'md_sleeping_faces_name_onSnorlax',288,4,'お腹の上寝の',95,4,1664,2551,1,1,10,3,714,468,0,0);
INSERT INTO "sleeping_faces" VALUES (408,'md_sleeping_faces_name_onSnorlax',289,4,'お腹の上寝の',96,4,7331,7917,1,1,13,4,2717,472,0,0);
INSERT INTO "sleeping_faces" VALUES (409,'md_sleeping_faces_name_onSnorlax',302,4,'お腹の上寝の',107,4,1906,4938,1,1,11,2,1077,300,0,0);
INSERT INTO "sleeping_faces" VALUES (410,'md_sleeping_faces_name_onSnorlax',316,4,'お腹の上寝の',51,4,705,761,1,1,8,2,261,338,0,0);
INSERT INTO "sleeping_faces" VALUES (411,'md_sleeping_faces_name_onSnorlax',317,4,'お腹の上寝の',52,4,2043,2207,1,1,10,3,757,439,0,0);
INSERT INTO "sleeping_faces" VALUES (412,'md_sleeping_faces_name_onSnorlax',333,4,'お腹の上寝の',53,4,519,1097,1,1,8,2,261,490,0,0);
INSERT INTO "sleeping_faces" VALUES (413,'md_sleeping_faces_name_onSnorlax',334,4,'お腹の上寝の',99,4,1901,3422,1,1,10,3,881,517,0,0);
INSERT INTO "sleeping_faces" VALUES (414,'md_sleeping_faces_name_onSnorlax',359,4,'お腹の上寝の',91,4,2512,5308,1,1,11,2,1265,642,0,0);
INSERT INTO "sleeping_faces" VALUES (415,'md_sleeping_faces_name_onSnorlax',360,4,'お腹の上寝の',54,4,646,698,1,1,8,2,240,473,0,0);
INSERT INTO "sleeping_faces" VALUES (416,'md_sleeping_faces_name_onSnorlax',363,4,'お腹の上寝の',102,4,769,830,1,1,8,2,285,500,0,0);
INSERT INTO "sleeping_faces" VALUES (417,'md_sleeping_faces_name_onSnorlax',364,4,'お腹の上寝の',103,4,2043,2207,1,1,10,3,757,636,0,0);
INSERT INTO "sleeping_faces" VALUES (418,'md_sleeping_faces_name_onSnorlax',365,4,'お腹の上寝の',104,4,3958,4951,1,1,13,3,1554,462,0,0);
INSERT INTO "sleeping_faces" VALUES (419,'md_sleeping_faces_name_onSnorlax',438,4,'お腹の上寝の',55,4,517,930,1,1,8,2,240,434,0,0);
INSERT INTO "sleeping_faces" VALUES (420,'md_sleeping_faces_name_onSnorlax',447,4,'お腹の上寝の',100,4,615,1300,1,1,8,2,310,697,0,0);
INSERT INTO "sleeping_faces" VALUES (421,'md_sleeping_faces_name_onSnorlax',448,4,'お腹の上寝の',101,4,3406,8822,1,1,12,3,1924,446,0,0);
INSERT INTO "sleeping_faces" VALUES (422,'md_sleeping_faces_name_onSnorlax',453,4,'お腹の上寝の',56,4,615,1106,1,1,8,2,285,369,0,0);
INSERT INTO "sleeping_faces" VALUES (423,'md_sleeping_faces_name_onSnorlax',454,4,'お腹の上寝の',57,4,1634,2942,1,1,10,2,757,267,0,0);
INSERT INTO "sleeping_faces" VALUES (424,'md_sleeping_faces_name_onSnorlax',468,4,'お腹の上寝の',93,4,5119,9214,2,1,13,3,2372,308,0,0);
INSERT INTO "sleeping_faces" VALUES (425,'md_sleeping_faces_name_onSnorlax',470,4,'お腹の上寝の',90,4,3406,8822,1,1,12,2,1924,395,0,0);
INSERT INTO "sleeping_faces" VALUES (426,'md_sleeping_faces_name_onSnorlax',471,4,'お腹の上寝の',98,4,3406,8822,1,1,12,2,1924,543,0,0);
INSERT INTO "sleeping_faces" VALUES (427,'md_sleeping_faces_name_onSnorlax',700,4,'お腹の上寝の',92,4,4486,6878,1,1,12,2,1924,460,0,0);
INSERT INTO "sleeping_faces" VALUES (428,'md_sleeping_faces_name_439-1',439,1,'お腹の上寝の',109,1,7,20,1,1,3,0,2,379,0,0);
INSERT INTO "sleeping_faces" VALUES (429,'md_sleeping_faces_name_439-2',439,2,'お腹の上寝の',109,2,77,232,2,1,5,0,60,752,0,0);
INSERT INTO "sleeping_faces" VALUES (430,'md_sleeping_faces_name_439-3',439,3,'お腹の上寝の',109,3,320,958,3,1,7,0,219,538,0,0);
INSERT INTO "sleeping_faces" VALUES (431,'md_sleeping_faces_name_onSnorlax',439,4,'お腹の上寝の',109,4,502,1505,1,1,8,2,310,379,0,0);
INSERT INTO "sleeping_faces" VALUES (432,'md_sleeping_faces_name_122-1',122,1,'お腹の上寝の',110,1,95,284,1,1,5,0,83,368,0,0);
INSERT INTO "sleeping_faces" VALUES (433,'md_sleeping_faces_name_122-2',122,2,'お腹の上寝の',110,2,260,778,2,1,7,0,203,308,0,0);
INSERT INTO "sleeping_faces" VALUES (434,'md_sleeping_faces_name_122-3',122,3,'お腹の上寝の',110,3,851,2552,3,1,9,0,583,361,0,0);
INSERT INTO "sleeping_faces" VALUES (435,'md_sleeping_faces_name_onSnorlax',122,4,'お腹の上寝の',110,4,1226,3678,1,1,10,3,757,368,0,0);
INSERT INTO "sleeping_faces" VALUES (436,'md_sleeping_faces_name_173-1',173,1,'お腹の上寝の',111,1,25,27,1,1,3,0,11,346,1,0);
INSERT INTO "sleeping_faces" VALUES (437,'md_sleeping_faces_name_173-2',173,2,'お腹の上寝の',111,2,158,171,2,1,5,0,74,439,1,0);
INSERT INTO "sleeping_faces" VALUES (438,'md_sleeping_faces_name_173-3',173,3,'お腹の上寝の',111,3,635,686,3,1,7,0,261,381,1,0);
INSERT INTO "sleeping_faces" VALUES (439,'md_sleeping_faces_name_onSnorlax',173,4,'お腹の上寝の',111,4,959,1035,1,1,8,2,355,346,1,0);
INSERT INTO "sleeping_faces" VALUES (440,'md_sleeping_faces_name_35-1',35,1,'お腹の上寝の',112,1,49,53,1,1,4,0,25,370,1,0);
INSERT INTO "sleeping_faces" VALUES (441,'md_sleeping_faces_name_35-2',35,2,'お腹の上寝の',112,2,218,236,2,1,6,0,103,412,1,0);
INSERT INTO "sleeping_faces" VALUES (442,'md_sleeping_faces_name_35-3',35,3,'お腹の上寝の',112,3,811,876,3,1,8,0,334,467,1,0);
INSERT INTO "sleeping_faces" VALUES (443,'md_sleeping_faces_name_onSnorlax',35,4,'お腹の上寝の',112,4,1182,1277,1,1,9,2,438,370,1,0);
INSERT INTO "sleeping_faces" VALUES (444,'md_sleeping_faces_name_36-1',36,1,'お腹の上寝の',113,1,677,847,1,1,8,0,377,530,1,0);
INSERT INTO "sleeping_faces" VALUES (445,'md_sleeping_faces_name_36-2',36,2,'お腹の上寝の',113,2,1521,1903,2,1,10,0,757,370,1,0);
INSERT INTO "sleeping_faces" VALUES (446,'md_sleeping_faces_name_36-3',36,3,'お腹の上寝の',113,3,3793,4744,3,1,12,0,1652,567,1,0);
INSERT INTO "sleeping_faces" VALUES (447,'md_sleeping_faces_name_onSnorlax',36,4,'お腹の上寝の',113,4,5168,6464,1,1,13,4,2029,530,1,0);
INSERT INTO "sleeping_faces" VALUES (10001,'md_sleeping_faces_name_25-1',25,1,'お腹の上寝の',9001,1,7,20,1,1,4,0,2,523,1,0);
INSERT INTO "sleeping_faces" VALUES (10002,'md_sleeping_faces_name_25-2',25,2,'お腹の上寝の',9001,2,77,232,2,1,6,0,60,345,1,0);
INSERT INTO "sleeping_faces" VALUES (448,'md_sleeping_faces_name_353-1',353,1,'お腹の上寝の',114,1,8,17,1,1,3,0,2,478,1,0);
INSERT INTO "sleeping_faces" VALUES (449,'md_sleeping_faces_name_353-2',353,2,'お腹の上寝の',114,2,86,180,2,1,5,0,55,542,1,0);
INSERT INTO "sleeping_faces" VALUES (450,'md_sleeping_faces_name_353-3',353,3,'お腹の上寝の',114,3,364,769,3,1,7,0,203,375,1,0);
INSERT INTO "sleeping_faces" VALUES (451,'md_sleeping_faces_name_354-1',354,1,'お腹の上寝の',115,1,186,393,1,1,5,0,133,400,1,0);
INSERT INTO "sleeping_faces" VALUES (452,'md_sleeping_faces_name_354-2',354,2,'お腹の上寝の',115,2,485,1026,2,1,7,0,310,560,1,0);
INSERT INTO "sleeping_faces" VALUES (453,'md_sleeping_faces_name_354-3',354,3,'お腹の上寝の',115,3,1437,3036,3,1,9,0,802,398,1,0);
INSERT INTO "sleeping_faces" VALUES (454,'md_sleeping_faces_name_onSnorlax',354,4,'お腹の上寝の',115,4,2001,4230,1,1,10,3,1008,400,1,0);
INSERT INTO "sleeping_faces" VALUES (455,'md_sleeping_faces_name_95-1',95,1,'お腹の上寝の',116,1,250,749,1,1,6,0,219,320,1,0);
INSERT INTO "sleeping_faces" VALUES (456,'md_sleeping_faces_name_95-2',95,2,'お腹の上寝の',116,2,606,1820,2,1,8,0,475,520,1,0);
INSERT INTO "sleeping_faces" VALUES (457,'md_sleeping_faces_name_95-3',95,3,'お腹の上寝の',116,3,1678,5034,3,1,10,0,1150,480,1,0);
INSERT INTO "sleeping_faces" VALUES (458,'md_sleeping_faces_name_208-1',208,1,'お腹の上寝の',117,1,1170,2473,1,1,7,0,837,680,1,0);
INSERT INTO "sleeping_faces" VALUES (459,'md_sleeping_faces_name_208-2',208,2,'お腹の上寝の',117,2,2291,4840,2,1,9,0,1463,468,1,0);
INSERT INTO "sleeping_faces" VALUES (460,'md_sleeping_faces_name_208-3',208,3,'お腹の上寝の',117,3,5463,11543,3,1,11,0,3052,540,1,0);
INSERT INTO "species_candies" VALUES (1,'md_species_candies_name_25','md_species_candies_narrow_name_25',1,1,25);
INSERT INTO "species_candies" VALUES (2,'md_species_candies_name_133','md_species_candies_narrow_name_133',2,1,133);
INSERT INTO "species_candies" VALUES (3,'md_species_candies_name_19','md_species_candies_narrow_name_19',3,1,19);
INSERT INTO "species_candies" VALUES (4,'md_species_candies_name_52','md_species_candies_narrow_name_52',4,1,52);
INSERT INTO "species_candies" VALUES (6,'md_species_candies_name_1','md_species_candies_narrow_name_1',6,1,1);
INSERT INTO "species_candies" VALUES (8,'md_species_candies_name_10','md_species_candies_narrow_name_10',8,1,10);
INSERT INTO "species_candies" VALUES (11,'md_species_candies_name_39','md_species_candies_narrow_name_39',11,1,39);
INSERT INTO "species_candies" VALUES (12,'md_species_candies_name_7','md_species_candies_narrow_name_7',12,1,7);
INSERT INTO "species_candies" VALUES (14,'md_species_candies_name_4','md_species_candies_narrow_name_4',14,1,4);
INSERT INTO "species_candies" VALUES (16,'md_species_candies_name_79','md_species_candies_narrow_name_79',16,1,79);
INSERT INTO "species_candies" VALUES (17,'md_species_candies_name_158','md_species_candies_narrow_name_158',17,1,158);
INSERT INTO "species_candies" VALUES (19,'md_species_candies_name_50','md_species_candies_narrow_name_50',19,1,50);
INSERT INTO "species_candies" VALUES (23,'md_species_candies_name_175','md_species_candies_narrow_name_175',23,1,175);
INSERT INTO "species_candies" VALUES (24,'md_species_candies_name_74','md_species_candies_narrow_name_74',24,1,74);
INSERT INTO "species_candies" VALUES (26,'md_species_candies_name_23','md_species_candies_narrow_name_23',26,1,23);
INSERT INTO "species_candies" VALUES (28,'md_species_candies_name_104','md_species_candies_narrow_name_104',28,1,104);
INSERT INTO "species_candies" VALUES (29,'md_species_candies_name_155','md_species_candies_narrow_name_155',29,1,155);
INSERT INTO "species_candies" VALUES (32,'md_species_candies_name_58','md_species_candies_narrow_name_58',32,1,58);
INSERT INTO "species_candies" VALUES (35,'md_species_candies_name_56','md_species_candies_narrow_name_56',35,1,56);
INSERT INTO "species_candies" VALUES (36,'md_species_candies_name_69','md_species_candies_narrow_name_69',36,1,69);
INSERT INTO "species_candies" VALUES (39,'md_species_candies_name_179','md_species_candies_narrow_name_179',39,1,179);
INSERT INTO "species_candies" VALUES (40,'md_species_candies_name_185','md_species_candies_narrow_name_185',40,1,185);
INSERT INTO "species_candies" VALUES (41,'md_species_candies_name_54','md_species_candies_narrow_name_54',41,1,54);
INSERT INTO "species_candies" VALUES (43,'md_species_candies_name_84','md_species_candies_narrow_name_84',43,1,84);
INSERT INTO "species_candies" VALUES (44,'md_species_candies_name_92','md_species_candies_narrow_name_92',44,1,92);
INSERT INTO "species_candies" VALUES (47,'md_species_candies_name_152','md_species_candies_narrow_name_152',47,1,152);
INSERT INTO "species_candies" VALUES (50,'md_species_candies_name_202','md_species_candies_narrow_name_202',50,1,202);
INSERT INTO "species_candies" VALUES (51,'md_species_candies_name_316','md_species_candies_narrow_name_316',51,1,316);
INSERT INTO "species_candies" VALUES (53,'md_species_candies_name_333','md_species_candies_narrow_name_333',53,1,333);
INSERT INTO "species_candies" VALUES (56,'md_species_candies_name_453','md_species_candies_narrow_name_453',56,1,453);
INSERT INTO "species_candies" VALUES (65,'md_species_candies_name_81','md_species_candies_narrow_name_81',65,1,81);
INSERT INTO "species_candies" VALUES (69,'md_species_candies_name_115','md_species_candies_narrow_name_115',69,1,115);
INSERT INTO "species_candies" VALUES (70,'md_species_candies_name_127','md_species_candies_narrow_name_127',70,1,127);
INSERT INTO "species_candies" VALUES (71,'md_species_candies_name_132','md_species_candies_narrow_name_132',71,1,132);
INSERT INTO "species_candies" VALUES (86,'md_species_candies_name_214','md_species_candies_narrow_name_214',86,1,214);
INSERT INTO "species_candies" VALUES (87,'md_species_candies_name_246','md_species_candies_narrow_name_246',87,1,246);
INSERT INTO "species_candies" VALUES (91,'md_species_candies_name_359','md_species_candies_narrow_name_359',91,1,359);
INSERT INTO "species_candies" VALUES (94,'md_species_candies_name_287','md_species_candies_narrow_name_287',94,1,287);
INSERT INTO "species_candies" VALUES (101,'md_species_candies_name_448','md_species_candies_narrow_name_448',101,1,448);
INSERT INTO "species_candies" VALUES (102,'md_species_candies_name_363','md_species_candies_narrow_name_363',102,1,363);
INSERT INTO "species_candies" VALUES (105,'md_species_candies_name_228','md_species_candies_narrow_name_228',105,1,228);
INSERT INTO "species_candies" VALUES (107,'md_species_candies_name_302','md_species_candies_narrow_name_302',107,1,302);
INSERT INTO "species_candies" VALUES (110,'md_species_candies_name_122','md_species_candies_narrow_name_122',110,1,122);
INSERT INTO "species_candies" VALUES (112,'md_species_candies_name_35','md_species_candies_narrow_name_35',112,1,35);
INSERT INTO "species_candies" VALUES (114,'md_species_candies_name_353','md_species_candies_narrow_name_353',114,1,353);
INSERT INTO "species_candies" VALUES (116,'md_species_candies_name_95','md_species_candies_narrow_name_95',116,1,95);
INSERT INTO "pokemons" VALUES (1,'md_pokemons_name_25','md_pokemons_name_25',4,1,3,1,25,1,7,1,1,5,0,1,1,0,0,'フォルム名',25,1,1,7,20,0,0,6790,6520,7230,6520,6630,6520,9710,2030);
INSERT INTO "pokemons" VALUES (2,'md_pokemons_name_133','md_pokemons_name_133',1,1,3,1,133,2,5,1,1,5,0,1,1,0,0,'フォルム名',133,1,1,20,36,0,0,430,2510,2910,2510,1920,2510,7090,2090);
INSERT INTO "pokemons" VALUES (3,'md_pokemons_name_19','md_pokemons_name_19',1,1,3,1,19,3,5,1,1,5,0,1,1,0,0,'フォルム名',19,1,1,7,20,0,0,2950,6980,7780,6980,7130,6980,780,640);
INSERT INTO "pokemons" VALUES (4,'md_pokemons_name_52','md_pokemons_name_52',1,1,3,1,52,4,5,1,1,5,0,1,1,0,0,'フォルム名',52,1,1,8,17,0,0,5680,5460,5940,5460,5330,5460,1090,6410);
INSERT INTO "pokemons" VALUES (5,'md_pokemons_name_172','md_pokemons_name_172',4,0,4,1,172,1,5,1,1,5,0,1,1,0,0,'フォルム名',172,1,1,7,20,0,0,6850,6460,7170,6460,6590,6460,9700,2020);
INSERT INTO "pokemons" VALUES (6,'md_pokemons_name_1','md_pokemons_name_1',5,4,2,1,1,6,5,1,1,5,0,1,1,0,0,'フォルム名',1,1,1,18,39,0,0,7280,940,1000,940,650,940,7120,2830);
INSERT INTO "pokemons" VALUES (7,'md_pokemons_name_2','md_pokemons_name_2',5,4,2,1,2,6,12,1,1,5,0,1,1,0,0,'フォルム名',2,1,1,116,245,0,0,7270,4220,4240,4220,640,4220,7130,2820);
INSERT INTO "pokemons" VALUES (8,'md_pokemons_name_10','md_pokemons_name_10',12,4,2,1,10,8,5,1,1,5,0,1,1,0,0,'フォルム名',10,1,1,11,12,0,0,1980,1120,1450,1120,7150,1120,8140,8010);
INSERT INTO "pokemons" VALUES (9,'md_pokemons_name_11','md_pokemons_name_11',12,4,2,1,11,8,7,1,1,5,0,1,1,0,0,'フォルム名',11,1,1,29,31,0,0,5350,5500,1570,5500,7500,5500,1630,9740);
INSERT INTO "pokemons" VALUES (10,'md_pokemons_name_12','md_pokemons_name_12',12,4,2,1,12,8,15,1,0,5,0,1,1,0,0,'フォルム名',12,1,1,397,715,0,0,6270,980,6970,980,8270,980,4470,1000);
INSERT INTO "pokemons" VALUES (11,'md_pokemons_name_39','md_pokemons_name_39',18,1,3,1,39,11,7,1,1,5,0,1,1,0,0,'フォルム名',39,1,1,23,24,0,0,7470,4250,8000,4250,6880,4250,9500,4780);
INSERT INTO "pokemons" VALUES (12,'md_pokemons_name_7','md_pokemons_name_7',3,0,4,1,7,12,5,1,1,5,0,1,1,0,0,'フォルム名',7,1,1,18,39,0,0,4040,8320,1170,8320,7680,8320,840,6320);
INSERT INTO "pokemons" VALUES (13,'md_pokemons_name_8','md_pokemons_name_8',3,0,4,1,8,12,12,1,1,5,0,1,1,0,0,'フォルム名',8,1,1,116,245,0,0,1710,9600,1140,9600,7690,9600,6360,1490);
INSERT INTO "pokemons" VALUES (14,'md_pokemons_name_4','md_pokemons_name_4',2,1,3,1,4,14,5,1,1,5,0,1,1,0,0,'フォルム名',4,1,1,16,42,0,0,6890,1240,8190,1240,2840,1240,9130,600);
INSERT INTO "pokemons" VALUES (15,'md_pokemons_name_5','md_pokemons_name_5',2,1,3,1,5,14,12,1,1,5,0,1,1,0,0,'フォルム名',5,1,1,116,245,0,0,9640,1250,7890,1250,2860,1250,3130,1310);
INSERT INTO "pokemons" VALUES (16,'md_pokemons_name_79','md_pokemons_name_79',3,1,3,1,79,16,5,1,1,5,0,1,1,0,0,'フォルム名',79,1,1,11,12,0,0,9070,8000,7730,8000,2240,8000,6330,2750);
INSERT INTO "pokemons" VALUES (17,'md_pokemons_name_158','md_pokemons_name_158',3,0,4,1,158,17,5,1,1,5,0,1,1,0,0,'フォルム名',158,1,1,20,36,0,0,10040,9020,4530,9020,3780,9020,3110,800);
INSERT INTO "pokemons" VALUES (18,'md_pokemons_name_159','md_pokemons_name_159',3,0,4,1,159,17,12,1,1,5,0,1,1,0,0,'フォルム名',159,1,1,126,227,0,0,390,1790,2110,1790,9120,1790,6590,9140);
INSERT INTO "pokemons" VALUES (19,'md_pokemons_name_50','md_pokemons_name_50',9,1,3,1,50,19,5,1,1,5,0,1,1,0,0,'フォルム名',50,1,1,7,20,0,0,4750,2090,8960,2090,1400,2090,2380,2260);
INSERT INTO "pokemons" VALUES (20,'md_pokemons_name_51','md_pokemons_name_51',9,1,3,1,51,19,12,1,0,5,0,1,1,0,0,'フォルム名',51,1,1,95,284,0,0,4270,2390,9380,2390,1410,2390,1600,90);
INSERT INTO "pokemons" VALUES (21,'md_pokemons_name_40','md_pokemons_name_40',18,1,3,1,40,11,16,1,0,5,0,1,1,0,0,'フォルム名',40,1,1,253,273,0,0,7260,9710,4040,9710,4180,9710,9510,4790);
INSERT INTO "pokemons" VALUES (22,'md_pokemons_name_3','md_pokemons_name_3',5,4,2,1,3,6,20,1,0,5,0,1,1,0,0,'フォルム名',3,1,1,574,1033,0,0,7290,9410,3290,9410,630,9410,7110,2810);
INSERT INTO "pokemons" VALUES (23,'md_pokemons_name_175','md_pokemons_name_175',18,0,4,1,175,23,5,1,1,5,0,1,1,0,0,'フォルム名',175,1,1,18,39,0,0,5170,8950,9190,8950,8910,8950,8840,3690);
INSERT INTO "pokemons" VALUES (24,'md_pokemons_name_74','md_pokemons_name_74',13,0,4,1,74,24,5,1,1,5,0,1,1,0,0,'フォルム名',74,1,1,7,19,0,0,490,3270,7680,3270,3960,3270,810,680);
INSERT INTO "pokemons" VALUES (25,'md_pokemons_name_75','md_pokemons_name_75',13,0,4,1,75,24,12,1,1,5,0,1,1,0,0,'フォルム名',75,1,1,67,141,0,0,3030,3630,3950,3630,2700,3630,1850,6860);
INSERT INTO "pokemons" VALUES (26,'md_pokemons_name_23','md_pokemons_name_23',8,4,2,1,23,26,5,1,1,5,0,1,1,0,0,'フォルム名',23,1,1,7,19,0,0,40,2530,10,2530,7310,2530,5990,4180);
INSERT INTO "pokemons" VALUES (27,'md_pokemons_name_24','md_pokemons_name_24',8,4,2,1,24,26,12,1,0,5,0,1,1,0,0,'フォルム名',24,1,1,103,268,0,0,50,230,280,230,310,230,6000,4170);
INSERT INTO "pokemons" VALUES (28,'md_pokemons_name_104','md_pokemons_name_104',9,0,4,1,104,28,5,1,1,5,0,1,1,0,0,'フォルム名',104,1,1,9,16,0,0,1760,1830,6810,1830,8990,1830,8670,1480);
INSERT INTO "pokemons" VALUES (29,'md_pokemons_name_155','md_pokemons_name_155',2,1,3,1,155,29,5,1,1,5,0,1,1,0,0,'フォルム名',155,1,1,16,42,0,0,6930,1880,4250,1880,2070,1880,4840,1330);
INSERT INTO "pokemons" VALUES (30,'md_pokemons_name_156','md_pokemons_name_156',2,1,3,1,156,29,12,1,1,5,0,1,1,0,0,'フォルム名',156,1,1,116,245,0,0,8110,6870,3110,6870,3410,6870,3240,1270);
INSERT INTO "pokemons" VALUES (31,'md_pokemons_name_9','md_pokemons_name_9',3,0,4,1,9,12,20,1,0,5,0,1,1,0,0,'フォルム名',9,1,1,528,1116,0,0,1720,720,9270,720,9090,720,230,1240);
INSERT INTO "pokemons" VALUES (32,'md_pokemons_name_58','md_pokemons_name_58',2,1,3,1,58,32,5,1,1,5,0,1,1,0,0,'フォルム名',58,1,1,9,16,0,0,1350,3730,1110,3730,2520,3730,10,1500);
INSERT INTO "pokemons" VALUES (33,'md_pokemons_name_6','md_pokemons_name_6',2,1,2,1,6,14,20,1,0,5,0,1,1,0,0,'フォルム名',6,1,1,528,1116,0,0,9650,1220,2500,1220,2850,1220,3140,8260);
INSERT INTO "pokemons" VALUES (34,'md_pokemons_name_20','md_pokemons_name_20',1,1,3,1,20,3,12,1,0,5,0,1,1,0,0,'フォルム名',20,1,1,60,155,0,0,9430,6970,7790,6970,7140,6970,2920,3560);
INSERT INTO "pokemons" VALUES (35,'md_pokemons_name_56','md_pokemons_name_56',7,4,2,1,56,35,5,1,1,5,0,1,1,0,0,'フォルム名',56,1,1,7,19,0,0,8380,5230,3050,5230,5480,5230,3530,6620);
INSERT INTO "pokemons" VALUES (36,'md_pokemons_name_69','md_pokemons_name_69',5,4,2,1,69,36,5,1,1,5,0,1,1,0,0,'フォルム名',69,1,1,9,16,0,0,8160,640,1490,640,4150,640,3770,6370);
INSERT INTO "pokemons" VALUES (37,'md_pokemons_name_70','md_pokemons_name_70',5,4,2,1,70,36,12,1,1,5,0,1,1,0,0,'フォルム名',70,1,1,73,131,0,0,740,9650,890,9650,9140,9650,6900,170);
INSERT INTO "pokemons" VALUES (38,'md_pokemons_name_174','md_pokemons_name_174',18,0,4,1,174,11,5,1,1,5,0,1,1,0,0,'フォルム名',174,1,1,11,12,0,0,7350,4140,9300,4140,2310,4140,9520,9500);
INSERT INTO "pokemons" VALUES (39,'md_pokemons_name_179','md_pokemons_name_179',4,1,2,1,179,39,5,1,1,5,0,1,1,0,0,'フォルム名',179,1,1,11,13,0,0,8840,5290,9850,5290,9370,5290,3660,4310);
INSERT INTO "pokemons" VALUES (40,'md_pokemons_name_185','md_pokemons_name_185',13,0,4,1,185,40,7,1,0,5,0,1,1,0,0,'フォルム名',185,1,1,23,41,0,0,710,8470,8500,8470,5660,8470,870,8570);
INSERT INTO "pokemons" VALUES (41,'md_pokemons_name_54','md_pokemons_name_54',3,4,2,1,54,41,5,1,1,5,0,1,1,0,0,'フォルム名',54,1,1,9,16,0,0,2790,6760,7530,6760,1880,6760,340,1630);
INSERT INTO "pokemons" VALUES (42,'md_pokemons_name_80','md_pokemons_name_80',3,1,3,1,80,16,12,1,1,5,0,1,1,0,0,'フォルム名',80,1,1,136,209,0,0,9060,7980,3140,7980,4520,7980,6310,2760);
INSERT INTO "pokemons" VALUES (43,'md_pokemons_name_84','md_pokemons_name_84',10,0,1,1,84,43,5,1,1,5,0,1,1,0,0,'フォルム名',84,1,1,7,20,0,0,5060,2120,2430,2120,1450,2120,2140,7680);
INSERT INTO "pokemons" VALUES (44,'md_pokemons_name_92','md_pokemons_name_92',14,4,1,1,92,44,5,1,1,5,0,1,1,0,0,'フォルム名',92,1,1,7,20,0,0,2630,3230,2960,3230,5920,3230,380,5710);
INSERT INTO "pokemons" VALUES (45,'md_pokemons_name_93','md_pokemons_name_93',14,4,1,1,93,44,12,1,1,5,0,1,1,0,0,'フォルム名',93,1,1,62,186,0,0,2640,3870,8680,3870,140,3870,390,5720);
INSERT INTO "pokemons" VALUES (46,'md_pokemons_name_105','md_pokemons_name_105',9,0,1,1,105,28,12,1,1,5,0,1,1,0,0,'フォルム名',105,1,1,93,197,0,0,1770,5310,6800,5310,4160,5310,8750,7670);
INSERT INTO "pokemons" VALUES (47,'md_pokemons_name_152','md_pokemons_name_152',5,4,1,1,152,47,5,1,1,5,0,1,1,0,0,'フォルム名',152,1,1,18,39,0,0,4540,1330,3720,1330,1830,1330,8000,6690);
INSERT INTO "pokemons" VALUES (48,'md_pokemons_name_153','md_pokemons_name_153',5,4,1,1,153,47,12,1,1,5,0,1,1,0,0,'フォルム名',153,1,1,116,245,0,0,7610,560,5360,560,4860,560,4540,1090);
INSERT INTO "pokemons" VALUES (49,'md_pokemons_name_180','md_pokemons_name_180',4,1,1,1,180,39,12,1,1,5,0,1,1,0,0,'フォルム名',180,1,1,79,121,0,0,8920,2890,4790,2890,9470,2890,4610,5550);
INSERT INTO "pokemons" VALUES (50,'md_pokemons_name_202','md_pokemons_name_202',11,1,1,1,202,50,7,1,1,5,0,1,1,0,0,'フォルム名',202,1,1,29,31,0,0,4130,9760,7650,9760,9670,9760,3400,3610);
INSERT INTO "pokemons" VALUES (51,'md_pokemons_name_316','md_pokemons_name_316',8,4,1,1,316,51,5,1,1,5,0,1,1,0,0,'フォルム名',316,1,1,11,12,0,0,2690,3760,3790,3760,7780,3760,910,7170);
INSERT INTO "pokemons" VALUES (52,'md_pokemons_name_317','md_pokemons_name_317',8,4,1,1,317,51,12,1,1,5,0,1,1,0,0,'フォルム名',317,1,1,158,170,0,0,8350,8540,440,8540,7770,8540,950,2660);
INSERT INTO "pokemons" VALUES (53,'md_pokemons_name_333','md_pokemons_name_333',10,0,1,1,333,53,5,1,1,5,0,1,1,0,0,'フォルム名',333,1,1,8,17,0,0,4650,8520,9500,8520,9480,8520,9090,4210);
INSERT INTO "pokemons" VALUES (54,'md_pokemons_name_360','md_pokemons_name_360',11,0,1,1,360,50,5,1,1,5,0,1,1,0,0,'フォルム名',360,1,1,11,12,0,0,4120,9840,6720,9840,3530,9840,3390,650);
INSERT INTO "pokemons" VALUES (55,'md_pokemons_name_438','md_pokemons_name_438',13,0,1,1,438,40,5,1,1,5,0,1,1,0,0,'フォルム名',438,1,1,9,16,0,0,720,800,5580,800,5640,800,890,4640);
INSERT INTO "pokemons" VALUES (56,'md_pokemons_name_453','md_pokemons_name_453',8,4,1,1,453,56,5,1,1,5,0,1,1,0,0,'フォルム名',453,1,1,9,16,0,0,2370,1760,1990,1760,2830,1760,5140,820);
INSERT INTO "pokemons" VALUES (57,'md_pokemons_name_454','md_pokemons_name_454',8,4,1,1,454,56,12,1,1,5,0,1,1,0,0,'フォルム名',454,1,1,126,227,0,0,5130,9060,1650,9060,8980,9060,2000,4500);
INSERT INTO "pokemons" VALUES (58,'md_pokemons_name_26','md_pokemons_name_26',4,1,1,1,26,1,18,1,1,5,0,1,1,0,0,'フォルム名',26,1,1,326,844,0,0,9370,6920,7700,6920,7080,6920,2610,7390);
INSERT INTO "pokemons" VALUES (59,'md_pokemons_name_53','md_pokemons_name_53',1,1,1,1,53,4,12,1,1,5,0,1,1,0,0,'フォルム名',53,1,1,116,245,0,0,7700,6400,7090,6400,8330,6400,9330,8720);
INSERT INTO "pokemons" VALUES (60,'md_pokemons_name_55','md_pokemons_name_55',3,0,1,1,55,41,12,1,1,5,0,1,1,0,0,'フォルム名',55,1,1,126,227,0,0,2990,3460,80,3460,1890,3460,430,5020);
INSERT INTO "pokemons" VALUES (61,'md_pokemons_name_57','md_pokemons_name_57',7,4,1,1,57,35,12,1,1,5,0,1,1,0,0,'フォルム名',57,1,1,116,245,0,0,1140,6730,1750,6730,7120,6730,5310,1390);
INSERT INTO "pokemons" VALUES (62,'md_pokemons_name_59','md_pokemons_name_59',2,1,1,1,59,32,20,1,1,5,0,1,1,0,0,'フォルム名',59,1,1,666,1199,0,0,630,250,300,250,350,250,6980,4910);
INSERT INTO "pokemons" VALUES (63,'md_pokemons_name_71','md_pokemons_name_71',5,4,1,1,71,36,20,1,1,5,0,1,1,0,0,'フォルム名',71,1,1,397,715,0,0,750,9450,2800,9450,7610,9450,6910,410);
INSERT INTO "pokemons" VALUES (64,'md_pokemons_name_76','md_pokemons_name_76',13,0,1,1,76,24,22,1,1,5,0,1,1,0,0,'フォルム名',76,1,1,574,1033,0,0,3020,3470,4060,3470,2720,3470,2460,6870);
INSERT INTO "pokemons" VALUES (65,'md_pokemons_name_81','md_pokemons_name_81',17,0,1,1,81,65,5,1,1,5,0,1,1,0,0,'フォルム名',81,1,1,7,20,0,0,2600,5140,5430,5140,5070,5140,8300,740);
INSERT INTO "pokemons" VALUES (66,'md_pokemons_name_82','md_pokemons_name_82',17,0,1,1,82,65,12,1,1,5,0,1,1,0,0,'フォルム名',82,1,1,95,284,0,0,9780,5150,5440,5150,5080,5150,2820,80);
INSERT INTO "pokemons" VALUES (67,'md_pokemons_name_85','md_pokemons_name_85',10,0,1,1,85,43,12,1,1,5,0,1,1,0,0,'フォルム名',85,1,1,60,155,0,0,5070,2110,2420,2110,1440,2110,2230,7690);
INSERT INTO "pokemons" VALUES (68,'md_pokemons_name_94','md_pokemons_name_94',14,4,1,1,94,44,22,1,1,5,0,1,1,0,0,'フォルム名',94,1,1,431,1291,0,0,2550,3260,2680,3260,2690,3260,9240,5500);
INSERT INTO "pokemons" VALUES (69,'md_pokemons_name_115','md_pokemons_name_115',1,1,1,1,115,69,16,1,1,5,0,1,1,0,0,'フォルム名',115,1,1,416,449,0,0,1830,4350,4550,4350,3650,4350,8160,6170);
INSERT INTO "pokemons" VALUES (70,'md_pokemons_name_127','md_pokemons_name_127',12,4,1,1,127,70,16,1,1,5,0,1,1,0,0,'フォルム名',127,1,1,235,608,0,0,1410,6570,8280,6570,6650,6570,5120,6360);
INSERT INTO "pokemons" VALUES (71,'md_pokemons_name_132','md_pokemons_name_132',1,1,1,1,132,71,16,1,1,5,0,1,1,0,0,'フォルム名',132,1,1,219,394,0,0,8770,2100,5880,2100,1430,2100,3690,2510);
INSERT INTO "pokemons" VALUES (72,'md_pokemons_name_134','md_pokemons_name_134',3,0,1,1,134,2,20,1,1,5,0,1,1,0,0,'フォルム名',134,1,1,675,729,0,0,3620,9350,250,9350,280,9350,5240,1210);
INSERT INTO "pokemons" VALUES (73,'md_pokemons_name_135','md_pokemons_name_135',4,1,1,1,135,2,20,1,1,5,0,1,1,0,0,'フォルム名',135,1,1,443,1147,0,0,3330,4270,9730,4270,710,4270,7570,7400);
INSERT INTO "pokemons" VALUES (74,'md_pokemons_name_136','md_pokemons_name_136',2,1,1,1,136,2,20,1,1,5,0,1,1,0,0,'フォルム名',136,1,1,443,1147,0,0,7140,2930,7610,2930,2130,2930,4690,1260);
INSERT INTO "pokemons" VALUES (78,'md_pokemons_name_154','md_pokemons_name_154',5,4,1,1,154,47,20,1,1,5,0,1,1,0,0,'フォルム名',154,1,1,574,1033,0,0,8730,5400,5740,5400,5410,5400,3590,390);
INSERT INTO "pokemons" VALUES (79,'md_pokemons_name_157','md_pokemons_name_157',2,1,1,1,157,29,20,1,1,5,0,1,1,0,0,'フォルム名',157,1,1,528,1116,0,0,6190,9200,9520,9200,8940,9200,4860,1400);
INSERT INTO "pokemons" VALUES (80,'md_pokemons_name_160','md_pokemons_name_160',3,0,1,1,160,17,20,1,1,5,0,1,1,0,0,'フォルム名',160,1,1,574,1033,0,0,1070,2830,100,2830,3460,2830,7320,250);
INSERT INTO "pokemons" VALUES (81,'md_pokemons_name_176','md_pokemons_name_176',18,1,1,1,176,23,12,1,1,5,0,1,1,0,0,'フォルム名',176,1,1,76,161,0,0,5150,8960,9200,8960,8920,8960,8830,3700);
INSERT INTO "pokemons" VALUES (82,'md_pokemons_name_181','md_pokemons_name_181',4,1,1,1,181,39,20,1,1,5,0,1,1,0,0,'フォルム名',181,1,1,397,715,0,0,5030,170,7110,170,230,170,7380,7600);
INSERT INTO "pokemons" VALUES (83,'md_pokemons_name_196','md_pokemons_name_196',11,1,1,1,196,2,20,1,1,5,0,1,1,0,0,'フォルム名',196,1,1,443,1147,0,0,860,2690,5850,2690,6830,2690,6520,970);
INSERT INTO "pokemons" VALUES (84,'md_pokemons_name_197','md_pokemons_name_197',16,4,1,1,197,2,20,1,1,5,0,1,1,0,0,'フォルム名',197,1,1,583,894,0,0,7400,9250,6590,9250,5870,9250,4850,1080);
INSERT INTO "pokemons" VALUES (85,'md_pokemons_name_199','md_pokemons_name_199',3,1,1,1,199,16,20,1,1,5,0,1,1,0,0,'フォルム名',199,1,1,719,1103,0,0,9050,7990,7980,7990,4580,7990,6320,2740);
INSERT INTO "pokemons" VALUES (86,'md_pokemons_name_214','md_pokemons_name_214',12,4,1,1,214,86,16,1,1,5,0,1,1,0,0,'フォルム名',214,1,1,286,515,0,0,7660,3940,8290,3940,8180,3940,9900,8120);
INSERT INTO "pokemons" VALUES (87,'md_pokemons_name_246','md_pokemons_name_246',13,0,1,1,246,87,5,2,1,5,0,1,1,0,0,'フォルム名',246,1,1,30,54,0,0,9290,4690,2780,4690,4570,4690,6200,1890);
INSERT INTO "pokemons" VALUES (88,'md_pokemons_name_247','md_pokemons_name_247',13,0,1,1,247,87,12,2,1,5,0,1,1,0,0,'フォルム名',247,1,1,156,281,0,0,3210,6780,9920,6780,6900,6780,1860,2970);
INSERT INTO "pokemons" VALUES (89,'md_pokemons_name_248','md_pokemons_name_248',16,4,1,1,248,87,25,2,1,5,0,1,1,0,0,'フォルム名',248,1,1,1432,2578,0,0,6700,9210,9530,9210,1370,9210,3250,5360);
INSERT INTO "pokemons" VALUES (90,'md_pokemons_name_470','md_pokemons_name_470',5,4,1,1,470,2,20,1,1,5,0,1,1,0,0,'フォルム名',470,1,1,443,1147,0,0,9590,4720,7140,4720,2360,4720,3150,7230);
INSERT INTO "pokemons" VALUES (91,'md_pokemons_name_359','md_pokemons_name_359',16,4,1,1,359,91,16,1,1,5,0,1,1,0,0,'フォルム名',359,1,1,263,556,0,0,260,30,30,30,30,30,6260,4160);
INSERT INTO "pokemons" VALUES (92,'md_pokemons_name_700','md_pokemons_name_700',18,1,1,1,700,2,20,1,1,5,0,1,1,0,0,'フォルム名',700,1,1,583,894,0,0,5820,8610,6680,8610,1980,8610,1520,1420);
INSERT INTO "pokemons" VALUES (93,'md_pokemons_name_468','md_pokemons_name_468',18,1,1,1,468,23,22,1,1,5,0,1,1,0,0,'フォルム名',468,1,1,722,1300,0,0,5140,8940,9180,8940,8900,8940,8820,3710);
INSERT INTO "pokemons" VALUES (94,'md_pokemons_name_287','md_pokemons_name_287',1,1,1,1,287,94,5,1,1,5,0,1,1,0,0,'フォルム名',287,1,1,11,12,0,0,5570,7960,7020,7960,890,7960,250,9340);
INSERT INTO "pokemons" VALUES (95,'md_pokemons_name_288','md_pokemons_name_288',1,4,1,1,288,94,12,1,1,5,0,1,1,0,0,'フォルム名',288,1,1,122,187,0,0,9150,9460,9640,9460,5820,9460,4340,7320);
INSERT INTO "pokemons" VALUES (96,'md_pokemons_name_289','md_pokemons_name_289',1,1,1,1,289,94,22,1,1,5,0,1,1,0,0,'フォルム名',289,1,1,1108,1196,0,0,2480,7950,6120,7950,4720,7950,260,8450);
INSERT INTO "pokemons" VALUES (97,'md_pokemons_name_462','md_pokemons_name_462',17,0,1,1,462,65,22,1,1,5,0,1,1,0,0,'フォルム名',462,1,1,546,1415,0,0,3490,5160,5450,5160,5090,5160,7290,2550);
INSERT INTO "pokemons" VALUES (98,'md_pokemons_name_471','md_pokemons_name_471',6,0,1,1,471,2,20,1,1,5,0,1,1,0,0,'フォルム名',471,1,1,443,1147,0,0,2350,3340,3770,3340,2820,3340,610,2130);
INSERT INTO "pokemons" VALUES (99,'md_pokemons_name_334','md_pokemons_name_334',15,4,1,1,334,53,12,1,1,5,0,1,1,0,0,'フォルム名',334,1,1,170,306,0,0,4640,130,110,130,150,130,9100,30);
INSERT INTO "pokemons" VALUES (100,'md_pokemons_name_447','md_pokemons_name_447',7,0,1,1,447,101,5,1,1,5,0,1,1,0,0,'フォルム名',447,1,1,8,17,0,0,9600,7170,7960,7170,7370,7170,3120,2640);
INSERT INTO "pokemons" VALUES (101,'md_pokemons_name_448','md_pokemons_name_448',7,0,1,1,448,101,20,1,1,5,0,1,1,0,0,'フォルム名',448,1,1,443,1147,0,0,9690,4920,5220,4920,4880,4920,3090,7300);
INSERT INTO "pokemons" VALUES (102,'md_pokemons_name_363','md_pokemons_name_363',6,0,1,1,363,102,5,1,1,5,0,1,1,0,0,'フォルム名',363,1,1,11,12,0,0,4410,8220,6690,8220,7940,8220,1710,5230);
INSERT INTO "pokemons" VALUES (103,'md_pokemons_name_364','md_pokemons_name_364',6,0,1,1,364,102,12,1,1,5,0,1,1,0,0,'フォルム名',364,1,1,158,170,0,0,5260,7520,7130,7520,7920,7520,5840,5250);
INSERT INTO "pokemons" VALUES (104,'md_pokemons_name_365','md_pokemons_name_365',6,0,1,1,365,102,20,1,1,5,0,1,1,0,0,'フォルム名',365,1,1,468,586,0,0,5280,9590,4540,9590,9530,9590,5850,4370);
INSERT INTO "pokemons" VALUES (105,'md_pokemons_name_228','md_pokemons_name_228',16,4,1,1,228,105,5,1,1,5,0,1,1,0,0,'フォルム名',228,1,1,8,17,0,0,4990,4090,5490,4090,3310,4090,1920,8950);
INSERT INTO "pokemons" VALUES (106,'md_pokemons_name_229','md_pokemons_name_229',16,4,1,1,229,105,12,1,1,5,0,1,1,0,0,'フォルム名',229,1,1,144,303,0,0,7690,4080,2280,4080,3300,4080,9910,6930);
INSERT INTO "pokemons" VALUES (107,'md_pokemons_name_302','md_pokemons_name_302',16,4,1,1,302,107,16,1,1,5,0,1,1,0,0,'フォルム名',302,1,1,180,465,0,0,9130,7280,8990,7280,9960,7280,670,860);
INSERT INTO "pokemons" VALUES (109,'md_pokemons_name_439','md_pokemons_name_439',11,0,1,1,439,110,5,1,1,5,0,1,1,0,0,'フォルム名',439,1,1,7,20,0,0,8230,5590,6000,5590,6350,5590,10040,9950);
INSERT INTO "pokemons" VALUES (110,'md_pokemons_name_122','md_pokemons_name_122',11,1,1,1,122,110,12,1,1,5,0,1,1,0,0,'フォルム名',122,1,1,95,284,0,0,6610,5730,5320,5730,6360,5730,3380,9960);
INSERT INTO "pokemons" VALUES (111,'md_pokemons_name_173','md_pokemons_name_173',18,0,1,1,173,112,5,1,1,5,0,1,1,0,0,'フォルム名',173,1,1,25,27,0,0,6740,1470,5790,1470,6620,1470,5130,2060);
INSERT INTO "pokemons" VALUES (112,'md_pokemons_name_35','md_pokemons_name_35',18,1,1,1,35,112,7,1,1,5,0,1,1,0,0,'フォルム名',35,1,1,49,53,0,0,6870,1460,5820,1460,6610,1460,5150,2050);
INSERT INTO "pokemons" VALUES (113,'md_pokemons_name_36','md_pokemons_name_36',18,1,1,1,36,112,20,1,1,5,0,1,1,0,0,'フォルム名',36,1,1,677,847,0,0,6800,1450,5800,1450,6680,1450,9730,2040);
INSERT INTO "pokemons" VALUES (9001,'md_pokemons_name_9001','md_pokemons_name_9001_full',4,1,1,1,9001,1,7,1,1,5,0,201,1,0,0,'フォルム名',25,0,1,7,20,0,0,6791,6521,7231,6521,6631,6521,9711,2031);
INSERT INTO "pokemons" VALUES (114,'md_pokemons_name_353','md_pokemons_name_353',14,4,1,1,353,114,5,1,1,5,0,1,1,0,0,'フォルム名',353,1,1,8,17,0,0,1460,7750,7360,7750,8100,7750,6370,4430);
INSERT INTO "pokemons" VALUES (115,'md_pokemons_name_354','md_pokemons_name_354',14,4,1,1,354,114,16,1,1,5,0,1,1,0,0,'フォルム名',354,1,1,186,393,0,0,3700,480,910,480,520,480,1560,6750);
INSERT INTO "pokemons" VALUES (116,'md_pokemons_name_95','md_pokemons_name_95',13,0,1,1,95,116,16,1,1,5,0,1,1,0,0,'フォルム名',95,1,1,250,749,0,0,590,6120,6760,6120,6160,6120,3000,380);
INSERT INTO "pokemons" VALUES (117,'md_pokemons_name_208','md_pokemons_name_208',17,0,1,1,208,116,20,1,1,5,0,1,1,0,0,'フォルム名',208,1,1,1170,2473,0,0,6140,8400,8770,8400,8470,8400,130,530);
INSERT INTO "event_type_name" VALUES (1,'event_type_name_1');
INSERT INTO "event_type_name" VALUES (201,'event_type_name_201');
INSERT INTO "pokemon_pattern_name" VALUES (1,0,1,1,'md_pokemon_pattern_name_1');
INSERT INTO "pokemon_pattern_name" VALUES (2,25,1,201,'md_pokemon_pattern_name_2');
INSERT INTO "event_weekly_missions" VALUES (1,39,1,2,29,9001,1);
INSERT INTO "event_weekly_missions" VALUES (2,39,1,11,9,1,5);
INSERT INTO "event_weekly_missions" VALUES (3,39,1,16,10,1,5);
INSERT INTO "event_weekly_missions" VALUES (4,39,9,15,10,1,5);
INSERT INTO "event_weekly_missions" VALUES (5,39,10,100,10,1,5);
INSERT INTO "event_weekly_missions" VALUES (6,39,12,7,10,1,5);
INSERT INTO "event_weekly_missions" VALUES (7,39,7,3,9,1,5);
INSERT INTO "event_weekly_missions" VALUES (8,39,2,12,10,1,5);
INSERT INTO "event_weekly_missions" VALUES (9,63,1,2,29,2,1);
INSERT INTO "event_weekly_missions" VALUES (10,63,1,11,9,1,5);
INSERT INTO "event_weekly_missions" VALUES (11,63,1,16,18,2,20);
INSERT INTO "event_weekly_missions" VALUES (12,63,9,15,18,2,15);
INSERT INTO "event_weekly_missions" VALUES (13,63,10,100,18,2,15);
INSERT INTO "event_weekly_missions" VALUES (14,63,12,7,18,2,15);
INSERT INTO "event_weekly_missions" VALUES (15,63,7,3,9,1,5);
INSERT INTO "event_weekly_missions" VALUES (16,63,2,12,29,2,1);
INSERT INTO "pokedex_data" VALUES (1,1,4,60,25,'md_pokedex_data_category_name_25','md_pokedex_data_desc_25',1,1,0,1,1);
INSERT INTO "pokedex_data" VALUES (2,2,3,65,133,'md_pokedex_data_category_name_133','md_pokedex_data_desc_133',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (3,3,3,35,19,'md_pokedex_data_category_name_19','md_pokedex_data_desc_19',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (4,4,4,42,52,'md_pokedex_data_category_name_52','md_pokedex_data_desc_52',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (5,5,3,20,172,'md_pokedex_data_category_name_172','md_pokedex_data_desc_172',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (6,6,7,69,1,'md_pokedex_data_category_name_1','md_pokedex_data_desc_1',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (7,7,10,130,2,'md_pokedex_data_category_name_2','md_pokedex_data_desc_2',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (8,8,3,29,10,'md_pokedex_data_category_name_10','md_pokedex_data_desc_10',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (9,9,7,99,11,'md_pokedex_data_category_name_11','md_pokedex_data_desc_11',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (10,10,11,320,12,'md_pokedex_data_category_name_12','md_pokedex_data_desc_12',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (11,11,5,55,39,'md_pokedex_data_category_name_39','md_pokedex_data_desc_39',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (12,12,5,90,7,'md_pokedex_data_category_name_7','md_pokedex_data_desc_7',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (13,13,10,225,8,'md_pokedex_data_category_name_8','md_pokedex_data_desc_8',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (14,14,6,85,4,'md_pokedex_data_category_name_4','md_pokedex_data_desc_4',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (15,15,11,190,5,'md_pokedex_data_category_name_5','md_pokedex_data_desc_5',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (16,16,12,360,79,'md_pokedex_data_category_name_79','md_pokedex_data_desc_79',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (17,17,6,95,158,'md_pokedex_data_category_name_158','md_pokedex_data_desc_158',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (18,18,11,250,159,'md_pokedex_data_category_name_159','md_pokedex_data_desc_159',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (19,19,2,8,50,'md_pokedex_data_category_name_50','md_pokedex_data_desc_50',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (20,20,7,333,51,'md_pokedex_data_category_name_51','md_pokedex_data_desc_51',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (21,21,10,120,40,'md_pokedex_data_category_name_40','md_pokedex_data_desc_40',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (22,22,20,1000,3,'md_pokedex_data_category_name_3','md_pokedex_data_desc_3',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (23,23,3,15,175,'md_pokedex_data_category_name_175','md_pokedex_data_desc_175',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (24,24,4,200,74,'md_pokedex_data_category_name_74','md_pokedex_data_desc_74',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (25,25,10,1050,75,'md_pokedex_data_category_name_75','md_pokedex_data_desc_75',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (26,26,20,69,23,'md_pokedex_data_category_name_23','md_pokedex_data_desc_23',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (27,27,35,650,24,'md_pokedex_data_category_name_24','md_pokedex_data_desc_24',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (28,28,4,65,104,'md_pokedex_data_category_name_104','md_pokedex_data_desc_104',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (29,29,5,79,155,'md_pokedex_data_category_name_155','md_pokedex_data_desc_155',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (30,30,9,190,156,'md_pokedex_data_category_name_156','md_pokedex_data_desc_156',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (31,31,16,855,9,'md_pokedex_data_category_name_9','md_pokedex_data_desc_9',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (32,32,7,190,58,'md_pokedex_data_category_name_58','md_pokedex_data_desc_58',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (33,33,17,905,6,'md_pokedex_data_category_name_6','md_pokedex_data_desc_6',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (34,34,7,185,20,'md_pokedex_data_category_name_20','md_pokedex_data_desc_20',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (35,35,5,280,56,'md_pokedex_data_category_name_56','md_pokedex_data_desc_56',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (36,36,7,40,69,'md_pokedex_data_category_name_69','md_pokedex_data_desc_69',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (37,37,10,64,70,'md_pokedex_data_category_name_70','md_pokedex_data_desc_70',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (38,38,3,10,174,'md_pokedex_data_category_name_174','md_pokedex_data_desc_174',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (39,39,6,78,179,'md_pokedex_data_category_name_179','md_pokedex_data_desc_179',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (40,40,12,380,185,'md_pokedex_data_category_name_185','md_pokedex_data_desc_185',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (41,41,8,196,54,'md_pokedex_data_category_name_54','md_pokedex_data_desc_54',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (42,42,16,785,80,'md_pokedex_data_category_name_80','md_pokedex_data_desc_80',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (43,43,14,392,84,'md_pokedex_data_category_name_84','md_pokedex_data_desc_84',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (44,44,13,1,92,'md_pokedex_data_category_name_92','md_pokedex_data_desc_92',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (45,45,16,1,93,'md_pokedex_data_category_name_93','md_pokedex_data_desc_93',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (46,46,10,450,105,'md_pokedex_data_category_name_105','md_pokedex_data_desc_105',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (47,47,9,64,152,'md_pokedex_data_category_name_152','md_pokedex_data_desc_152',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (48,48,12,158,153,'md_pokedex_data_category_name_153','md_pokedex_data_desc_153',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (49,49,8,133,180,'md_pokedex_data_category_name_180','md_pokedex_data_desc_180',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (50,50,13,285,202,'md_pokedex_data_category_name_202','md_pokedex_data_desc_202',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (51,51,4,103,316,'md_pokedex_data_category_name_316','md_pokedex_data_desc_316',1,1,0,2,0);
INSERT INTO "pokedex_data" VALUES (52,52,17,800,317,'md_pokedex_data_category_name_317','md_pokedex_data_desc_317',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (53,53,4,12,333,'md_pokedex_data_category_name_333','md_pokedex_data_desc_333',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (54,54,6,140,360,'md_pokedex_data_category_name_360','md_pokedex_data_desc_360',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (55,55,5,150,438,'md_pokedex_data_category_name_438','md_pokedex_data_desc_438',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (56,56,7,230,453,'md_pokedex_data_category_name_453','md_pokedex_data_desc_453',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (57,57,13,444,454,'md_pokedex_data_category_name_454','md_pokedex_data_desc_454',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (58,58,8,300,26,'md_pokedex_data_category_name_26','md_pokedex_data_desc_26',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (59,59,10,320,53,'md_pokedex_data_category_name_53','md_pokedex_data_desc_53',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (60,60,17,766,55,'md_pokedex_data_category_name_55','md_pokedex_data_desc_55',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (61,61,10,320,57,'md_pokedex_data_category_name_57','md_pokedex_data_desc_57',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (62,62,19,1550,59,'md_pokedex_data_category_name_59','md_pokedex_data_desc_59',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (63,63,17,155,71,'md_pokedex_data_category_name_71','md_pokedex_data_desc_71',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (64,64,14,3000,76,'md_pokedex_data_category_name_76','md_pokedex_data_desc_76',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (65,65,3,60,81,'md_pokedex_data_category_name_81','md_pokedex_data_desc_81',0,0,1,3,0);
INSERT INTO "pokedex_data" VALUES (66,66,10,600,82,'md_pokedex_data_category_name_82','md_pokedex_data_desc_82',0,0,1,3,0);
INSERT INTO "pokedex_data" VALUES (67,67,18,852,85,'md_pokedex_data_category_name_85','md_pokedex_data_desc_85',1,1,0,2,0);
INSERT INTO "pokedex_data" VALUES (68,68,15,405,94,'md_pokedex_data_category_name_94','md_pokedex_data_desc_94',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (69,69,22,800,115,'md_pokedex_data_category_name_115','md_pokedex_data_desc_115',0,1,0,2,0);
INSERT INTO "pokedex_data" VALUES (70,70,15,550,127,'md_pokedex_data_category_name_127','md_pokedex_data_desc_127',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (71,71,3,40,132,'md_pokedex_data_category_name_132','md_pokedex_data_desc_132',0,0,1,3,0);
INSERT INTO "pokedex_data" VALUES (72,72,10,290,134,'md_pokedex_data_category_name_134','md_pokedex_data_desc_134',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (73,73,8,245,135,'md_pokedex_data_category_name_135','md_pokedex_data_desc_135',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (74,74,9,250,136,'md_pokedex_data_category_name_136','md_pokedex_data_desc_136',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (78,78,18,1005,154,'md_pokedex_data_category_name_154','md_pokedex_data_desc_154',1,1,0,2,0);
INSERT INTO "pokedex_data" VALUES (79,79,17,795,157,'md_pokedex_data_category_name_157','md_pokedex_data_desc_157',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (80,80,23,888,160,'md_pokedex_data_category_name_160','md_pokedex_data_desc_160',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (81,81,6,32,176,'md_pokedex_data_category_name_176','md_pokedex_data_desc_176',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (82,82,14,615,181,'md_pokedex_data_category_name_181','md_pokedex_data_desc_181',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (83,83,9,265,196,'md_pokedex_data_category_name_196','md_pokedex_data_desc_196',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (84,84,10,270,197,'md_pokedex_data_category_name_197','md_pokedex_data_desc_197',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (85,85,20,795,199,'md_pokedex_data_category_name_199','md_pokedex_data_desc_199',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (86,86,15,540,214,'md_pokedex_data_category_name_214','md_pokedex_data_desc_214',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (87,87,6,720,246,'md_pokedex_data_category_name_246','md_pokedex_data_desc_246',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (88,88,12,1520,247,'md_pokedex_data_category_name_247','md_pokedex_data_desc_247',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (89,89,20,2020,248,'md_pokedex_data_category_name_248','md_pokedex_data_desc_248',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (90,90,10,255,470,'md_pokedex_data_category_name_470','md_pokedex_data_desc_470',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (91,91,12,470,359,'md_pokedex_data_category_name_359','md_pokedex_data_desc_359',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (92,92,10,235,700,'md_pokedex_data_category_name_700','md_pokedex_data_desc_700',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (93,93,15,380,468,'md_pokedex_data_category_name_468','md_pokedex_data_desc_468',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (94,94,8,240,287,'md_pokedex_data_category_name_287','md_pokedex_data_desc_287',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (95,95,14,465,288,'md_pokedex_data_category_name_288','md_pokedex_data_desc_288',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (96,96,20,1305,289,'md_pokedex_data_category_name_289','md_pokedex_data_desc_289',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (97,97,12,1800,462,'md_pokedex_data_category_name_462','md_pokedex_data_desc_462',0,0,1,3,0);
INSERT INTO "pokedex_data" VALUES (98,98,8,259,471,'md_pokedex_data_category_name_471','md_pokedex_data_desc_471',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (99,99,11,206,334,'md_pokedex_data_category_name_334','md_pokedex_data_desc_334',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (100,100,7,202,447,'md_pokedex_data_category_name_447','md_pokedex_data_desc_447',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (101,101,12,540,448,'md_pokedex_data_category_name_448','md_pokedex_data_desc_448',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (102,102,8,395,363,'md_pokedex_data_category_name_363','md_pokedex_data_desc_363',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (103,103,11,876,364,'md_pokedex_data_category_name_364','md_pokedex_data_desc_364',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (104,104,14,1506,365,'md_pokedex_data_category_name_365','md_pokedex_data_desc_365',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (105,105,6,108,228,'md_pokedex_data_category_name_228','md_pokedex_data_desc_228',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (106,106,14,350,229,'md_pokedex_data_category_name_229','md_pokedex_data_desc_229',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (107,107,5,110,302,'md_pokedex_data_category_name_302','md_pokedex_data_desc_302',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (109,109,6,130,439,'md_pokedex_data_category_name_439','md_pokedex_data_desc_439',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (110,110,14,568,122,'md_pokedex_data_category_name_122','md_pokedex_data_desc_122',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (111,111,3,30,173,'md_pokedex_data_category_name_173','md_pokedex_data_desc_173',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (112,112,6,75,35,'md_pokedex_data_category_name_35','md_pokedex_data_desc_35',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (113,113,13,400,36,'md_pokedex_data_category_name_36','md_pokedex_data_desc_36',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (9001,9001,4,60,25,'md_pokedex_data_category_name_25','md_pokedex_data_desc_25',1,1,0,1,1);
INSERT INTO "pokedex_data" VALUES (114,114,6,23,353,'md_pokedex_data_category_name_353','md_pokedex_data_desc_353',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (115,115,11,125,354,'md_pokedex_data_category_name_354','md_pokedex_data_desc_354',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (116,116,88,2100,95,'md_pokedex_data_category_name_95','md_pokedex_data_desc_95',1,1,0,1,0);
INSERT INTO "pokedex_data" VALUES (117,117,92,4000,208,'md_pokedex_data_category_name_208','md_pokedex_data_desc_208',1,1,0,1,0);
INSERT INTO "pokemon_evolutions" VALUES (1,1,58,2,80,0,4,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (2,2,72,2,80,0,3,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (3,3,34,1,40,15,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (4,4,59,1,40,21,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (5,5,1,5,20,0,0,0,3000,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (6,6,7,1,40,12,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (7,7,22,1,80,24,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (8,8,9,1,40,5,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (9,9,10,1,80,8,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (10,11,21,2,80,0,7,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (11,12,13,1,40,12,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (12,13,31,1,80,27,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (13,14,15,1,40,12,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (14,15,33,1,80,27,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (15,16,42,1,40,28,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (16,17,18,1,40,14,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (17,18,80,1,80,23,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (18,19,20,1,40,20,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (19,23,81,5,20,0,0,0,3000,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (20,24,25,1,40,19,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (21,25,64,3,80,0,1,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (22,26,27,1,40,17,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (23,28,46,1,40,21,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (24,29,30,1,40,11,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (25,30,79,1,80,27,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (26,32,62,2,80,0,2,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (27,35,61,1,40,21,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (28,36,37,1,40,16,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (29,37,63,2,80,0,5,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (30,38,11,5,20,0,0,0,3000,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (31,39,49,1,40,11,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (32,41,60,1,40,25,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (33,16,85,4,80,0,'11,1','1,1',0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (34,43,67,1,40,23,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (35,44,45,1,40,19,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (36,45,68,3,80,0,1,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (37,47,48,1,40,12,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (38,48,78,1,80,24,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (39,49,82,1,80,23,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (40,51,52,1,40,20,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (41,53,99,1,40,26,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (42,54,50,1,20,11,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (43,55,40,1,20,12,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (44,56,57,1,40,28,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (45,65,66,1,40,23,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (46,66,97,2,80,0,4,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (49,81,93,2,80,0,8,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (50,87,88,1,40,23,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (51,88,89,1,100,41,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (52,94,95,1,40,14,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (53,95,96,1,80,27,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (54,100,101,7,80,0,0,0,9000,'1,2,3',0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (55,102,103,1,40,24,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (56,103,104,1,80,33,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (57,105,106,1,40,18,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (58,2,73,2,80,0,4,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (59,2,74,2,80,0,2,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (60,2,84,7,80,0,0,0,9000,4,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (61,2,83,7,80,0,0,0,9000,'1,2,3',0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (62,2,90,2,80,0,5,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (63,2,98,2,80,0,6,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (64,2,92,5,80,0,0,0,9000,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (65,109,110,1,40,12,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (66,111,112,5,20,0,0,0,3000,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (67,112,113,2,80,0,7,1,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (68,114,115,1,40,28,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_evolutions" VALUES (69,116,117,4,80,0,'9,1','1,1',0,0,0,0,0,0);
INSERT INTO "evolution_items" VALUES (1,'md_evolution_items_name_1','md_evolution_items_desc_1',1);
INSERT INTO "evolution_items" VALUES (2,'md_evolution_items_name_2','md_evolution_items_desc_2',0);
INSERT INTO "evolution_items" VALUES (3,'md_evolution_items_name_3','md_evolution_items_desc_3',0);
INSERT INTO "evolution_items" VALUES (4,'md_evolution_items_name_4','md_evolution_items_desc_4',0);
INSERT INTO "evolution_items" VALUES (5,'md_evolution_items_name_5','md_evolution_items_desc_5',0);
INSERT INTO "evolution_items" VALUES (6,'md_evolution_items_name_6','md_evolution_items_desc_6',0);
INSERT INTO "evolution_items" VALUES (7,'md_evolution_items_name_7','md_evolution_items_desc_7',0);
INSERT INTO "evolution_items" VALUES (8,'md_evolution_items_name_8','md_evolution_items_desc_8',0);
INSERT INTO "evolution_items" VALUES (9,'md_evolution_items_name_9','md_evolution_items_desc_9',0);
INSERT INTO "evolution_items" VALUES (10,'md_evolution_items_name_10','md_evolution_items_desc_10',0);
INSERT INTO "evolution_items" VALUES (11,'md_evolution_items_name_11','md_evolution_items_desc_11',0);
INSERT INTO "all_purpose_candies" VALUES (1,'md_all_purpose_candies_name_1',3,'md_all_purpose_candies_desc_1');
INSERT INTO "all_purpose_candies" VALUES (2,'md_all_purpose_candies_name_2',20,'md_all_purpose_candies_desc_2');
INSERT INTO "all_purpose_candies" VALUES (3,'md_all_purpose_candies_name_3',100,'md_all_purpose_candies_desc_3');
INSERT INTO "fields" VALUES (1,'md_fields_name_1','md_fields_name_indirect_1','md_fields_desc_1','1,2,4,5,7,8,10,11,13,14,16,17,19,20,22,23,25,26,28,29,30,31,32,34,35,37,38,40,41,43,44,46,47,49,50,55,56,58,59,61,62,64,65,67,68,70,71,73,74,76,77,79,80,82,83,85,86,91,92,94,95,97,98,100,101,103,104,106,107,109,110,112,113,115,116,118,119,121,122,124,125,127,128,130,131,133,134,136,137,139,140,145,146,148,149,151,152,154,155,157,158,160,161,163,164,166,167,169,170,172,173,175,176,181,182,187,188,193,194,195,196,197,198,199,200,205,206,208,209,211,212,213,217,218,219,241,242,256,257,259,260,268,271,272,274,275,276,277,278,279,280,281,283,284,286,287,289,290,291,298,299,304,305,313,314,322,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,352,353,354,356,357,358,359,360,362,363,364,365,367,368,369,370,371,372,374,379,382,385,388,389,390,391,392,393,395,399,400,401,403,406,407,408,410,411,412,414,415,416,419,420,422,423,424,427,436,437,439,440,441,443,444,445,447,10001,10002,448,449,451,452,454','0,0,0',1,1400,'1,2,3');
INSERT INTO "fields" VALUES (2,'md_fields_name_2','md_fields_name_indirect_2','md_fields_desc_2','1,2,3,4,5,6,7,8,9,22,23,24,31,32,33,34,35,36,37,38,39,46,47,48,49,50,51,52,53,54,55,56,57,61,62,63,76,77,78,79,80,81,91,92,93,94,95,96,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,118,119,120,121,122,123,124,125,126,139,140,141,151,152,153,163,164,165,166,167,168,169,170,171,178,179,180,181,182,183,205,206,207,208,209,210,211,212,213,214,215,216,238,239,240,253,254,255,256,257,258,304,305,306,323,334,335,336,337,340,341,342,343,344,346,347,350,351,352,353,354,356,357,362,363,369,370,371,372,373,379,385,386,387,389,395,398,400,410,416,419,422,423,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447','3,18,10',2,2500,'1,2');
INSERT INTO "fields" VALUES (3,'md_fields_name_3','md_fields_name_indirect_3','md_fields_desc_3','4,5,6,7,8,9,31,32,33,40,41,42,43,44,45,55,56,57,58,59,60,61,62,63,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,94,95,96,97,98,99,100,101,102,112,113,114,130,131,132,133,134,135,136,137,138,148,149,150,151,152,153,154,155,156,160,161,162,166,167,168,169,170,171,190,191,192,202,203,204,211,212,220,247,248,249,250,251,252,259,260,261,262,263,264,265,266,267,298,299,300,313,314,315,319,320,321,324,331,332,333,340,341,342,343,346,347,354,359,360,361,366,367,368,371,372,382,389,390,396,397,399,401,403,404,405,409,410,411,415,420,422,423,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460','2,9,13',3,4000,'1,2');
INSERT INTO "fields" VALUES (4,'md_fields_name_4','md_fields_name_indirect_4','md_fields_desc_4','4,5,6,7,8,9,31,32,33,46,47,48,67,68,69,70,71,72,82,83,84,100,101,102,103,104,105,106,107,108,115,116,117,121,122,123,124,125,126,130,131,132,133,134,135,136,137,138,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,166,167,168,169,170,171,181,182,183,211,212,241,242,243,244,245,246,271,272,273,280,281,282,283,284,285,286,287,288,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,325,340,341,346,350,352,353,356,359,362,363,367,368,371,372,390,391,392,393,394,399,406,407,408,410,411,412,413,414,415,416,417,418,420,421,422,423,426,436,437,438,439,440,441,442,443,444,445,446,447','6,1,16',4,6400,'1,2');
INSERT INTO "color_codes" VALUES (1,'ffffff');
INSERT INTO "field_sleeping_face_table" VALUES (1,1);
INSERT INTO "field_sleeping_face_table" VALUES (2,2);
INSERT INTO "field_sleeping_face_table" VALUES (3,3);
INSERT INTO "field_sleeping_face_table" VALUES (4,4);
INSERT INTO "field_sleeping_face_table" VALUES (5,5);
INSERT INTO "field_sleeping_face_table" VALUES (6,6);
INSERT INTO "field_sleeping_face_table" VALUES (7,7);
INSERT INTO "field_sleeping_face_table" VALUES (8,8);
INSERT INTO "field_sleeping_face_table" VALUES (9,9);
INSERT INTO "field_sleeping_face_table" VALUES (10,10);
INSERT INTO "field_sleeping_face_table" VALUES (11,11);
INSERT INTO "field_sleeping_face_table" VALUES (12,12);
INSERT INTO "field_sleeping_face_table" VALUES (13,13);
INSERT INTO "field_sleeping_face_table" VALUES (14,14);
INSERT INTO "field_sleeping_face_table" VALUES (15,15);
INSERT INTO "field_sleeping_face_table" VALUES (16,16);
INSERT INTO "field_sleeping_face_table" VALUES (17,17);
INSERT INTO "field_sleeping_face_table" VALUES (18,18);
INSERT INTO "field_sleeping_face_table" VALUES (19,19);
INSERT INTO "field_sleeping_face_table" VALUES (20,20);
INSERT INTO "field_sleeping_face_table" VALUES (21,21);
INSERT INTO "field_sleeping_face_table" VALUES (22,22);
INSERT INTO "field_sleeping_face_table" VALUES (23,23);
INSERT INTO "field_sleeping_face_table" VALUES (24,24);
INSERT INTO "field_sleeping_face_table" VALUES (25,25);
INSERT INTO "field_sleeping_face_table" VALUES (26,26);
INSERT INTO "field_sleeping_face_table" VALUES (27,27);
INSERT INTO "field_sleeping_face_table" VALUES (28,28);
INSERT INTO "field_sleeping_face_table" VALUES (29,29);
INSERT INTO "field_sleeping_face_table" VALUES (30,30);
INSERT INTO "field_sleeping_face_table" VALUES (31,31);
INSERT INTO "field_sleeping_face_table" VALUES (32,32);
INSERT INTO "field_sleeping_face_table" VALUES (33,33);
INSERT INTO "field_sleeping_face_table" VALUES (34,34);
INSERT INTO "field_sleeping_face_table" VALUES (35,35);
INSERT INTO "field_sleeping_face_table" VALUES (36,36);
INSERT INTO "field_sleeping_face_table" VALUES (37,37);
INSERT INTO "field_sleeping_face_table" VALUES (38,38);
INSERT INTO "field_sleeping_face_table" VALUES (39,39);
INSERT INTO "field_sleeping_face_table" VALUES (40,40);
INSERT INTO "field_sleeping_face_table" VALUES (41,41);
INSERT INTO "field_sleeping_face_table" VALUES (42,42);
INSERT INTO "field_sleeping_face_table" VALUES (43,43);
INSERT INTO "field_sleeping_face_table" VALUES (44,44);
INSERT INTO "field_sleeping_face_table" VALUES (45,45);
INSERT INTO "field_sleeping_face_table" VALUES (46,46);
INSERT INTO "field_sleeping_face_table" VALUES (47,47);
INSERT INTO "field_sleeping_face_table" VALUES (48,48);
INSERT INTO "field_sleeping_face_table" VALUES (49,49);
INSERT INTO "field_sleeping_face_table" VALUES (50,50);
INSERT INTO "field_sleeping_face_table" VALUES (51,51);
INSERT INTO "field_sleeping_face_table" VALUES (52,52);
INSERT INTO "field_sleeping_face_table" VALUES (53,53);
INSERT INTO "field_sleeping_face_table" VALUES (54,54);
INSERT INTO "field_sleeping_face_table" VALUES (55,55);
INSERT INTO "field_sleeping_face_table" VALUES (56,56);
INSERT INTO "field_sleeping_face_table" VALUES (57,57);
INSERT INTO "field_sleeping_face_table" VALUES (58,58);
INSERT INTO "field_sleeping_face_table" VALUES (59,59);
INSERT INTO "field_sleeping_face_table" VALUES (60,60);
INSERT INTO "field_sleeping_face_table" VALUES (61,61);
INSERT INTO "field_sleeping_face_table" VALUES (62,62);
INSERT INTO "field_sleeping_face_table" VALUES (63,63);
INSERT INTO "field_sleeping_face_table" VALUES (64,64);
INSERT INTO "field_sleeping_face_table" VALUES (65,65);
INSERT INTO "field_sleeping_face_table" VALUES (66,66);
INSERT INTO "field_sleeping_face_table" VALUES (67,67);
INSERT INTO "field_sleeping_face_table" VALUES (68,68);
INSERT INTO "field_sleeping_face_table" VALUES (69,69);
INSERT INTO "field_sleeping_face_table" VALUES (70,70);
INSERT INTO "field_sleeping_face_table" VALUES (71,71);
INSERT INTO "field_sleeping_face_table" VALUES (72,72);
INSERT INTO "field_sleeping_face_table" VALUES (73,73);
INSERT INTO "field_sleeping_face_table" VALUES (74,74);
INSERT INTO "field_sleeping_face_table" VALUES (75,75);
INSERT INTO "field_sleeping_face_table" VALUES (76,76);
INSERT INTO "field_sleeping_face_table" VALUES (77,77);
INSERT INTO "field_sleeping_face_table" VALUES (78,78);
INSERT INTO "field_sleeping_face_table" VALUES (79,79);
INSERT INTO "field_sleeping_face_table" VALUES (80,80);
INSERT INTO "field_sleeping_face_table" VALUES (81,81);
INSERT INTO "field_sleeping_face_table" VALUES (82,82);
INSERT INTO "field_sleeping_face_table" VALUES (83,83);
INSERT INTO "field_sleeping_face_table" VALUES (84,84);
INSERT INTO "field_sleeping_face_table" VALUES (85,85);
INSERT INTO "field_sleeping_face_table" VALUES (86,86);
INSERT INTO "field_sleeping_face_table" VALUES (87,87);
INSERT INTO "field_sleeping_face_table" VALUES (88,88);
INSERT INTO "field_sleeping_face_table" VALUES (89,89);
INSERT INTO "field_sleeping_face_table" VALUES (90,90);
INSERT INTO "field_sleeping_face_table" VALUES (91,91);
INSERT INTO "field_sleeping_face_table" VALUES (92,92);
INSERT INTO "field_sleeping_face_table" VALUES (93,93);
INSERT INTO "field_sleeping_face_table" VALUES (94,94);
INSERT INTO "field_sleeping_face_table" VALUES (95,95);
INSERT INTO "field_sleeping_face_table" VALUES (96,96);
INSERT INTO "field_sleeping_face_table" VALUES (97,97);
INSERT INTO "field_sleeping_face_table" VALUES (98,98);
INSERT INTO "field_sleeping_face_table" VALUES (99,99);
INSERT INTO "field_sleeping_face_table" VALUES (100,100);
INSERT INTO "field_sleeping_face_table" VALUES (101,101);
INSERT INTO "field_sleeping_face_table" VALUES (102,102);
INSERT INTO "field_sleeping_face_table" VALUES (103,103);
INSERT INTO "field_sleeping_face_table" VALUES (104,104);
INSERT INTO "field_sleeping_face_table" VALUES (105,105);
INSERT INTO "field_sleeping_face_table" VALUES (106,106);
INSERT INTO "field_sleeping_face_table" VALUES (107,107);
INSERT INTO "field_sleeping_face_table" VALUES (108,108);
INSERT INTO "field_sleeping_face_table" VALUES (109,109);
INSERT INTO "field_sleeping_face_table" VALUES (110,110);
INSERT INTO "field_sleeping_face_table" VALUES (111,111);
INSERT INTO "field_sleeping_face_table" VALUES (112,112);
INSERT INTO "field_sleeping_face_table" VALUES (113,113);
INSERT INTO "field_sleeping_face_table" VALUES (114,114);
INSERT INTO "field_sleeping_face_table" VALUES (115,115);
INSERT INTO "field_sleeping_face_table" VALUES (116,116);
INSERT INTO "field_sleeping_face_table" VALUES (117,117);
INSERT INTO "field_sleeping_face_table" VALUES (118,118);
INSERT INTO "field_sleeping_face_table" VALUES (119,119);
INSERT INTO "field_sleeping_face_table" VALUES (120,120);
INSERT INTO "field_sleeping_face_table" VALUES (121,121);
INSERT INTO "field_sleeping_face_table" VALUES (122,122);
INSERT INTO "field_sleeping_face_table" VALUES (123,123);
INSERT INTO "field_sleeping_face_table" VALUES (124,124);
INSERT INTO "field_sleeping_face_table" VALUES (125,125);
INSERT INTO "field_sleeping_face_table" VALUES (126,126);
INSERT INTO "field_sleeping_face_table" VALUES (127,127);
INSERT INTO "field_sleeping_face_table" VALUES (128,128);
INSERT INTO "field_sleeping_face_table" VALUES (129,129);
INSERT INTO "field_sleeping_face_table" VALUES (130,130);
INSERT INTO "field_sleeping_face_table" VALUES (131,131);
INSERT INTO "field_sleeping_face_table" VALUES (132,132);
INSERT INTO "field_sleeping_face_table" VALUES (133,133);
INSERT INTO "field_sleeping_face_table" VALUES (134,134);
INSERT INTO "field_sleeping_face_table" VALUES (135,135);
INSERT INTO "field_sleeping_face_table" VALUES (136,136);
INSERT INTO "field_sleeping_face_table" VALUES (137,137);
INSERT INTO "field_sleeping_face_table" VALUES (138,138);
INSERT INTO "field_sleeping_face_table" VALUES (139,139);
INSERT INTO "field_sleeping_face_table" VALUES (140,140);
INSERT INTO "field_sleeping_face_table" VALUES (141,141);
INSERT INTO "field_sleeping_face_table" VALUES (142,142);
INSERT INTO "field_sleeping_face_table" VALUES (143,143);
INSERT INTO "field_sleeping_face_table" VALUES (144,144);
INSERT INTO "field_sleeping_face_table" VALUES (145,145);
INSERT INTO "field_sleeping_face_table" VALUES (146,146);
INSERT INTO "field_sleeping_face_table" VALUES (147,147);
INSERT INTO "field_sleeping_face_table" VALUES (148,148);
INSERT INTO "field_sleeping_face_table" VALUES (149,149);
INSERT INTO "field_sleeping_face_table" VALUES (150,150);
INSERT INTO "field_sleeping_face_table" VALUES (151,151);
INSERT INTO "field_sleeping_face_table" VALUES (152,152);
INSERT INTO "field_sleeping_face_table" VALUES (153,153);
INSERT INTO "field_sleeping_face_table" VALUES (154,154);
INSERT INTO "field_sleeping_face_table" VALUES (155,155);
INSERT INTO "field_sleeping_face_table" VALUES (156,156);
INSERT INTO "field_sleeping_face_table" VALUES (157,157);
INSERT INTO "field_sleeping_face_table" VALUES (158,158);
INSERT INTO "field_sleeping_face_table" VALUES (159,159);
INSERT INTO "field_sleeping_face_table" VALUES (160,160);
INSERT INTO "field_sleeping_face_table" VALUES (161,161);
INSERT INTO "field_sleeping_face_table" VALUES (162,162);
INSERT INTO "field_sleeping_face_table" VALUES (163,163);
INSERT INTO "field_sleeping_face_table" VALUES (164,164);
INSERT INTO "field_sleeping_face_table" VALUES (165,165);
INSERT INTO "field_sleeping_face_table" VALUES (166,166);
INSERT INTO "field_sleeping_face_table" VALUES (167,167);
INSERT INTO "field_sleeping_face_table" VALUES (168,168);
INSERT INTO "field_sleeping_face_table" VALUES (169,169);
INSERT INTO "field_sleeping_face_table" VALUES (170,170);
INSERT INTO "field_sleeping_face_table" VALUES (171,171);
INSERT INTO "field_sleeping_face_table" VALUES (172,172);
INSERT INTO "field_sleeping_face_table" VALUES (173,173);
INSERT INTO "field_sleeping_face_table" VALUES (174,174);
INSERT INTO "field_sleeping_face_table" VALUES (175,175);
INSERT INTO "field_sleeping_face_table" VALUES (176,176);
INSERT INTO "field_sleeping_face_table" VALUES (177,177);
INSERT INTO "field_sleeping_face_table" VALUES (178,178);
INSERT INTO "field_sleeping_face_table" VALUES (179,179);
INSERT INTO "field_sleeping_face_table" VALUES (180,180);
INSERT INTO "field_sleeping_face_table" VALUES (181,181);
INSERT INTO "field_sleeping_face_table" VALUES (182,182);
INSERT INTO "field_sleeping_face_table" VALUES (183,183);
INSERT INTO "field_sleeping_face_table" VALUES (184,184);
INSERT INTO "field_sleeping_face_table" VALUES (185,185);
INSERT INTO "field_sleeping_face_table" VALUES (186,186);
INSERT INTO "field_sleeping_face_table" VALUES (187,187);
INSERT INTO "field_sleeping_face_table" VALUES (188,188);
INSERT INTO "field_sleeping_face_table" VALUES (189,189);
INSERT INTO "field_sleeping_face_table" VALUES (190,190);
INSERT INTO "field_sleeping_face_table" VALUES (191,191);
INSERT INTO "field_sleeping_face_table" VALUES (192,192);
INSERT INTO "field_sleeping_face_table" VALUES (193,193);
INSERT INTO "field_sleeping_face_table" VALUES (194,194);
INSERT INTO "field_sleeping_face_table" VALUES (195,195);
INSERT INTO "field_sleeping_face_table" VALUES (196,196);
INSERT INTO "field_sleeping_face_table" VALUES (197,197);
INSERT INTO "field_sleeping_face_table" VALUES (198,198);
INSERT INTO "field_sleeping_face_table" VALUES (199,199);
INSERT INTO "field_sleeping_face_table" VALUES (200,200);
INSERT INTO "field_sleeping_face_table" VALUES (201,201);
INSERT INTO "field_sleeping_face_table" VALUES (202,202);
INSERT INTO "field_sleeping_face_table" VALUES (203,203);
INSERT INTO "field_sleeping_face_table" VALUES (204,204);
INSERT INTO "field_sleeping_face_table" VALUES (205,205);
INSERT INTO "field_sleeping_face_table" VALUES (206,206);
INSERT INTO "field_sleeping_face_table" VALUES (207,207);
INSERT INTO "field_sleeping_face_table" VALUES (208,208);
INSERT INTO "field_sleeping_face_table" VALUES (209,209);
INSERT INTO "field_sleeping_face_table" VALUES (210,210);
INSERT INTO "field_sleeping_face_table" VALUES (211,211);
INSERT INTO "field_sleeping_face_table" VALUES (212,212);
INSERT INTO "field_sleeping_face_table" VALUES (213,213);
INSERT INTO "field_sleeping_face_table" VALUES (214,214);
INSERT INTO "field_sleeping_face_table" VALUES (215,215);
INSERT INTO "field_sleeping_face_table" VALUES (216,216);
INSERT INTO "field_sleeping_face_table" VALUES (217,217);
INSERT INTO "field_sleeping_face_table" VALUES (218,218);
INSERT INTO "field_sleeping_face_table" VALUES (219,219);
INSERT INTO "field_sleeping_face_table" VALUES (220,220);
INSERT INTO "field_sleeping_face_table" VALUES (221,221);
INSERT INTO "field_sleeping_face_table" VALUES (222,222);
INSERT INTO "field_sleeping_face_table" VALUES (232,232);
INSERT INTO "field_sleeping_face_table" VALUES (233,233);
INSERT INTO "field_sleeping_face_table" VALUES (234,234);
INSERT INTO "field_sleeping_face_table" VALUES (235,235);
INSERT INTO "field_sleeping_face_table" VALUES (236,236);
INSERT INTO "field_sleeping_face_table" VALUES (237,237);
INSERT INTO "field_sleeping_face_table" VALUES (238,238);
INSERT INTO "field_sleeping_face_table" VALUES (239,239);
INSERT INTO "field_sleeping_face_table" VALUES (240,240);
INSERT INTO "field_sleeping_face_table" VALUES (241,241);
INSERT INTO "field_sleeping_face_table" VALUES (242,242);
INSERT INTO "field_sleeping_face_table" VALUES (243,243);
INSERT INTO "field_sleeping_face_table" VALUES (244,244);
INSERT INTO "field_sleeping_face_table" VALUES (245,245);
INSERT INTO "field_sleeping_face_table" VALUES (246,246);
INSERT INTO "field_sleeping_face_table" VALUES (247,247);
INSERT INTO "field_sleeping_face_table" VALUES (248,248);
INSERT INTO "field_sleeping_face_table" VALUES (249,249);
INSERT INTO "field_sleeping_face_table" VALUES (250,250);
INSERT INTO "field_sleeping_face_table" VALUES (251,251);
INSERT INTO "field_sleeping_face_table" VALUES (252,252);
INSERT INTO "field_sleeping_face_table" VALUES (253,253);
INSERT INTO "field_sleeping_face_table" VALUES (254,254);
INSERT INTO "field_sleeping_face_table" VALUES (255,255);
INSERT INTO "field_sleeping_face_table" VALUES (256,256);
INSERT INTO "field_sleeping_face_table" VALUES (257,257);
INSERT INTO "field_sleeping_face_table" VALUES (258,258);
INSERT INTO "field_sleeping_face_table" VALUES (259,259);
INSERT INTO "field_sleeping_face_table" VALUES (260,260);
INSERT INTO "field_sleeping_face_table" VALUES (261,261);
INSERT INTO "field_sleeping_face_table" VALUES (262,262);
INSERT INTO "field_sleeping_face_table" VALUES (263,263);
INSERT INTO "field_sleeping_face_table" VALUES (264,264);
INSERT INTO "field_sleeping_face_table" VALUES (265,265);
INSERT INTO "field_sleeping_face_table" VALUES (266,266);
INSERT INTO "field_sleeping_face_table" VALUES (267,267);
INSERT INTO "field_sleeping_face_table" VALUES (268,268);
INSERT INTO "field_sleeping_face_table" VALUES (269,269);
INSERT INTO "field_sleeping_face_table" VALUES (270,270);
INSERT INTO "field_sleeping_face_table" VALUES (271,271);
INSERT INTO "field_sleeping_face_table" VALUES (272,272);
INSERT INTO "field_sleeping_face_table" VALUES (273,273);
INSERT INTO "field_sleeping_face_table" VALUES (274,274);
INSERT INTO "field_sleeping_face_table" VALUES (275,275);
INSERT INTO "field_sleeping_face_table" VALUES (276,276);
INSERT INTO "field_sleeping_face_table" VALUES (277,277);
INSERT INTO "field_sleeping_face_table" VALUES (278,278);
INSERT INTO "field_sleeping_face_table" VALUES (279,279);
INSERT INTO "field_sleeping_face_table" VALUES (280,280);
INSERT INTO "field_sleeping_face_table" VALUES (281,281);
INSERT INTO "field_sleeping_face_table" VALUES (282,282);
INSERT INTO "field_sleeping_face_table" VALUES (283,283);
INSERT INTO "field_sleeping_face_table" VALUES (284,284);
INSERT INTO "field_sleeping_face_table" VALUES (285,285);
INSERT INTO "field_sleeping_face_table" VALUES (286,286);
INSERT INTO "field_sleeping_face_table" VALUES (287,287);
INSERT INTO "field_sleeping_face_table" VALUES (288,288);
INSERT INTO "field_sleeping_face_table" VALUES (289,289);
INSERT INTO "field_sleeping_face_table" VALUES (290,290);
INSERT INTO "field_sleeping_face_table" VALUES (291,291);
INSERT INTO "field_sleeping_face_table" VALUES (292,292);
INSERT INTO "field_sleeping_face_table" VALUES (293,293);
INSERT INTO "field_sleeping_face_table" VALUES (294,294);
INSERT INTO "field_sleeping_face_table" VALUES (295,295);
INSERT INTO "field_sleeping_face_table" VALUES (296,296);
INSERT INTO "field_sleeping_face_table" VALUES (297,297);
INSERT INTO "field_sleeping_face_table" VALUES (298,298);
INSERT INTO "field_sleeping_face_table" VALUES (299,299);
INSERT INTO "field_sleeping_face_table" VALUES (300,300);
INSERT INTO "field_sleeping_face_table" VALUES (301,301);
INSERT INTO "field_sleeping_face_table" VALUES (302,302);
INSERT INTO "field_sleeping_face_table" VALUES (303,303);
INSERT INTO "field_sleeping_face_table" VALUES (304,304);
INSERT INTO "field_sleeping_face_table" VALUES (305,305);
INSERT INTO "field_sleeping_face_table" VALUES (306,306);
INSERT INTO "field_sleeping_face_table" VALUES (307,307);
INSERT INTO "field_sleeping_face_table" VALUES (308,308);
INSERT INTO "field_sleeping_face_table" VALUES (309,309);
INSERT INTO "field_sleeping_face_table" VALUES (310,310);
INSERT INTO "field_sleeping_face_table" VALUES (311,311);
INSERT INTO "field_sleeping_face_table" VALUES (312,312);
INSERT INTO "field_sleeping_face_table" VALUES (313,313);
INSERT INTO "field_sleeping_face_table" VALUES (314,314);
INSERT INTO "field_sleeping_face_table" VALUES (315,315);
INSERT INTO "field_sleeping_face_table" VALUES (316,316);
INSERT INTO "field_sleeping_face_table" VALUES (317,317);
INSERT INTO "field_sleeping_face_table" VALUES (318,318);
INSERT INTO "field_sleeping_face_table" VALUES (319,319);
INSERT INTO "field_sleeping_face_table" VALUES (320,320);
INSERT INTO "field_sleeping_face_table" VALUES (321,321);
INSERT INTO "field_sleeping_face_table" VALUES (322,322);
INSERT INTO "field_sleeping_face_table" VALUES (323,323);
INSERT INTO "field_sleeping_face_table" VALUES (324,324);
INSERT INTO "field_sleeping_face_table" VALUES (325,325);
INSERT INTO "field_sleeping_face_table" VALUES (326,326);
INSERT INTO "field_sleeping_face_table" VALUES (327,327);
INSERT INTO "field_sleeping_face_table" VALUES (328,328);
INSERT INTO "field_sleeping_face_table" VALUES (329,329);
INSERT INTO "field_sleeping_face_table" VALUES (330,330);
INSERT INTO "field_sleeping_face_table" VALUES (331,331);
INSERT INTO "field_sleeping_face_table" VALUES (332,332);
INSERT INTO "field_sleeping_face_table" VALUES (333,333);
INSERT INTO "field_sleeping_face_table" VALUES (334,334);
INSERT INTO "field_sleeping_face_table" VALUES (335,335);
INSERT INTO "field_sleeping_face_table" VALUES (336,336);
INSERT INTO "field_sleeping_face_table" VALUES (337,337);
INSERT INTO "field_sleeping_face_table" VALUES (338,338);
INSERT INTO "field_sleeping_face_table" VALUES (339,339);
INSERT INTO "field_sleeping_face_table" VALUES (340,340);
INSERT INTO "field_sleeping_face_table" VALUES (341,341);
INSERT INTO "field_sleeping_face_table" VALUES (342,342);
INSERT INTO "field_sleeping_face_table" VALUES (343,343);
INSERT INTO "field_sleeping_face_table" VALUES (344,344);
INSERT INTO "field_sleeping_face_table" VALUES (345,345);
INSERT INTO "field_sleeping_face_table" VALUES (346,346);
INSERT INTO "field_sleeping_face_table" VALUES (347,347);
INSERT INTO "field_sleeping_face_table" VALUES (348,348);
INSERT INTO "field_sleeping_face_table" VALUES (349,349);
INSERT INTO "field_sleeping_face_table" VALUES (350,350);
INSERT INTO "field_sleeping_face_table" VALUES (351,351);
INSERT INTO "field_sleeping_face_table" VALUES (352,352);
INSERT INTO "field_sleeping_face_table" VALUES (353,353);
INSERT INTO "field_sleeping_face_table" VALUES (354,354);
INSERT INTO "field_sleeping_face_table" VALUES (355,355);
INSERT INTO "field_sleeping_face_table" VALUES (356,356);
INSERT INTO "field_sleeping_face_table" VALUES (357,357);
INSERT INTO "field_sleeping_face_table" VALUES (358,358);
INSERT INTO "field_sleeping_face_table" VALUES (359,359);
INSERT INTO "field_sleeping_face_table" VALUES (360,360);
INSERT INTO "field_sleeping_face_table" VALUES (361,361);
INSERT INTO "field_sleeping_face_table" VALUES (362,362);
INSERT INTO "field_sleeping_face_table" VALUES (363,363);
INSERT INTO "field_sleeping_face_table" VALUES (364,364);
INSERT INTO "field_sleeping_face_table" VALUES (365,365);
INSERT INTO "field_sleeping_face_table" VALUES (366,366);
INSERT INTO "field_sleeping_face_table" VALUES (367,367);
INSERT INTO "field_sleeping_face_table" VALUES (368,368);
INSERT INTO "field_sleeping_face_table" VALUES (369,369);
INSERT INTO "field_sleeping_face_table" VALUES (370,370);
INSERT INTO "field_sleeping_face_table" VALUES (371,371);
INSERT INTO "field_sleeping_face_table" VALUES (372,372);
INSERT INTO "field_sleeping_face_table" VALUES (373,373);
INSERT INTO "field_sleeping_face_table" VALUES (374,374);
INSERT INTO "field_sleeping_face_table" VALUES (375,375);
INSERT INTO "field_sleeping_face_table" VALUES (379,379);
INSERT INTO "field_sleeping_face_table" VALUES (380,380);
INSERT INTO "field_sleeping_face_table" VALUES (381,381);
INSERT INTO "field_sleeping_face_table" VALUES (382,382);
INSERT INTO "field_sleeping_face_table" VALUES (383,383);
INSERT INTO "field_sleeping_face_table" VALUES (384,384);
INSERT INTO "field_sleeping_face_table" VALUES (385,385);
INSERT INTO "field_sleeping_face_table" VALUES (386,386);
INSERT INTO "field_sleeping_face_table" VALUES (387,387);
INSERT INTO "field_sleeping_face_table" VALUES (388,388);
INSERT INTO "field_sleeping_face_table" VALUES (389,389);
INSERT INTO "field_sleeping_face_table" VALUES (390,390);
INSERT INTO "field_sleeping_face_table" VALUES (391,391);
INSERT INTO "field_sleeping_face_table" VALUES (392,392);
INSERT INTO "field_sleeping_face_table" VALUES (393,393);
INSERT INTO "field_sleeping_face_table" VALUES (394,394);
INSERT INTO "field_sleeping_face_table" VALUES (395,395);
INSERT INTO "field_sleeping_face_table" VALUES (396,396);
INSERT INTO "field_sleeping_face_table" VALUES (397,397);
INSERT INTO "field_sleeping_face_table" VALUES (398,398);
INSERT INTO "field_sleeping_face_table" VALUES (399,399);
INSERT INTO "field_sleeping_face_table" VALUES (400,400);
INSERT INTO "field_sleeping_face_table" VALUES (401,401);
INSERT INTO "field_sleeping_face_table" VALUES (402,402);
INSERT INTO "field_sleeping_face_table" VALUES (403,403);
INSERT INTO "field_sleeping_face_table" VALUES (404,404);
INSERT INTO "field_sleeping_face_table" VALUES (405,405);
INSERT INTO "field_sleeping_face_table" VALUES (406,406);
INSERT INTO "field_sleeping_face_table" VALUES (407,407);
INSERT INTO "field_sleeping_face_table" VALUES (408,408);
INSERT INTO "field_sleeping_face_table" VALUES (409,409);
INSERT INTO "field_sleeping_face_table" VALUES (410,410);
INSERT INTO "field_sleeping_face_table" VALUES (411,411);
INSERT INTO "field_sleeping_face_table" VALUES (412,412);
INSERT INTO "field_sleeping_face_table" VALUES (413,413);
INSERT INTO "field_sleeping_face_table" VALUES (414,414);
INSERT INTO "field_sleeping_face_table" VALUES (415,415);
INSERT INTO "field_sleeping_face_table" VALUES (416,416);
INSERT INTO "field_sleeping_face_table" VALUES (417,417);
INSERT INTO "field_sleeping_face_table" VALUES (418,418);
INSERT INTO "field_sleeping_face_table" VALUES (419,419);
INSERT INTO "field_sleeping_face_table" VALUES (420,420);
INSERT INTO "field_sleeping_face_table" VALUES (421,421);
INSERT INTO "field_sleeping_face_table" VALUES (422,422);
INSERT INTO "field_sleeping_face_table" VALUES (423,423);
INSERT INTO "field_sleeping_face_table" VALUES (424,424);
INSERT INTO "field_sleeping_face_table" VALUES (425,425);
INSERT INTO "field_sleeping_face_table" VALUES (426,426);
INSERT INTO "field_sleeping_face_table" VALUES (427,427);
INSERT INTO "field_sleeping_face_table" VALUES (428,428);
INSERT INTO "field_sleeping_face_table" VALUES (429,429);
INSERT INTO "field_sleeping_face_table" VALUES (430,430);
INSERT INTO "field_sleeping_face_table" VALUES (431,431);
INSERT INTO "field_sleeping_face_table" VALUES (432,432);
INSERT INTO "field_sleeping_face_table" VALUES (433,433);
INSERT INTO "field_sleeping_face_table" VALUES (434,434);
INSERT INTO "field_sleeping_face_table" VALUES (435,435);
INSERT INTO "field_sleeping_face_table" VALUES (436,436);
INSERT INTO "field_sleeping_face_table" VALUES (437,437);
INSERT INTO "field_sleeping_face_table" VALUES (438,438);
INSERT INTO "field_sleeping_face_table" VALUES (439,439);
INSERT INTO "field_sleeping_face_table" VALUES (440,440);
INSERT INTO "field_sleeping_face_table" VALUES (441,441);
INSERT INTO "field_sleeping_face_table" VALUES (442,442);
INSERT INTO "field_sleeping_face_table" VALUES (443,443);
INSERT INTO "field_sleeping_face_table" VALUES (444,444);
INSERT INTO "field_sleeping_face_table" VALUES (445,445);
INSERT INTO "field_sleeping_face_table" VALUES (446,446);
INSERT INTO "field_sleeping_face_table" VALUES (447,447);
INSERT INTO "field_sleeping_face_table" VALUES (10001,10001);
INSERT INTO "field_sleeping_face_table" VALUES (10002,10002);
INSERT INTO "field_sleeping_face_table" VALUES (448,448);
INSERT INTO "field_sleeping_face_table" VALUES (449,449);
INSERT INTO "field_sleeping_face_table" VALUES (450,450);
INSERT INTO "field_sleeping_face_table" VALUES (451,451);
INSERT INTO "field_sleeping_face_table" VALUES (452,452);
INSERT INTO "field_sleeping_face_table" VALUES (453,453);
INSERT INTO "field_sleeping_face_table" VALUES (454,454);
INSERT INTO "field_sleeping_face_table" VALUES (455,455);
INSERT INTO "field_sleeping_face_table" VALUES (456,456);
INSERT INTO "field_sleeping_face_table" VALUES (457,457);
INSERT INTO "field_sleeping_face_table" VALUES (458,458);
INSERT INTO "field_sleeping_face_table" VALUES (459,459);
INSERT INTO "field_sleeping_face_table" VALUES (460,460);
INSERT INTO "pokemon_rankup_bonus" VALUES (1,'md_pokemon_rankup_bonus_name_1','md_pokemon_rankup_bonus_desc_1',12,140,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (2,'md_pokemon_rankup_bonus_name_2','md_pokemon_rankup_bonus_desc_2',18,50,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (3,'md_pokemon_rankup_bonus_name_3','md_pokemon_rankup_bonus_desc_3',4,120,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (4,'md_pokemon_rankup_bonus_name_4','md_pokemon_rankup_bonus_desc_4',6,60,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (5,'md_pokemon_rankup_bonus_name_5','md_pokemon_rankup_bonus_desc_5',5,60,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (6,'md_pokemon_rankup_bonus_name_6','md_pokemon_rankup_bonus_desc_6',17,70,1,7);
INSERT INTO "pokemon_rankup_bonus" VALUES (7,'md_pokemon_rankup_bonus_name_7','md_pokemon_rankup_bonus_desc_7',17,140,2,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (8,'md_pokemon_rankup_bonus_name_8','md_pokemon_rankup_bonus_desc_8',19,1,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (9,'md_pokemon_rankup_bonus_name_9','md_pokemon_rankup_bonus_desc_9',20,6,1,10);
INSERT INTO "pokemon_rankup_bonus" VALUES (10,'md_pokemon_rankup_bonus_name_10','md_pokemon_rankup_bonus_desc_10',20,12,2,17);
INSERT INTO "pokemon_rankup_bonus" VALUES (11,'md_pokemon_rankup_bonus_name_11','md_pokemon_rankup_bonus_desc_11',21,1,2,16);
INSERT INTO "pokemon_rankup_bonus" VALUES (12,'md_pokemon_rankup_bonus_name_12','md_pokemon_rankup_bonus_desc_12',16,180,1,13);
INSERT INTO "pokemon_rankup_bonus" VALUES (13,'md_pokemon_rankup_bonus_name_13','md_pokemon_rankup_bonus_desc_13',16,360,2,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (14,'md_pokemon_rankup_bonus_name_14','md_pokemon_rankup_bonus_desc_14',14,180,1,15);
INSERT INTO "pokemon_rankup_bonus" VALUES (15,'md_pokemon_rankup_bonus_name_15','md_pokemon_rankup_bonus_desc_15',14,360,2,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (16,'md_pokemon_rankup_bonus_name_18','md_pokemon_rankup_bonus_desc_18',21,2,3,0);
INSERT INTO "pokemon_rankup_bonus" VALUES (17,'md_pokemon_rankup_bonus_name_19','md_pokemon_rankup_bonus_desc_19',20,18,2,0);
INSERT INTO "pokemon_types" VALUES (1,'md_pokemon_types_name_1',1,0,1,3);
INSERT INTO "pokemon_types" VALUES (2,'md_pokemon_types_name_2',2,0,1,3);
INSERT INTO "pokemon_types" VALUES (3,'md_pokemon_types_name_3',3,0,0,4);
INSERT INTO "pokemon_types" VALUES (4,'md_pokemon_types_name_4',4,0,1,3);
INSERT INTO "pokemon_types" VALUES (5,'md_pokemon_types_name_5',5,0,4,2);
INSERT INTO "pokemon_types" VALUES (6,'md_pokemon_types_name_6',6,0,0,4);
INSERT INTO "pokemon_types" VALUES (7,'md_pokemon_types_name_7',7,0,0,4);
INSERT INTO "pokemon_types" VALUES (8,'md_pokemon_types_name_8',8,0,4,2);
INSERT INTO "pokemon_types" VALUES (9,'md_pokemon_types_name_9',9,0,0,4);
INSERT INTO "pokemon_types" VALUES (10,'md_pokemon_types_name_10',10,0,0,4);
INSERT INTO "pokemon_types" VALUES (11,'md_pokemon_types_name_11',11,0,1,3);
INSERT INTO "pokemon_types" VALUES (12,'md_pokemon_types_name_12',12,0,4,2);
INSERT INTO "pokemon_types" VALUES (13,'md_pokemon_types_name_13',13,0,0,4);
INSERT INTO "pokemon_types" VALUES (14,'md_pokemon_types_name_14',14,0,4,2);
INSERT INTO "pokemon_types" VALUES (15,'md_pokemon_types_name_15',15,0,4,2);
INSERT INTO "pokemon_types" VALUES (16,'md_pokemon_types_name_16',16,0,4,2);
INSERT INTO "pokemon_types" VALUES (17,'md_pokemon_types_name_17',17,0,0,4);
INSERT INTO "pokemon_types" VALUES (18,'md_pokemon_types_name_18',18,0,1,3);
INSERT INTO "sleep_pass_exchange_shop" VALUES (1,4000,'md_sleep_pass_exchange_shop_name_1',2,1,9,1,10,'sleep_point_1');
INSERT INTO "sleep_pass_exchange_shop" VALUES (2,150,'md_sleep_pass_exchange_shop_name_2',1,1,9,30,11,'sleep_point_2');
INSERT INTO "sleep_pass_exchange_shop" VALUES (3,400,'md_sleep_pass_exchange_shop_name_3',3,1,5,3,12,'sleep_point_3');
INSERT INTO "sleep_pass_exchange_shop" VALUES (4,240,'md_sleep_pass_exchange_shop_name_4',1,1,22,3,13,'sleep_point_4');
INSERT INTO "sleep_pass_exchange_shop" VALUES (5,800,'md_sleep_pass_exchange_shop_name_5',1,1,23,3,14,'sleep_point_5');
INSERT INTO "sleep_pass_exchange_shop" VALUES (6,240,'md_sleep_pass_exchange_shop_name_6',1,1,25,3,15,'sleep_point_6');
INSERT INTO "sleep_pass_exchange_shop" VALUES (7,200,'md_sleep_pass_exchange_shop_name_7',1,1,17,5,16,'sleep_point_7');
INSERT INTO "sleep_pass_exchange_shop" VALUES (8,600,'md_sleep_pass_exchange_shop_name_8',2,1,17,3,17,'sleep_point_8');
INSERT INTO "sleep_pass_exchange_shop" VALUES (9,160,'md_sleep_pass_exchange_shop_name_9',1,1,10,10,18,'sleep_point_9');
INSERT INTO "sleep_pass_exchange_shop" VALUES (10,100,'md_sleep_pass_exchange_shop_name_10',1,1,9,10,111,'premium_sleep_point_1');
INSERT INTO "sleep_pass_exchange_shop" VALUES (11,400,'md_sleep_pass_exchange_shop_name_11',3,1,9,5,112,'premium_sleep_point_2');
INSERT INTO "sleep_pass_exchange_shop" VALUES (12,500,'md_sleep_pass_exchange_shop_name_12',2,1,10,1,113,'premium_sleep_point_3');
INSERT INTO "sleep_pass_exchange_shop" VALUES (13,700,'md_sleep_pass_exchange_shop_name_14',2,1,25,1,115,'premium_sleep_point_4');
INSERT INTO "sleep_pass_exchange_shop" VALUES (14,1400,'md_sleep_pass_exchange_shop_name_15',1,1,27,1,116,'premium_sleep_point_5');
INSERT INTO "sleep_pass_exchange_shop" VALUES (15,1800,'md_sleep_pass_exchange_shop_name_16',1,1,26,1,117,'premium_sleep_point_6');
INSERT INTO "sleep_pass_exchange_shop" VALUES (16,1400,'item_name_21',1,1,28,5,20,'sleep_point_10');
INSERT INTO "sleep_pass_exchange_shop" VALUES (17,1400,'item_name_22',2,1,28,5,21,'sleep_point_11');
INSERT INTO "sleep_pass_exchange_shop" VALUES (18,1400,'item_name_23',3,1,28,5,22,'sleep_point_12');
INSERT INTO "sleep_pass_exchange_shop" VALUES (19,1400,'item_name_24',4,1,28,5,23,'sleep_point_13');
INSERT INTO "sleep_pass_exchange_shop" VALUES (20,1400,'item_name_25',5,1,28,5,24,'sleep_point_14');
INSERT INTO "sleep_pass_exchange_shop" VALUES (21,1400,'item_name_26',6,1,28,5,25,'sleep_point_15');
INSERT INTO "sleep_pass_exchange_shop" VALUES (22,1400,'item_name_27',7,1,28,5,26,'sleep_point_16');
INSERT INTO "sleep_pass_exchange_shop" VALUES (23,1400,'item_name_28',8,1,28,5,27,'sleep_point_17');
INSERT INTO "sleep_pass_exchange_shop" VALUES (24,1400,'item_name_31',11,1,28,5,28,'sleep_point_19');
INSERT INTO "sleep_pass_exchange_shop" VALUES (25,300,'md_sleep_pass_exchange_shop_name_8',2,1,17,3,114,'sleep_point_8');
INSERT INTO "sleep_pass_exchange_shop" VALUES (26,500,'md_sleep_pass_exchange_shop_name_12',2,1,10,3,113,'premium_sleep_point_3');
INSERT INTO "sleep_pass_exchange_shop" VALUES (27,100,'item_name_7',1,1,20,1,19,'premium_sleep_point_3');
INSERT INTO "sleep_pass_exchange_shop" VALUES (28,1400,'md_evolution_items_name_9',9,1,28,5,29,'sleep_point_18');
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (1,1640995200,1643673599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',3);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (2,1643673600,1646092799,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',4);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (3,1646092800,1648771199,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',5);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (4,1648771200,1651363199,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',6);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (5,1651363200,1654041599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',7);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (6,1654041600,1656633599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',8);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (7,1656633600,1659311999,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',9);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (8,1659312000,1661990399,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',10);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (9,1661990400,1664582399,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',11);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (10,1664582400,1667260799,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',12);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (11,1667260800,1669852799,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',13);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (12,1669852800,1672531199,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',14);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (13,1672531200,1675209599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',15);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (14,1675209600,1677628799,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',16);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (15,1677628800,1680307199,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',17);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (16,1680307200,1682899199,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',18);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (17,1682899200,1685577599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',19);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (18,1685577600,1688169599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',20);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (19,1688169600,1690847999,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',21);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (20,1690848000,1693526399,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,12,13,14,15',22);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (21,1693526400,1696118399,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24','10,11,13,14,15,25,26',23);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (22,1696118400,1698796799,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24,27','10,11,13,14,15,25,26',24);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (23,1698796800,1701388799,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24,27,28','10,11,13,14,15,25,26',25);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (24,1701388800,1704067199,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24,27,28','10,11,13,14,15,25,26',26);
INSERT INTO "sleep_pass_exchange_shop_item_table" VALUES (25,1704067200,1706745599,'1,2,3,4,5,7,8,9,16,17,18,19,20,21,22,23,24,27,28','10,11,13,14,15,25,26',27);
INSERT INTO "snorlax_rank" VALUES (1,1,1,0,0,'0,0,0',0,0,'0,0,0',0,0,'0,0,0',0,0,'0,0,0',0,0,'0,0,0',0,0,'0,0,0');
INSERT INTO "snorlax_rank" VALUES (2,1,2,3118,35,'3,8,37',4822,54,'3,36,5',6885,77,'24,27,36',10486,117,'24,27,36',14702,163,'24,27,36',21202,236,'24,27,36');
INSERT INTO "snorlax_rank" VALUES (3,1,3,7171,45,'3,8,37',11090,70,'3,36,5',15835,99,'24,27,36',24118,151,'24,27,36',33814,212,'24,27,36',48764,306,'24,27,36');
INSERT INTO "snorlax_rank" VALUES (4,1,4,11693,50,'5,36,39',18082,78,'24,27,29',25817,111,'12,16,17',39323,169,'12,16,17',55131,237,'12,16,17',79506,342,'12,16,17');
INSERT INTO "snorlax_rank" VALUES (5,1,5,17149,61,'5,36,39',26520,94,'24,27,29',37865,134,'12,16,17',57673,204,'12,16,17',80859,286,'12,16,17',116609,412,'12,16,17');
INSERT INTO "snorlax_rank" VALUES (6,2,1,23385,69,'5,36,39',36164,107,'14,19,23',51635,153,'1,2,42',78645,233,'1,2,42',110262,327,'1,2,42',159012,471,'1,2,42');
INSERT INTO "snorlax_rank" VALUES (7,2,2,31492,90,'40,6,1',48700,139,'14,19,23',69534,199,'1,2,42',105909,303,'1,2,42',148486,425,'1,2,42',214136,612,'1,2,42');
INSERT INTO "snorlax_rank" VALUES (8,2,3,41314,109,'40,6,1',63889,169,'14,19,23',91221,241,'1,2,42',138940,367,'1,2,42',194796,515,'1,2,42',280921,742,'1,2,42');
INSERT INTO "snorlax_rank" VALUES (9,2,4,53006,130,'40,6,1',81971,201,'33,15,41',117038,287,'13,18,31',178262,437,'13,18,31',249927,613,'13,18,31',360427,883,'13,18,31');
INSERT INTO "snorlax_rank" VALUES (10,2,5,65634,140,'2,9,11',101499,217,'33,15,41',144921,310,'13,18,31',220730,472,'13,18,31',309469,662,'13,18,31',446294,954,'13,18,31');
INSERT INTO "snorlax_rank" VALUES (11,3,1,79197,151,'2,9,11',122474,233,'33,15,41',174869,333,'13,18,31',266344,507,'13,18,31',373421,711,'13,18,31',538521,1025,'13,18,31');
INSERT INTO "snorlax_rank" VALUES (12,3,2,93540,159,'2,9,11',144654,246,'20,25,28',206538,352,'43,32,18',314580,536,'43,32,18',441048,751,'43,32,18',636048,1084,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (13,3,3,109130,173,'7,21,35',168763,268,'20,25,28',240961,382,'43,32,18',367010,583,'43,32,18',514556,817,'43,32,18',742056,1178,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (14,3,4,125032,177,'7,21,35',195283,295,'20,25,28',278826,421,'43,32,18',424683,641,'43,32,18',593210,874,'43,32,18',853364,1237,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (15,3,5,156121,345,'7,21,35',224455,324,'20,25,28',320478,463,'43,32,18',488123,705,'43,32,18',677370,935,'43,32,18',970237,1299,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (16,4,1,187832,352,'7,21,35',256544,357,'20,25,28',366295,509,'43,32,18',557907,775,'43,32,18',767421,1001,'43,32,18',1092954,1364,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (17,4,2,220177,359,'7,21,35',291842,392,'20,25,28',416694,560,'43,32,18',634669,853,'43,32,18',863776,1071,'43,32,18',1221807,1432,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (18,4,3,253169,367,'7,21,35',330670,431,'20,25,28',472133,616,'43,32,18',719107,938,'43,32,18',966876,1146,'43,32,18',1357103,1503,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (19,4,4,286821,374,'7,21,35',373381,475,'20,25,28',533116,678,'43,32,18',811989,1032,'43,32,18',1077193,1226,'43,32,18',1499164,1578,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (20,4,5,321146,381,'7,21,35',420363,522,'20,25,28',600197,745,'43,32,18',914159,1135,'43,32,18',1195232,1312,'43,32,18',1648328,1657,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (21,4,6,356158,389,'7,21,35',472043,574,'20,25,28',673986,820,'43,32,18',1026546,1249,'43,32,18',1321534,1403,'43,32,18',1804950,1740,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (22,4,7,391870,397,'7,21,35',528891,632,'20,25,28',755154,902,'43,32,18',1150172,1374,'43,32,18',1456677,1502,'43,32,18',1969403,1827,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (23,4,8,428296,405,'7,21,35',591424,695,'20,25,28',844439,992,'43,32,18',1286161,1511,'43,32,18',1601280,1607,'43,32,18',2142079,1919,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (24,4,9,465451,413,'7,21,35',660210,764,'20,25,28',942653,1091,'43,32,18',1435749,1662,'43,32,18',1756005,1719,'43,32,18',2323389,2015,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (25,4,10,532707,747,'7,21,35',735875,841,'20,25,28',1050688,1200,'43,32,18',1600296,1828,'43,32,18',1921561,1840,'43,32,18',2513765,2115,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (26,4,11,601308,762,'7,21,35',819107,925,'20,25,28',1169527,1320,'43,32,18',1781298,2011,'43,32,18',2098706,1968,'43,32,18',2713660,2221,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (27,4,12,742056,1564,'7,21,35',910662,1017,'20,25,28',1300250,1452,'43,32,18',1980400,2212,'43,32,18',2288251,2106,'43,32,18',2923550,2332,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (28,4,13,885619,1595,'7,21,35',1018462,1198,'20,25,28',1444045,1598,'43,32,18',2199412,2433,'43,32,18',2491064,2253,'43,32,18',3143935,2449,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (29,4,14,1029700,1601,'7,21,35',1184155,1841,'20,25,28',1602220,1758,'43,32,18',2440325,2677,'43,32,18',2708074,2411,'43,32,18',3375339,2571,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (30,4,15,1199506,1887,'7,21,35',1379432,2170,'20,25,28',1776213,1933,'43,32,18',2705329,2944,'43,32,18',2940275,2580,'43,32,18',3618313,2700,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (31,4,16,1486800,3192,'7,21,35',1709820,3671,'20,25,28',1967605,2127,'43,32,18',2996833,3239,'43,32,18',3188730,2761,'43,32,18',3873436,2835,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (32,4,17,1795052,3425,'7,21,35',2064310,3939,'20,25,28',2333568,4066,'43,32,18',3317487,3563,'43,32,18',3454577,2954,'43,32,18',4141315,2976,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (33,4,18,2165541,4117,'7,21,35',2490372,4734,'20,25,28',2815203,5352,'43,32,18',3670206,3919,'43,32,18',3739033,3161,'43,32,18',4422588,3125,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (34,4,19,2604280,4875,'7,21,35',2994922,5606,'20,25,28',3385564,6337,'43,32,18',4058197,4311,'43,32,18',4166848,4754,'43,32,18',4717925,3282,'43,32,18');
INSERT INTO "snorlax_rank" VALUES (35,4,20,3245795,7128,'7,21,35',3732664,8197,'20,25,28',4219534,9266,'43,32,18',4706403,7202,'43,32,18',5193272,11405,'43,32,18',5680141,10691,'43,32,18');
INSERT INTO "berries" VALUES (1,'md_berries_name_1',28,'md_berries_desc_1');
INSERT INTO "berries" VALUES (2,'md_berries_name_2',27,'md_berries_desc_2');
INSERT INTO "berries" VALUES (3,'md_berries_name_3',31,'md_berries_desc_3');
INSERT INTO "berries" VALUES (4,'md_berries_name_4',25,'md_berries_desc_4');
INSERT INTO "berries" VALUES (5,'md_berries_name_5',30,'md_berries_desc_5');
INSERT INTO "berries" VALUES (6,'md_berries_name_6',32,'md_berries_desc_6');
INSERT INTO "berries" VALUES (7,'md_berries_name_7',27,'md_berries_desc_7');
INSERT INTO "berries" VALUES (8,'md_berries_name_8',32,'md_berries_desc_8');
INSERT INTO "berries" VALUES (9,'md_berries_name_9',29,'md_berries_desc_9');
INSERT INTO "berries" VALUES (10,'md_berries_name_10',24,'md_berries_desc_10');
INSERT INTO "berries" VALUES (11,'md_berries_name_11',26,'md_berries_desc_11');
INSERT INTO "berries" VALUES (12,'md_berries_name_12',24,'md_berries_desc_12');
INSERT INTO "berries" VALUES (13,'md_berries_name_13',30,'md_berries_desc_13');
INSERT INTO "berries" VALUES (14,'md_berries_name_14',26,'md_berries_desc_14');
INSERT INTO "berries" VALUES (15,'md_berries_name_15',35,'md_berries_desc_15');
INSERT INTO "berries" VALUES (16,'md_berries_name_16',31,'md_berries_desc_16');
INSERT INTO "berries" VALUES (17,'md_berries_name_17',33,'md_berries_desc_17');
INSERT INTO "berries" VALUES (18,'md_berries_name_18',26,'md_berries_desc_18');
INSERT INTO "berry_energy" VALUES (1,1,1,28);
INSERT INTO "berry_energy" VALUES (2,1,2,29);
INSERT INTO "berry_energy" VALUES (3,1,3,30);
INSERT INTO "berry_energy" VALUES (4,1,4,31);
INSERT INTO "berry_energy" VALUES (5,1,5,32);
INSERT INTO "berry_energy" VALUES (6,1,6,33);
INSERT INTO "berry_energy" VALUES (7,1,7,34);
INSERT INTO "berry_energy" VALUES (8,1,8,35);
INSERT INTO "berry_energy" VALUES (9,1,9,36);
INSERT INTO "berry_energy" VALUES (10,1,10,37);
INSERT INTO "berry_energy" VALUES (11,1,11,38);
INSERT INTO "berry_energy" VALUES (12,1,12,39);
INSERT INTO "berry_energy" VALUES (13,1,13,40);
INSERT INTO "berry_energy" VALUES (14,1,14,41);
INSERT INTO "berry_energy" VALUES (15,1,15,42);
INSERT INTO "berry_energy" VALUES (16,1,16,43);
INSERT INTO "berry_energy" VALUES (17,1,17,44);
INSERT INTO "berry_energy" VALUES (18,1,18,45);
INSERT INTO "berry_energy" VALUES (19,1,19,46);
INSERT INTO "berry_energy" VALUES (20,1,20,47);
INSERT INTO "berry_energy" VALUES (21,1,21,48);
INSERT INTO "berry_energy" VALUES (22,1,22,49);
INSERT INTO "berry_energy" VALUES (23,1,23,50);
INSERT INTO "berry_energy" VALUES (24,1,24,51);
INSERT INTO "berry_energy" VALUES (25,1,25,52);
INSERT INTO "berry_energy" VALUES (26,1,26,53);
INSERT INTO "berry_energy" VALUES (27,1,27,54);
INSERT INTO "berry_energy" VALUES (28,1,28,55);
INSERT INTO "berry_energy" VALUES (29,1,29,56);
INSERT INTO "berry_energy" VALUES (30,1,30,57);
INSERT INTO "berry_energy" VALUES (31,1,31,59);
INSERT INTO "berry_energy" VALUES (32,1,32,60);
INSERT INTO "berry_energy" VALUES (33,1,33,62);
INSERT INTO "berry_energy" VALUES (34,1,34,63);
INSERT INTO "berry_energy" VALUES (35,1,35,65);
INSERT INTO "berry_energy" VALUES (36,1,36,66);
INSERT INTO "berry_energy" VALUES (37,1,37,68);
INSERT INTO "berry_energy" VALUES (38,1,38,70);
INSERT INTO "berry_energy" VALUES (39,1,39,72);
INSERT INTO "berry_energy" VALUES (40,1,40,73);
INSERT INTO "berry_energy" VALUES (41,1,41,75);
INSERT INTO "berry_energy" VALUES (42,1,42,77);
INSERT INTO "berry_energy" VALUES (43,1,43,79);
INSERT INTO "berry_energy" VALUES (44,1,44,81);
INSERT INTO "berry_energy" VALUES (45,1,45,83);
INSERT INTO "berry_energy" VALUES (46,1,46,85);
INSERT INTO "berry_energy" VALUES (47,1,47,87);
INSERT INTO "berry_energy" VALUES (48,1,48,89);
INSERT INTO "berry_energy" VALUES (49,1,49,92);
INSERT INTO "berry_energy" VALUES (50,1,50,94);
INSERT INTO "berry_energy" VALUES (51,1,51,96);
INSERT INTO "berry_energy" VALUES (52,1,52,99);
INSERT INTO "berry_energy" VALUES (53,1,53,101);
INSERT INTO "berry_energy" VALUES (54,1,54,104);
INSERT INTO "berry_energy" VALUES (55,1,55,106);
INSERT INTO "berry_energy" VALUES (56,1,56,109);
INSERT INTO "berry_energy" VALUES (57,1,57,112);
INSERT INTO "berry_energy" VALUES (58,1,58,114);
INSERT INTO "berry_energy" VALUES (59,1,59,117);
INSERT INTO "berry_energy" VALUES (60,1,60,120);
INSERT INTO "berry_energy" VALUES (61,2,1,27);
INSERT INTO "berry_energy" VALUES (62,2,2,28);
INSERT INTO "berry_energy" VALUES (63,2,3,29);
INSERT INTO "berry_energy" VALUES (64,2,4,30);
INSERT INTO "berry_energy" VALUES (65,2,5,31);
INSERT INTO "berry_energy" VALUES (66,2,6,32);
INSERT INTO "berry_energy" VALUES (67,2,7,33);
INSERT INTO "berry_energy" VALUES (68,2,8,34);
INSERT INTO "berry_energy" VALUES (69,2,9,35);
INSERT INTO "berry_energy" VALUES (70,2,10,36);
INSERT INTO "berry_energy" VALUES (71,2,11,37);
INSERT INTO "berry_energy" VALUES (72,2,12,38);
INSERT INTO "berry_energy" VALUES (73,2,13,39);
INSERT INTO "berry_energy" VALUES (74,2,14,40);
INSERT INTO "berry_energy" VALUES (75,2,15,41);
INSERT INTO "berry_energy" VALUES (76,2,16,42);
INSERT INTO "berry_energy" VALUES (77,2,17,43);
INSERT INTO "berry_energy" VALUES (78,2,18,44);
INSERT INTO "berry_energy" VALUES (79,2,19,45);
INSERT INTO "berry_energy" VALUES (80,2,20,46);
INSERT INTO "berry_energy" VALUES (81,2,21,47);
INSERT INTO "berry_energy" VALUES (82,2,22,48);
INSERT INTO "berry_energy" VALUES (83,2,23,49);
INSERT INTO "berry_energy" VALUES (84,2,24,50);
INSERT INTO "berry_energy" VALUES (85,2,25,51);
INSERT INTO "berry_energy" VALUES (86,2,26,52);
INSERT INTO "berry_energy" VALUES (87,2,27,53);
INSERT INTO "berry_energy" VALUES (88,2,28,54);
INSERT INTO "berry_energy" VALUES (89,2,29,55);
INSERT INTO "berry_energy" VALUES (90,2,30,56);
INSERT INTO "berry_energy" VALUES (91,2,31,57);
INSERT INTO "berry_energy" VALUES (92,2,32,58);
INSERT INTO "berry_energy" VALUES (93,2,33,60);
INSERT INTO "berry_energy" VALUES (94,2,34,61);
INSERT INTO "berry_energy" VALUES (95,2,35,63);
INSERT INTO "berry_energy" VALUES (96,2,36,64);
INSERT INTO "berry_energy" VALUES (97,2,37,66);
INSERT INTO "berry_energy" VALUES (98,2,38,67);
INSERT INTO "berry_energy" VALUES (99,2,39,69);
INSERT INTO "berry_energy" VALUES (100,2,40,71);
INSERT INTO "berry_energy" VALUES (101,2,41,72);
INSERT INTO "berry_energy" VALUES (102,2,42,74);
INSERT INTO "berry_energy" VALUES (103,2,43,76);
INSERT INTO "berry_energy" VALUES (104,2,44,78);
INSERT INTO "berry_energy" VALUES (105,2,45,80);
INSERT INTO "berry_energy" VALUES (106,2,46,82);
INSERT INTO "berry_energy" VALUES (107,2,47,84);
INSERT INTO "berry_energy" VALUES (108,2,48,86);
INSERT INTO "berry_energy" VALUES (109,2,49,88);
INSERT INTO "berry_energy" VALUES (110,2,50,91);
INSERT INTO "berry_energy" VALUES (111,2,51,93);
INSERT INTO "berry_energy" VALUES (112,2,52,95);
INSERT INTO "berry_energy" VALUES (113,2,53,98);
INSERT INTO "berry_energy" VALUES (114,2,54,100);
INSERT INTO "berry_energy" VALUES (115,2,55,102);
INSERT INTO "berry_energy" VALUES (116,2,56,105);
INSERT INTO "berry_energy" VALUES (117,2,57,108);
INSERT INTO "berry_energy" VALUES (118,2,58,110);
INSERT INTO "berry_energy" VALUES (119,2,59,113);
INSERT INTO "berry_energy" VALUES (120,2,60,116);
INSERT INTO "berry_energy" VALUES (121,3,1,31);
INSERT INTO "berry_energy" VALUES (122,3,2,32);
INSERT INTO "berry_energy" VALUES (123,3,3,33);
INSERT INTO "berry_energy" VALUES (124,3,4,34);
INSERT INTO "berry_energy" VALUES (125,3,5,35);
INSERT INTO "berry_energy" VALUES (126,3,6,36);
INSERT INTO "berry_energy" VALUES (127,3,7,37);
INSERT INTO "berry_energy" VALUES (128,3,8,38);
INSERT INTO "berry_energy" VALUES (129,3,9,39);
INSERT INTO "berry_energy" VALUES (130,3,10,40);
INSERT INTO "berry_energy" VALUES (131,3,11,41);
INSERT INTO "berry_energy" VALUES (132,3,12,42);
INSERT INTO "berry_energy" VALUES (133,3,13,43);
INSERT INTO "berry_energy" VALUES (134,3,14,44);
INSERT INTO "berry_energy" VALUES (135,3,15,45);
INSERT INTO "berry_energy" VALUES (136,3,16,46);
INSERT INTO "berry_energy" VALUES (137,3,17,47);
INSERT INTO "berry_energy" VALUES (138,3,18,48);
INSERT INTO "berry_energy" VALUES (139,3,19,49);
INSERT INTO "berry_energy" VALUES (140,3,20,50);
INSERT INTO "berry_energy" VALUES (141,3,21,51);
INSERT INTO "berry_energy" VALUES (142,3,22,52);
INSERT INTO "berry_energy" VALUES (143,3,23,53);
INSERT INTO "berry_energy" VALUES (144,3,24,55);
INSERT INTO "berry_energy" VALUES (145,3,25,56);
INSERT INTO "berry_energy" VALUES (146,3,26,57);
INSERT INTO "berry_energy" VALUES (147,3,27,59);
INSERT INTO "berry_energy" VALUES (148,3,28,60);
INSERT INTO "berry_energy" VALUES (149,3,29,62);
INSERT INTO "berry_energy" VALUES (150,3,30,63);
INSERT INTO "berry_energy" VALUES (151,3,31,65);
INSERT INTO "berry_energy" VALUES (152,3,32,67);
INSERT INTO "berry_energy" VALUES (153,3,33,68);
INSERT INTO "berry_energy" VALUES (154,3,34,70);
INSERT INTO "berry_energy" VALUES (155,3,35,72);
INSERT INTO "berry_energy" VALUES (156,3,36,74);
INSERT INTO "berry_energy" VALUES (157,3,37,75);
INSERT INTO "berry_energy" VALUES (158,3,38,77);
INSERT INTO "berry_energy" VALUES (159,3,39,79);
INSERT INTO "berry_energy" VALUES (160,3,40,81);
INSERT INTO "berry_energy" VALUES (161,3,41,83);
INSERT INTO "berry_energy" VALUES (162,3,42,85);
INSERT INTO "berry_energy" VALUES (163,3,43,87);
INSERT INTO "berry_energy" VALUES (164,3,44,90);
INSERT INTO "berry_energy" VALUES (165,3,45,92);
INSERT INTO "berry_energy" VALUES (166,3,46,94);
INSERT INTO "berry_energy" VALUES (167,3,47,97);
INSERT INTO "berry_energy" VALUES (168,3,48,99);
INSERT INTO "berry_energy" VALUES (169,3,49,101);
INSERT INTO "berry_energy" VALUES (170,3,50,104);
INSERT INTO "berry_energy" VALUES (171,3,51,107);
INSERT INTO "berry_energy" VALUES (172,3,52,109);
INSERT INTO "berry_energy" VALUES (173,3,53,112);
INSERT INTO "berry_energy" VALUES (174,3,54,115);
INSERT INTO "berry_energy" VALUES (175,3,55,118);
INSERT INTO "berry_energy" VALUES (176,3,56,121);
INSERT INTO "berry_energy" VALUES (177,3,57,124);
INSERT INTO "berry_energy" VALUES (178,3,58,127);
INSERT INTO "berry_energy" VALUES (179,3,59,130);
INSERT INTO "berry_energy" VALUES (180,3,60,133);
INSERT INTO "berry_energy" VALUES (181,4,1,25);
INSERT INTO "berry_energy" VALUES (182,4,2,26);
INSERT INTO "berry_energy" VALUES (183,4,3,27);
INSERT INTO "berry_energy" VALUES (184,4,4,28);
INSERT INTO "berry_energy" VALUES (185,4,5,29);
INSERT INTO "berry_energy" VALUES (186,4,6,30);
INSERT INTO "berry_energy" VALUES (187,4,7,31);
INSERT INTO "berry_energy" VALUES (188,4,8,32);
INSERT INTO "berry_energy" VALUES (189,4,9,33);
INSERT INTO "berry_energy" VALUES (190,4,10,34);
INSERT INTO "berry_energy" VALUES (191,4,11,35);
INSERT INTO "berry_energy" VALUES (192,4,12,36);
INSERT INTO "berry_energy" VALUES (193,4,13,37);
INSERT INTO "berry_energy" VALUES (194,4,14,38);
INSERT INTO "berry_energy" VALUES (195,4,15,39);
INSERT INTO "berry_energy" VALUES (196,4,16,40);
INSERT INTO "berry_energy" VALUES (197,4,17,41);
INSERT INTO "berry_energy" VALUES (198,4,18,42);
INSERT INTO "berry_energy" VALUES (199,4,19,43);
INSERT INTO "berry_energy" VALUES (200,4,20,44);
INSERT INTO "berry_energy" VALUES (201,4,21,45);
INSERT INTO "berry_energy" VALUES (202,4,22,46);
INSERT INTO "berry_energy" VALUES (203,4,23,47);
INSERT INTO "berry_energy" VALUES (204,4,24,48);
INSERT INTO "berry_energy" VALUES (205,4,25,49);
INSERT INTO "berry_energy" VALUES (206,4,26,50);
INSERT INTO "berry_energy" VALUES (207,4,27,51);
INSERT INTO "berry_energy" VALUES (208,4,28,52);
INSERT INTO "berry_energy" VALUES (209,4,29,53);
INSERT INTO "berry_energy" VALUES (210,4,30,54);
INSERT INTO "berry_energy" VALUES (211,4,31,55);
INSERT INTO "berry_energy" VALUES (212,4,32,56);
INSERT INTO "berry_energy" VALUES (213,4,33,57);
INSERT INTO "berry_energy" VALUES (214,4,34,58);
INSERT INTO "berry_energy" VALUES (215,4,35,59);
INSERT INTO "berry_energy" VALUES (216,4,36,60);
INSERT INTO "berry_energy" VALUES (217,4,37,61);
INSERT INTO "berry_energy" VALUES (218,4,38,62);
INSERT INTO "berry_energy" VALUES (219,4,39,64);
INSERT INTO "berry_energy" VALUES (220,4,40,65);
INSERT INTO "berry_energy" VALUES (221,4,41,67);
INSERT INTO "berry_energy" VALUES (222,4,42,69);
INSERT INTO "berry_energy" VALUES (223,4,43,71);
INSERT INTO "berry_energy" VALUES (224,4,44,72);
INSERT INTO "berry_energy" VALUES (225,4,45,74);
INSERT INTO "berry_energy" VALUES (226,4,46,76);
INSERT INTO "berry_energy" VALUES (227,4,47,78);
INSERT INTO "berry_energy" VALUES (228,4,48,80);
INSERT INTO "berry_energy" VALUES (229,4,49,82);
INSERT INTO "berry_energy" VALUES (230,4,50,84);
INSERT INTO "berry_energy" VALUES (231,4,51,86);
INSERT INTO "berry_energy" VALUES (232,4,52,88);
INSERT INTO "berry_energy" VALUES (233,4,53,90);
INSERT INTO "berry_energy" VALUES (234,4,54,93);
INSERT INTO "berry_energy" VALUES (235,4,55,95);
INSERT INTO "berry_energy" VALUES (236,4,56,97);
INSERT INTO "berry_energy" VALUES (237,4,57,100);
INSERT INTO "berry_energy" VALUES (238,4,58,102);
INSERT INTO "berry_energy" VALUES (239,4,59,105);
INSERT INTO "berry_energy" VALUES (240,4,60,107);
INSERT INTO "berry_energy" VALUES (241,5,1,30);
INSERT INTO "berry_energy" VALUES (242,5,2,31);
INSERT INTO "berry_energy" VALUES (243,5,3,32);
INSERT INTO "berry_energy" VALUES (244,5,4,33);
INSERT INTO "berry_energy" VALUES (245,5,5,34);
INSERT INTO "berry_energy" VALUES (246,5,6,35);
INSERT INTO "berry_energy" VALUES (247,5,7,36);
INSERT INTO "berry_energy" VALUES (248,5,8,37);
INSERT INTO "berry_energy" VALUES (249,5,9,38);
INSERT INTO "berry_energy" VALUES (250,5,10,39);
INSERT INTO "berry_energy" VALUES (251,5,11,40);
INSERT INTO "berry_energy" VALUES (252,5,12,41);
INSERT INTO "berry_energy" VALUES (253,5,13,42);
INSERT INTO "berry_energy" VALUES (254,5,14,43);
INSERT INTO "berry_energy" VALUES (255,5,15,44);
INSERT INTO "berry_energy" VALUES (256,5,16,45);
INSERT INTO "berry_energy" VALUES (257,5,17,46);
INSERT INTO "berry_energy" VALUES (258,5,18,47);
INSERT INTO "berry_energy" VALUES (259,5,19,48);
INSERT INTO "berry_energy" VALUES (260,5,20,49);
INSERT INTO "berry_energy" VALUES (261,5,21,50);
INSERT INTO "berry_energy" VALUES (262,5,22,51);
INSERT INTO "berry_energy" VALUES (263,5,23,52);
INSERT INTO "berry_energy" VALUES (264,5,24,53);
INSERT INTO "berry_energy" VALUES (265,5,25,54);
INSERT INTO "berry_energy" VALUES (266,5,26,56);
INSERT INTO "berry_energy" VALUES (267,5,27,57);
INSERT INTO "berry_energy" VALUES (268,5,28,58);
INSERT INTO "berry_energy" VALUES (269,5,29,60);
INSERT INTO "berry_energy" VALUES (270,5,30,61);
INSERT INTO "berry_energy" VALUES (271,5,31,63);
INSERT INTO "berry_energy" VALUES (272,5,32,65);
INSERT INTO "berry_energy" VALUES (273,5,33,66);
INSERT INTO "berry_energy" VALUES (274,5,34,68);
INSERT INTO "berry_energy" VALUES (275,5,35,69);
INSERT INTO "berry_energy" VALUES (276,5,36,71);
INSERT INTO "berry_energy" VALUES (277,5,37,73);
INSERT INTO "berry_energy" VALUES (278,5,38,75);
INSERT INTO "berry_energy" VALUES (279,5,39,77);
INSERT INTO "berry_energy" VALUES (280,5,40,79);
INSERT INTO "berry_energy" VALUES (281,5,41,81);
INSERT INTO "berry_energy" VALUES (282,5,42,83);
INSERT INTO "berry_energy" VALUES (283,5,43,85);
INSERT INTO "berry_energy" VALUES (284,5,44,87);
INSERT INTO "berry_energy" VALUES (285,5,45,89);
INSERT INTO "berry_energy" VALUES (286,5,46,91);
INSERT INTO "berry_energy" VALUES (287,5,47,93);
INSERT INTO "berry_energy" VALUES (288,5,48,96);
INSERT INTO "berry_energy" VALUES (289,5,49,98);
INSERT INTO "berry_energy" VALUES (290,5,50,101);
INSERT INTO "berry_energy" VALUES (291,5,51,103);
INSERT INTO "berry_energy" VALUES (292,5,52,106);
INSERT INTO "berry_energy" VALUES (293,5,53,108);
INSERT INTO "berry_energy" VALUES (294,5,54,111);
INSERT INTO "berry_energy" VALUES (295,5,55,114);
INSERT INTO "berry_energy" VALUES (296,5,56,117);
INSERT INTO "berry_energy" VALUES (297,5,57,120);
INSERT INTO "berry_energy" VALUES (298,5,58,123);
INSERT INTO "berry_energy" VALUES (299,5,59,126);
INSERT INTO "berry_energy" VALUES (300,5,60,129);
INSERT INTO "berry_energy" VALUES (301,6,1,32);
INSERT INTO "berry_energy" VALUES (302,6,2,33);
INSERT INTO "berry_energy" VALUES (303,6,3,34);
INSERT INTO "berry_energy" VALUES (304,6,4,35);
INSERT INTO "berry_energy" VALUES (305,6,5,36);
INSERT INTO "berry_energy" VALUES (306,6,6,37);
INSERT INTO "berry_energy" VALUES (307,6,7,38);
INSERT INTO "berry_energy" VALUES (308,6,8,39);
INSERT INTO "berry_energy" VALUES (309,6,9,40);
INSERT INTO "berry_energy" VALUES (310,6,10,41);
INSERT INTO "berry_energy" VALUES (311,6,11,42);
INSERT INTO "berry_energy" VALUES (312,6,12,43);
INSERT INTO "berry_energy" VALUES (313,6,13,44);
INSERT INTO "berry_energy" VALUES (314,6,14,45);
INSERT INTO "berry_energy" VALUES (315,6,15,46);
INSERT INTO "berry_energy" VALUES (316,6,16,47);
INSERT INTO "berry_energy" VALUES (317,6,17,48);
INSERT INTO "berry_energy" VALUES (318,6,18,49);
INSERT INTO "berry_energy" VALUES (319,6,19,50);
INSERT INTO "berry_energy" VALUES (320,6,20,51);
INSERT INTO "berry_energy" VALUES (321,6,21,52);
INSERT INTO "berry_energy" VALUES (322,6,22,54);
INSERT INTO "berry_energy" VALUES (323,6,23,55);
INSERT INTO "berry_energy" VALUES (324,6,24,56);
INSERT INTO "berry_energy" VALUES (325,6,25,58);
INSERT INTO "berry_energy" VALUES (326,6,26,59);
INSERT INTO "berry_energy" VALUES (327,6,27,61);
INSERT INTO "berry_energy" VALUES (328,6,28,62);
INSERT INTO "berry_energy" VALUES (329,6,29,64);
INSERT INTO "berry_energy" VALUES (330,6,30,65);
INSERT INTO "berry_energy" VALUES (331,6,31,67);
INSERT INTO "berry_energy" VALUES (332,6,32,69);
INSERT INTO "berry_energy" VALUES (333,6,33,71);
INSERT INTO "berry_energy" VALUES (334,6,34,72);
INSERT INTO "berry_energy" VALUES (335,6,35,74);
INSERT INTO "berry_energy" VALUES (336,6,36,76);
INSERT INTO "berry_energy" VALUES (337,6,37,78);
INSERT INTO "berry_energy" VALUES (338,6,38,80);
INSERT INTO "berry_energy" VALUES (339,6,39,82);
INSERT INTO "berry_energy" VALUES (340,6,40,84);
INSERT INTO "berry_energy" VALUES (341,6,41,86);
INSERT INTO "berry_energy" VALUES (342,6,42,88);
INSERT INTO "berry_energy" VALUES (343,6,43,90);
INSERT INTO "berry_energy" VALUES (344,6,44,93);
INSERT INTO "berry_energy" VALUES (345,6,45,95);
INSERT INTO "berry_energy" VALUES (346,6,46,97);
INSERT INTO "berry_energy" VALUES (347,6,47,100);
INSERT INTO "berry_energy" VALUES (348,6,48,102);
INSERT INTO "berry_energy" VALUES (349,6,49,105);
INSERT INTO "berry_energy" VALUES (350,6,50,107);
INSERT INTO "berry_energy" VALUES (351,6,51,110);
INSERT INTO "berry_energy" VALUES (352,6,52,113);
INSERT INTO "berry_energy" VALUES (353,6,53,116);
INSERT INTO "berry_energy" VALUES (354,6,54,118);
INSERT INTO "berry_energy" VALUES (355,6,55,121);
INSERT INTO "berry_energy" VALUES (356,6,56,124);
INSERT INTO "berry_energy" VALUES (357,6,57,128);
INSERT INTO "berry_energy" VALUES (358,6,58,131);
INSERT INTO "berry_energy" VALUES (359,6,59,134);
INSERT INTO "berry_energy" VALUES (360,6,60,137);
INSERT INTO "berry_energy" VALUES (361,7,1,27);
INSERT INTO "berry_energy" VALUES (362,7,2,28);
INSERT INTO "berry_energy" VALUES (363,7,3,29);
INSERT INTO "berry_energy" VALUES (364,7,4,30);
INSERT INTO "berry_energy" VALUES (365,7,5,31);
INSERT INTO "berry_energy" VALUES (366,7,6,32);
INSERT INTO "berry_energy" VALUES (367,7,7,33);
INSERT INTO "berry_energy" VALUES (368,7,8,34);
INSERT INTO "berry_energy" VALUES (369,7,9,35);
INSERT INTO "berry_energy" VALUES (370,7,10,36);
INSERT INTO "berry_energy" VALUES (371,7,11,37);
INSERT INTO "berry_energy" VALUES (372,7,12,38);
INSERT INTO "berry_energy" VALUES (373,7,13,39);
INSERT INTO "berry_energy" VALUES (374,7,14,40);
INSERT INTO "berry_energy" VALUES (375,7,15,41);
INSERT INTO "berry_energy" VALUES (376,7,16,42);
INSERT INTO "berry_energy" VALUES (377,7,17,43);
INSERT INTO "berry_energy" VALUES (378,7,18,44);
INSERT INTO "berry_energy" VALUES (379,7,19,45);
INSERT INTO "berry_energy" VALUES (380,7,20,46);
INSERT INTO "berry_energy" VALUES (381,7,21,47);
INSERT INTO "berry_energy" VALUES (382,7,22,48);
INSERT INTO "berry_energy" VALUES (383,7,23,49);
INSERT INTO "berry_energy" VALUES (384,7,24,50);
INSERT INTO "berry_energy" VALUES (385,7,25,51);
INSERT INTO "berry_energy" VALUES (386,7,26,52);
INSERT INTO "berry_energy" VALUES (387,7,27,53);
INSERT INTO "berry_energy" VALUES (388,7,28,54);
INSERT INTO "berry_energy" VALUES (389,7,29,55);
INSERT INTO "berry_energy" VALUES (390,7,30,56);
INSERT INTO "berry_energy" VALUES (391,7,31,57);
INSERT INTO "berry_energy" VALUES (392,7,32,58);
INSERT INTO "berry_energy" VALUES (393,7,33,60);
INSERT INTO "berry_energy" VALUES (394,7,34,61);
INSERT INTO "berry_energy" VALUES (395,7,35,63);
INSERT INTO "berry_energy" VALUES (396,7,36,64);
INSERT INTO "berry_energy" VALUES (397,7,37,66);
INSERT INTO "berry_energy" VALUES (398,7,38,67);
INSERT INTO "berry_energy" VALUES (399,7,39,69);
INSERT INTO "berry_energy" VALUES (400,7,40,71);
INSERT INTO "berry_energy" VALUES (401,7,41,72);
INSERT INTO "berry_energy" VALUES (402,7,42,74);
INSERT INTO "berry_energy" VALUES (403,7,43,76);
INSERT INTO "berry_energy" VALUES (404,7,44,78);
INSERT INTO "berry_energy" VALUES (405,7,45,80);
INSERT INTO "berry_energy" VALUES (406,7,46,82);
INSERT INTO "berry_energy" VALUES (407,7,47,84);
INSERT INTO "berry_energy" VALUES (408,7,48,86);
INSERT INTO "berry_energy" VALUES (409,7,49,88);
INSERT INTO "berry_energy" VALUES (410,7,50,91);
INSERT INTO "berry_energy" VALUES (411,7,51,93);
INSERT INTO "berry_energy" VALUES (412,7,52,95);
INSERT INTO "berry_energy" VALUES (413,7,53,98);
INSERT INTO "berry_energy" VALUES (414,7,54,100);
INSERT INTO "berry_energy" VALUES (415,7,55,102);
INSERT INTO "berry_energy" VALUES (416,7,56,105);
INSERT INTO "berry_energy" VALUES (417,7,57,108);
INSERT INTO "berry_energy" VALUES (418,7,58,110);
INSERT INTO "berry_energy" VALUES (419,7,59,113);
INSERT INTO "berry_energy" VALUES (420,7,60,116);
INSERT INTO "berry_energy" VALUES (421,8,1,32);
INSERT INTO "berry_energy" VALUES (422,8,2,33);
INSERT INTO "berry_energy" VALUES (423,8,3,34);
INSERT INTO "berry_energy" VALUES (424,8,4,35);
INSERT INTO "berry_energy" VALUES (425,8,5,36);
INSERT INTO "berry_energy" VALUES (426,8,6,37);
INSERT INTO "berry_energy" VALUES (427,8,7,38);
INSERT INTO "berry_energy" VALUES (428,8,8,39);
INSERT INTO "berry_energy" VALUES (429,8,9,40);
INSERT INTO "berry_energy" VALUES (430,8,10,41);
INSERT INTO "berry_energy" VALUES (431,8,11,42);
INSERT INTO "berry_energy" VALUES (432,8,12,43);
INSERT INTO "berry_energy" VALUES (433,8,13,44);
INSERT INTO "berry_energy" VALUES (434,8,14,45);
INSERT INTO "berry_energy" VALUES (435,8,15,46);
INSERT INTO "berry_energy" VALUES (436,8,16,47);
INSERT INTO "berry_energy" VALUES (437,8,17,48);
INSERT INTO "berry_energy" VALUES (438,8,18,49);
INSERT INTO "berry_energy" VALUES (439,8,19,50);
INSERT INTO "berry_energy" VALUES (440,8,20,51);
INSERT INTO "berry_energy" VALUES (441,8,21,52);
INSERT INTO "berry_energy" VALUES (442,8,22,54);
INSERT INTO "berry_energy" VALUES (443,8,23,55);
INSERT INTO "berry_energy" VALUES (444,8,24,56);
INSERT INTO "berry_energy" VALUES (445,8,25,58);
INSERT INTO "berry_energy" VALUES (446,8,26,59);
INSERT INTO "berry_energy" VALUES (447,8,27,61);
INSERT INTO "berry_energy" VALUES (448,8,28,62);
INSERT INTO "berry_energy" VALUES (449,8,29,64);
INSERT INTO "berry_energy" VALUES (450,8,30,65);
INSERT INTO "berry_energy" VALUES (451,8,31,67);
INSERT INTO "berry_energy" VALUES (452,8,32,69);
INSERT INTO "berry_energy" VALUES (453,8,33,71);
INSERT INTO "berry_energy" VALUES (454,8,34,72);
INSERT INTO "berry_energy" VALUES (455,8,35,74);
INSERT INTO "berry_energy" VALUES (456,8,36,76);
INSERT INTO "berry_energy" VALUES (457,8,37,78);
INSERT INTO "berry_energy" VALUES (458,8,38,80);
INSERT INTO "berry_energy" VALUES (459,8,39,82);
INSERT INTO "berry_energy" VALUES (460,8,40,84);
INSERT INTO "berry_energy" VALUES (461,8,41,86);
INSERT INTO "berry_energy" VALUES (462,8,42,88);
INSERT INTO "berry_energy" VALUES (463,8,43,90);
INSERT INTO "berry_energy" VALUES (464,8,44,93);
INSERT INTO "berry_energy" VALUES (465,8,45,95);
INSERT INTO "berry_energy" VALUES (466,8,46,97);
INSERT INTO "berry_energy" VALUES (467,8,47,100);
INSERT INTO "berry_energy" VALUES (468,8,48,102);
INSERT INTO "berry_energy" VALUES (469,8,49,105);
INSERT INTO "berry_energy" VALUES (470,8,50,107);
INSERT INTO "berry_energy" VALUES (471,8,51,110);
INSERT INTO "berry_energy" VALUES (472,8,52,113);
INSERT INTO "berry_energy" VALUES (473,8,53,116);
INSERT INTO "berry_energy" VALUES (474,8,54,118);
INSERT INTO "berry_energy" VALUES (475,8,55,121);
INSERT INTO "berry_energy" VALUES (476,8,56,124);
INSERT INTO "berry_energy" VALUES (477,8,57,128);
INSERT INTO "berry_energy" VALUES (478,8,58,131);
INSERT INTO "berry_energy" VALUES (479,8,59,134);
INSERT INTO "berry_energy" VALUES (480,8,60,137);
INSERT INTO "berry_energy" VALUES (481,9,1,29);
INSERT INTO "berry_energy" VALUES (482,9,2,30);
INSERT INTO "berry_energy" VALUES (483,9,3,31);
INSERT INTO "berry_energy" VALUES (484,9,4,32);
INSERT INTO "berry_energy" VALUES (485,9,5,33);
INSERT INTO "berry_energy" VALUES (486,9,6,34);
INSERT INTO "berry_energy" VALUES (487,9,7,35);
INSERT INTO "berry_energy" VALUES (488,9,8,36);
INSERT INTO "berry_energy" VALUES (489,9,9,37);
INSERT INTO "berry_energy" VALUES (490,9,10,38);
INSERT INTO "berry_energy" VALUES (491,9,11,39);
INSERT INTO "berry_energy" VALUES (492,9,12,40);
INSERT INTO "berry_energy" VALUES (493,9,13,41);
INSERT INTO "berry_energy" VALUES (494,9,14,42);
INSERT INTO "berry_energy" VALUES (495,9,15,43);
INSERT INTO "berry_energy" VALUES (496,9,16,44);
INSERT INTO "berry_energy" VALUES (497,9,17,45);
INSERT INTO "berry_energy" VALUES (498,9,18,46);
INSERT INTO "berry_energy" VALUES (499,9,19,47);
INSERT INTO "berry_energy" VALUES (500,9,20,48);
INSERT INTO "berry_energy" VALUES (501,9,21,49);
INSERT INTO "berry_energy" VALUES (502,9,22,50);
INSERT INTO "berry_energy" VALUES (503,9,23,51);
INSERT INTO "berry_energy" VALUES (504,9,24,52);
INSERT INTO "berry_energy" VALUES (505,9,25,53);
INSERT INTO "berry_energy" VALUES (506,9,26,54);
INSERT INTO "berry_energy" VALUES (507,9,27,55);
INSERT INTO "berry_energy" VALUES (508,9,28,56);
INSERT INTO "berry_energy" VALUES (509,9,29,58);
INSERT INTO "berry_energy" VALUES (510,9,30,59);
INSERT INTO "berry_energy" VALUES (511,9,31,61);
INSERT INTO "berry_energy" VALUES (512,9,32,62);
INSERT INTO "berry_energy" VALUES (513,9,33,64);
INSERT INTO "berry_energy" VALUES (514,9,34,66);
INSERT INTO "berry_energy" VALUES (515,9,35,67);
INSERT INTO "berry_energy" VALUES (516,9,36,69);
INSERT INTO "berry_energy" VALUES (517,9,37,71);
INSERT INTO "berry_energy" VALUES (518,9,38,72);
INSERT INTO "berry_energy" VALUES (519,9,39,74);
INSERT INTO "berry_energy" VALUES (520,9,40,76);
INSERT INTO "berry_energy" VALUES (521,9,41,78);
INSERT INTO "berry_energy" VALUES (522,9,42,80);
INSERT INTO "berry_energy" VALUES (523,9,43,82);
INSERT INTO "berry_energy" VALUES (524,9,44,84);
INSERT INTO "berry_energy" VALUES (525,9,45,86);
INSERT INTO "berry_energy" VALUES (526,9,46,88);
INSERT INTO "berry_energy" VALUES (527,9,47,90);
INSERT INTO "berry_energy" VALUES (528,9,48,93);
INSERT INTO "berry_energy" VALUES (529,9,49,95);
INSERT INTO "berry_energy" VALUES (530,9,50,97);
INSERT INTO "berry_energy" VALUES (531,9,51,100);
INSERT INTO "berry_energy" VALUES (532,9,52,102);
INSERT INTO "berry_energy" VALUES (533,9,53,105);
INSERT INTO "berry_energy" VALUES (534,9,54,107);
INSERT INTO "berry_energy" VALUES (535,9,55,110);
INSERT INTO "berry_energy" VALUES (536,9,56,113);
INSERT INTO "berry_energy" VALUES (537,9,57,116);
INSERT INTO "berry_energy" VALUES (538,9,58,118);
INSERT INTO "berry_energy" VALUES (539,9,59,121);
INSERT INTO "berry_energy" VALUES (540,9,60,124);
INSERT INTO "berry_energy" VALUES (541,10,1,24);
INSERT INTO "berry_energy" VALUES (542,10,2,25);
INSERT INTO "berry_energy" VALUES (543,10,3,26);
INSERT INTO "berry_energy" VALUES (544,10,4,27);
INSERT INTO "berry_energy" VALUES (545,10,5,28);
INSERT INTO "berry_energy" VALUES (546,10,6,29);
INSERT INTO "berry_energy" VALUES (547,10,7,30);
INSERT INTO "berry_energy" VALUES (548,10,8,31);
INSERT INTO "berry_energy" VALUES (549,10,9,32);
INSERT INTO "berry_energy" VALUES (550,10,10,33);
INSERT INTO "berry_energy" VALUES (551,10,11,34);
INSERT INTO "berry_energy" VALUES (552,10,12,35);
INSERT INTO "berry_energy" VALUES (553,10,13,36);
INSERT INTO "berry_energy" VALUES (554,10,14,37);
INSERT INTO "berry_energy" VALUES (555,10,15,38);
INSERT INTO "berry_energy" VALUES (556,10,16,39);
INSERT INTO "berry_energy" VALUES (557,10,17,40);
INSERT INTO "berry_energy" VALUES (558,10,18,41);
INSERT INTO "berry_energy" VALUES (559,10,19,42);
INSERT INTO "berry_energy" VALUES (560,10,20,43);
INSERT INTO "berry_energy" VALUES (561,10,21,44);
INSERT INTO "berry_energy" VALUES (562,10,22,45);
INSERT INTO "berry_energy" VALUES (563,10,23,46);
INSERT INTO "berry_energy" VALUES (564,10,24,47);
INSERT INTO "berry_energy" VALUES (565,10,25,48);
INSERT INTO "berry_energy" VALUES (566,10,26,49);
INSERT INTO "berry_energy" VALUES (567,10,27,50);
INSERT INTO "berry_energy" VALUES (568,10,28,51);
INSERT INTO "berry_energy" VALUES (569,10,29,52);
INSERT INTO "berry_energy" VALUES (570,10,30,53);
INSERT INTO "berry_energy" VALUES (571,10,31,54);
INSERT INTO "berry_energy" VALUES (572,10,32,55);
INSERT INTO "berry_energy" VALUES (573,10,33,56);
INSERT INTO "berry_energy" VALUES (574,10,34,57);
INSERT INTO "berry_energy" VALUES (575,10,35,58);
INSERT INTO "berry_energy" VALUES (576,10,36,59);
INSERT INTO "berry_energy" VALUES (577,10,37,60);
INSERT INTO "berry_energy" VALUES (578,10,38,61);
INSERT INTO "berry_energy" VALUES (579,10,39,62);
INSERT INTO "berry_energy" VALUES (580,10,40,63);
INSERT INTO "berry_energy" VALUES (581,10,41,64);
INSERT INTO "berry_energy" VALUES (582,10,42,66);
INSERT INTO "berry_energy" VALUES (583,10,43,68);
INSERT INTO "berry_energy" VALUES (584,10,44,69);
INSERT INTO "berry_energy" VALUES (585,10,45,71);
INSERT INTO "berry_energy" VALUES (586,10,46,73);
INSERT INTO "berry_energy" VALUES (587,10,47,75);
INSERT INTO "berry_energy" VALUES (588,10,48,77);
INSERT INTO "berry_energy" VALUES (589,10,49,79);
INSERT INTO "berry_energy" VALUES (590,10,50,80);
INSERT INTO "berry_energy" VALUES (591,10,51,82);
INSERT INTO "berry_energy" VALUES (592,10,52,85);
INSERT INTO "berry_energy" VALUES (593,10,53,87);
INSERT INTO "berry_energy" VALUES (594,10,54,89);
INSERT INTO "berry_energy" VALUES (595,10,55,91);
INSERT INTO "berry_energy" VALUES (596,10,56,93);
INSERT INTO "berry_energy" VALUES (597,10,57,96);
INSERT INTO "berry_energy" VALUES (598,10,58,98);
INSERT INTO "berry_energy" VALUES (599,10,59,101);
INSERT INTO "berry_energy" VALUES (600,10,60,103);
INSERT INTO "berry_energy" VALUES (601,11,1,26);
INSERT INTO "berry_energy" VALUES (602,11,2,27);
INSERT INTO "berry_energy" VALUES (603,11,3,28);
INSERT INTO "berry_energy" VALUES (604,11,4,29);
INSERT INTO "berry_energy" VALUES (605,11,5,30);
INSERT INTO "berry_energy" VALUES (606,11,6,31);
INSERT INTO "berry_energy" VALUES (607,11,7,32);
INSERT INTO "berry_energy" VALUES (608,11,8,33);
INSERT INTO "berry_energy" VALUES (609,11,9,34);
INSERT INTO "berry_energy" VALUES (610,11,10,35);
INSERT INTO "berry_energy" VALUES (611,11,11,36);
INSERT INTO "berry_energy" VALUES (612,11,12,37);
INSERT INTO "berry_energy" VALUES (613,11,13,38);
INSERT INTO "berry_energy" VALUES (614,11,14,39);
INSERT INTO "berry_energy" VALUES (615,11,15,40);
INSERT INTO "berry_energy" VALUES (616,11,16,41);
INSERT INTO "berry_energy" VALUES (617,11,17,42);
INSERT INTO "berry_energy" VALUES (618,11,18,43);
INSERT INTO "berry_energy" VALUES (619,11,19,44);
INSERT INTO "berry_energy" VALUES (620,11,20,45);
INSERT INTO "berry_energy" VALUES (621,11,21,46);
INSERT INTO "berry_energy" VALUES (622,11,22,47);
INSERT INTO "berry_energy" VALUES (623,11,23,48);
INSERT INTO "berry_energy" VALUES (624,11,24,49);
INSERT INTO "berry_energy" VALUES (625,11,25,50);
INSERT INTO "berry_energy" VALUES (626,11,26,51);
INSERT INTO "berry_energy" VALUES (627,11,27,52);
INSERT INTO "berry_energy" VALUES (628,11,28,53);
INSERT INTO "berry_energy" VALUES (629,11,29,54);
INSERT INTO "berry_energy" VALUES (630,11,30,55);
INSERT INTO "berry_energy" VALUES (631,11,31,56);
INSERT INTO "berry_energy" VALUES (632,11,32,57);
INSERT INTO "berry_energy" VALUES (633,11,33,58);
INSERT INTO "berry_energy" VALUES (634,11,34,59);
INSERT INTO "berry_energy" VALUES (635,11,35,60);
INSERT INTO "berry_energy" VALUES (636,11,36,62);
INSERT INTO "berry_energy" VALUES (637,11,37,63);
INSERT INTO "berry_energy" VALUES (638,11,38,65);
INSERT INTO "berry_energy" VALUES (639,11,39,66);
INSERT INTO "berry_energy" VALUES (640,11,40,68);
INSERT INTO "berry_energy" VALUES (641,11,41,70);
INSERT INTO "berry_energy" VALUES (642,11,42,72);
INSERT INTO "berry_energy" VALUES (643,11,43,73);
INSERT INTO "berry_energy" VALUES (644,11,44,75);
INSERT INTO "berry_energy" VALUES (645,11,45,77);
INSERT INTO "berry_energy" VALUES (646,11,46,79);
INSERT INTO "berry_energy" VALUES (647,11,47,81);
INSERT INTO "berry_energy" VALUES (648,11,48,83);
INSERT INTO "berry_energy" VALUES (649,11,49,85);
INSERT INTO "berry_energy" VALUES (650,11,50,87);
INSERT INTO "berry_energy" VALUES (651,11,51,89);
INSERT INTO "berry_energy" VALUES (652,11,52,92);
INSERT INTO "berry_energy" VALUES (653,11,53,94);
INSERT INTO "berry_energy" VALUES (654,11,54,96);
INSERT INTO "berry_energy" VALUES (655,11,55,99);
INSERT INTO "berry_energy" VALUES (656,11,56,101);
INSERT INTO "berry_energy" VALUES (657,11,57,104);
INSERT INTO "berry_energy" VALUES (658,11,58,106);
INSERT INTO "berry_energy" VALUES (659,11,59,109);
INSERT INTO "berry_energy" VALUES (660,11,60,112);
INSERT INTO "berry_energy" VALUES (661,12,1,24);
INSERT INTO "berry_energy" VALUES (662,12,2,25);
INSERT INTO "berry_energy" VALUES (663,12,3,26);
INSERT INTO "berry_energy" VALUES (664,12,4,27);
INSERT INTO "berry_energy" VALUES (665,12,5,28);
INSERT INTO "berry_energy" VALUES (666,12,6,29);
INSERT INTO "berry_energy" VALUES (667,12,7,30);
INSERT INTO "berry_energy" VALUES (668,12,8,31);
INSERT INTO "berry_energy" VALUES (669,12,9,32);
INSERT INTO "berry_energy" VALUES (670,12,10,33);
INSERT INTO "berry_energy" VALUES (671,12,11,34);
INSERT INTO "berry_energy" VALUES (672,12,12,35);
INSERT INTO "berry_energy" VALUES (673,12,13,36);
INSERT INTO "berry_energy" VALUES (674,12,14,37);
INSERT INTO "berry_energy" VALUES (675,12,15,38);
INSERT INTO "berry_energy" VALUES (676,12,16,39);
INSERT INTO "berry_energy" VALUES (677,12,17,40);
INSERT INTO "berry_energy" VALUES (678,12,18,41);
INSERT INTO "berry_energy" VALUES (679,12,19,42);
INSERT INTO "berry_energy" VALUES (680,12,20,43);
INSERT INTO "berry_energy" VALUES (681,12,21,44);
INSERT INTO "berry_energy" VALUES (682,12,22,45);
INSERT INTO "berry_energy" VALUES (683,12,23,46);
INSERT INTO "berry_energy" VALUES (684,12,24,47);
INSERT INTO "berry_energy" VALUES (685,12,25,48);
INSERT INTO "berry_energy" VALUES (686,12,26,49);
INSERT INTO "berry_energy" VALUES (687,12,27,50);
INSERT INTO "berry_energy" VALUES (688,12,28,51);
INSERT INTO "berry_energy" VALUES (689,12,29,52);
INSERT INTO "berry_energy" VALUES (690,12,30,53);
INSERT INTO "berry_energy" VALUES (691,12,31,54);
INSERT INTO "berry_energy" VALUES (692,12,32,55);
INSERT INTO "berry_energy" VALUES (693,12,33,56);
INSERT INTO "berry_energy" VALUES (694,12,34,57);
INSERT INTO "berry_energy" VALUES (695,12,35,58);
INSERT INTO "berry_energy" VALUES (696,12,36,59);
INSERT INTO "berry_energy" VALUES (697,12,37,60);
INSERT INTO "berry_energy" VALUES (698,12,38,61);
INSERT INTO "berry_energy" VALUES (699,12,39,62);
INSERT INTO "berry_energy" VALUES (700,12,40,63);
INSERT INTO "berry_energy" VALUES (701,12,41,64);
INSERT INTO "berry_energy" VALUES (702,12,42,66);
INSERT INTO "berry_energy" VALUES (703,12,43,68);
INSERT INTO "berry_energy" VALUES (704,12,44,69);
INSERT INTO "berry_energy" VALUES (705,12,45,71);
INSERT INTO "berry_energy" VALUES (706,12,46,73);
INSERT INTO "berry_energy" VALUES (707,12,47,75);
INSERT INTO "berry_energy" VALUES (708,12,48,77);
INSERT INTO "berry_energy" VALUES (709,12,49,79);
INSERT INTO "berry_energy" VALUES (710,12,50,80);
INSERT INTO "berry_energy" VALUES (711,12,51,82);
INSERT INTO "berry_energy" VALUES (712,12,52,85);
INSERT INTO "berry_energy" VALUES (713,12,53,87);
INSERT INTO "berry_energy" VALUES (714,12,54,89);
INSERT INTO "berry_energy" VALUES (715,12,55,91);
INSERT INTO "berry_energy" VALUES (716,12,56,93);
INSERT INTO "berry_energy" VALUES (717,12,57,96);
INSERT INTO "berry_energy" VALUES (718,12,58,98);
INSERT INTO "berry_energy" VALUES (719,12,59,101);
INSERT INTO "berry_energy" VALUES (720,12,60,103);
INSERT INTO "berry_energy" VALUES (721,13,1,30);
INSERT INTO "berry_energy" VALUES (722,13,2,31);
INSERT INTO "berry_energy" VALUES (723,13,3,32);
INSERT INTO "berry_energy" VALUES (724,13,4,33);
INSERT INTO "berry_energy" VALUES (725,13,5,34);
INSERT INTO "berry_energy" VALUES (726,13,6,35);
INSERT INTO "berry_energy" VALUES (727,13,7,36);
INSERT INTO "berry_energy" VALUES (728,13,8,37);
INSERT INTO "berry_energy" VALUES (729,13,9,38);
INSERT INTO "berry_energy" VALUES (730,13,10,39);
INSERT INTO "berry_energy" VALUES (731,13,11,40);
INSERT INTO "berry_energy" VALUES (732,13,12,41);
INSERT INTO "berry_energy" VALUES (733,13,13,42);
INSERT INTO "berry_energy" VALUES (734,13,14,43);
INSERT INTO "berry_energy" VALUES (735,13,15,44);
INSERT INTO "berry_energy" VALUES (736,13,16,45);
INSERT INTO "berry_energy" VALUES (737,13,17,46);
INSERT INTO "berry_energy" VALUES (738,13,18,47);
INSERT INTO "berry_energy" VALUES (739,13,19,48);
INSERT INTO "berry_energy" VALUES (740,13,20,49);
INSERT INTO "berry_energy" VALUES (741,13,21,50);
INSERT INTO "berry_energy" VALUES (742,13,22,51);
INSERT INTO "berry_energy" VALUES (743,13,23,52);
INSERT INTO "berry_energy" VALUES (744,13,24,53);
INSERT INTO "berry_energy" VALUES (745,13,25,54);
INSERT INTO "berry_energy" VALUES (746,13,26,56);
INSERT INTO "berry_energy" VALUES (747,13,27,57);
INSERT INTO "berry_energy" VALUES (748,13,28,58);
INSERT INTO "berry_energy" VALUES (749,13,29,60);
INSERT INTO "berry_energy" VALUES (750,13,30,61);
INSERT INTO "berry_energy" VALUES (751,13,31,63);
INSERT INTO "berry_energy" VALUES (752,13,32,65);
INSERT INTO "berry_energy" VALUES (753,13,33,66);
INSERT INTO "berry_energy" VALUES (754,13,34,68);
INSERT INTO "berry_energy" VALUES (755,13,35,69);
INSERT INTO "berry_energy" VALUES (756,13,36,71);
INSERT INTO "berry_energy" VALUES (757,13,37,73);
INSERT INTO "berry_energy" VALUES (758,13,38,75);
INSERT INTO "berry_energy" VALUES (759,13,39,77);
INSERT INTO "berry_energy" VALUES (760,13,40,79);
INSERT INTO "berry_energy" VALUES (761,13,41,81);
INSERT INTO "berry_energy" VALUES (762,13,42,83);
INSERT INTO "berry_energy" VALUES (763,13,43,85);
INSERT INTO "berry_energy" VALUES (764,13,44,87);
INSERT INTO "berry_energy" VALUES (765,13,45,89);
INSERT INTO "berry_energy" VALUES (766,13,46,91);
INSERT INTO "berry_energy" VALUES (767,13,47,93);
INSERT INTO "berry_energy" VALUES (768,13,48,96);
INSERT INTO "berry_energy" VALUES (769,13,49,98);
INSERT INTO "berry_energy" VALUES (770,13,50,101);
INSERT INTO "berry_energy" VALUES (771,13,51,103);
INSERT INTO "berry_energy" VALUES (772,13,52,106);
INSERT INTO "berry_energy" VALUES (773,13,53,108);
INSERT INTO "berry_energy" VALUES (774,13,54,111);
INSERT INTO "berry_energy" VALUES (775,13,55,114);
INSERT INTO "berry_energy" VALUES (776,13,56,117);
INSERT INTO "berry_energy" VALUES (777,13,57,120);
INSERT INTO "berry_energy" VALUES (778,13,58,123);
INSERT INTO "berry_energy" VALUES (779,13,59,126);
INSERT INTO "berry_energy" VALUES (780,13,60,129);
INSERT INTO "berry_energy" VALUES (781,14,1,26);
INSERT INTO "berry_energy" VALUES (782,14,2,27);
INSERT INTO "berry_energy" VALUES (783,14,3,28);
INSERT INTO "berry_energy" VALUES (784,14,4,29);
INSERT INTO "berry_energy" VALUES (785,14,5,30);
INSERT INTO "berry_energy" VALUES (786,14,6,31);
INSERT INTO "berry_energy" VALUES (787,14,7,32);
INSERT INTO "berry_energy" VALUES (788,14,8,33);
INSERT INTO "berry_energy" VALUES (789,14,9,34);
INSERT INTO "berry_energy" VALUES (790,14,10,35);
INSERT INTO "berry_energy" VALUES (791,14,11,36);
INSERT INTO "berry_energy" VALUES (792,14,12,37);
INSERT INTO "berry_energy" VALUES (793,14,13,38);
INSERT INTO "berry_energy" VALUES (794,14,14,39);
INSERT INTO "berry_energy" VALUES (795,14,15,40);
INSERT INTO "berry_energy" VALUES (796,14,16,41);
INSERT INTO "berry_energy" VALUES (797,14,17,42);
INSERT INTO "berry_energy" VALUES (798,14,18,43);
INSERT INTO "berry_energy" VALUES (799,14,19,44);
INSERT INTO "berry_energy" VALUES (800,14,20,45);
INSERT INTO "berry_energy" VALUES (801,14,21,46);
INSERT INTO "berry_energy" VALUES (802,14,22,47);
INSERT INTO "berry_energy" VALUES (803,14,23,48);
INSERT INTO "berry_energy" VALUES (804,14,24,49);
INSERT INTO "berry_energy" VALUES (805,14,25,50);
INSERT INTO "berry_energy" VALUES (806,14,26,51);
INSERT INTO "berry_energy" VALUES (807,14,27,52);
INSERT INTO "berry_energy" VALUES (808,14,28,53);
INSERT INTO "berry_energy" VALUES (809,14,29,54);
INSERT INTO "berry_energy" VALUES (810,14,30,55);
INSERT INTO "berry_energy" VALUES (811,14,31,56);
INSERT INTO "berry_energy" VALUES (812,14,32,57);
INSERT INTO "berry_energy" VALUES (813,14,33,58);
INSERT INTO "berry_energy" VALUES (814,14,34,59);
INSERT INTO "berry_energy" VALUES (815,14,35,60);
INSERT INTO "berry_energy" VALUES (816,14,36,62);
INSERT INTO "berry_energy" VALUES (817,14,37,63);
INSERT INTO "berry_energy" VALUES (818,14,38,65);
INSERT INTO "berry_energy" VALUES (819,14,39,66);
INSERT INTO "berry_energy" VALUES (820,14,40,68);
INSERT INTO "berry_energy" VALUES (821,14,41,70);
INSERT INTO "berry_energy" VALUES (822,14,42,72);
INSERT INTO "berry_energy" VALUES (823,14,43,73);
INSERT INTO "berry_energy" VALUES (824,14,44,75);
INSERT INTO "berry_energy" VALUES (825,14,45,77);
INSERT INTO "berry_energy" VALUES (826,14,46,79);
INSERT INTO "berry_energy" VALUES (827,14,47,81);
INSERT INTO "berry_energy" VALUES (828,14,48,83);
INSERT INTO "berry_energy" VALUES (829,14,49,85);
INSERT INTO "berry_energy" VALUES (830,14,50,87);
INSERT INTO "berry_energy" VALUES (831,14,51,89);
INSERT INTO "berry_energy" VALUES (832,14,52,92);
INSERT INTO "berry_energy" VALUES (833,14,53,94);
INSERT INTO "berry_energy" VALUES (834,14,54,96);
INSERT INTO "berry_energy" VALUES (835,14,55,99);
INSERT INTO "berry_energy" VALUES (836,14,56,101);
INSERT INTO "berry_energy" VALUES (837,14,57,104);
INSERT INTO "berry_energy" VALUES (838,14,58,106);
INSERT INTO "berry_energy" VALUES (839,14,59,109);
INSERT INTO "berry_energy" VALUES (840,14,60,112);
INSERT INTO "berry_energy" VALUES (841,15,1,35);
INSERT INTO "berry_energy" VALUES (842,15,2,36);
INSERT INTO "berry_energy" VALUES (843,15,3,37);
INSERT INTO "berry_energy" VALUES (844,15,4,38);
INSERT INTO "berry_energy" VALUES (845,15,5,39);
INSERT INTO "berry_energy" VALUES (846,15,6,40);
INSERT INTO "berry_energy" VALUES (847,15,7,41);
INSERT INTO "berry_energy" VALUES (848,15,8,42);
INSERT INTO "berry_energy" VALUES (849,15,9,43);
INSERT INTO "berry_energy" VALUES (850,15,10,44);
INSERT INTO "berry_energy" VALUES (851,15,11,45);
INSERT INTO "berry_energy" VALUES (852,15,12,46);
INSERT INTO "berry_energy" VALUES (853,15,13,47);
INSERT INTO "berry_energy" VALUES (854,15,14,48);
INSERT INTO "berry_energy" VALUES (855,15,15,49);
INSERT INTO "berry_energy" VALUES (856,15,16,51);
INSERT INTO "berry_energy" VALUES (857,15,17,52);
INSERT INTO "berry_energy" VALUES (858,15,18,53);
INSERT INTO "berry_energy" VALUES (859,15,19,55);
INSERT INTO "berry_energy" VALUES (860,15,20,56);
INSERT INTO "berry_energy" VALUES (861,15,21,57);
INSERT INTO "berry_energy" VALUES (862,15,22,59);
INSERT INTO "berry_energy" VALUES (863,15,23,60);
INSERT INTO "berry_energy" VALUES (864,15,24,62);
INSERT INTO "berry_energy" VALUES (865,15,25,63);
INSERT INTO "berry_energy" VALUES (866,15,26,65);
INSERT INTO "berry_energy" VALUES (867,15,27,67);
INSERT INTO "berry_energy" VALUES (868,15,28,68);
INSERT INTO "berry_energy" VALUES (869,15,29,70);
INSERT INTO "berry_energy" VALUES (870,15,30,72);
INSERT INTO "berry_energy" VALUES (871,15,31,73);
INSERT INTO "berry_energy" VALUES (872,15,32,75);
INSERT INTO "berry_energy" VALUES (873,15,33,77);
INSERT INTO "berry_energy" VALUES (874,15,34,79);
INSERT INTO "berry_energy" VALUES (875,15,35,81);
INSERT INTO "berry_energy" VALUES (876,15,36,83);
INSERT INTO "berry_energy" VALUES (877,15,37,85);
INSERT INTO "berry_energy" VALUES (878,15,38,87);
INSERT INTO "berry_energy" VALUES (879,15,39,89);
INSERT INTO "berry_energy" VALUES (880,15,40,92);
INSERT INTO "berry_energy" VALUES (881,15,41,94);
INSERT INTO "berry_energy" VALUES (882,15,42,96);
INSERT INTO "berry_energy" VALUES (883,15,43,99);
INSERT INTO "berry_energy" VALUES (884,15,44,101);
INSERT INTO "berry_energy" VALUES (885,15,45,104);
INSERT INTO "berry_energy" VALUES (886,15,46,106);
INSERT INTO "berry_energy" VALUES (887,15,47,109);
INSERT INTO "berry_energy" VALUES (888,15,48,112);
INSERT INTO "berry_energy" VALUES (889,15,49,115);
INSERT INTO "berry_energy" VALUES (890,15,50,117);
INSERT INTO "berry_energy" VALUES (891,15,51,120);
INSERT INTO "berry_energy" VALUES (892,15,52,123);
INSERT INTO "berry_energy" VALUES (893,15,53,126);
INSERT INTO "berry_energy" VALUES (894,15,54,130);
INSERT INTO "berry_energy" VALUES (895,15,55,133);
INSERT INTO "berry_energy" VALUES (896,15,56,136);
INSERT INTO "berry_energy" VALUES (897,15,57,140);
INSERT INTO "berry_energy" VALUES (898,15,58,143);
INSERT INTO "berry_energy" VALUES (899,15,59,147);
INSERT INTO "berry_energy" VALUES (900,15,60,150);
INSERT INTO "berry_energy" VALUES (901,16,1,31);
INSERT INTO "berry_energy" VALUES (902,16,2,32);
INSERT INTO "berry_energy" VALUES (903,16,3,33);
INSERT INTO "berry_energy" VALUES (904,16,4,34);
INSERT INTO "berry_energy" VALUES (905,16,5,35);
INSERT INTO "berry_energy" VALUES (906,16,6,36);
INSERT INTO "berry_energy" VALUES (907,16,7,37);
INSERT INTO "berry_energy" VALUES (908,16,8,38);
INSERT INTO "berry_energy" VALUES (909,16,9,39);
INSERT INTO "berry_energy" VALUES (910,16,10,40);
INSERT INTO "berry_energy" VALUES (911,16,11,41);
INSERT INTO "berry_energy" VALUES (912,16,12,42);
INSERT INTO "berry_energy" VALUES (913,16,13,43);
INSERT INTO "berry_energy" VALUES (914,16,14,44);
INSERT INTO "berry_energy" VALUES (915,16,15,45);
INSERT INTO "berry_energy" VALUES (916,16,16,46);
INSERT INTO "berry_energy" VALUES (917,16,17,47);
INSERT INTO "berry_energy" VALUES (918,16,18,48);
INSERT INTO "berry_energy" VALUES (919,16,19,49);
INSERT INTO "berry_energy" VALUES (920,16,20,50);
INSERT INTO "berry_energy" VALUES (921,16,21,51);
INSERT INTO "berry_energy" VALUES (922,16,22,52);
INSERT INTO "berry_energy" VALUES (923,16,23,53);
INSERT INTO "berry_energy" VALUES (924,16,24,55);
INSERT INTO "berry_energy" VALUES (925,16,25,56);
INSERT INTO "berry_energy" VALUES (926,16,26,57);
INSERT INTO "berry_energy" VALUES (927,16,27,59);
INSERT INTO "berry_energy" VALUES (928,16,28,60);
INSERT INTO "berry_energy" VALUES (929,16,29,62);
INSERT INTO "berry_energy" VALUES (930,16,30,63);
INSERT INTO "berry_energy" VALUES (931,16,31,65);
INSERT INTO "berry_energy" VALUES (932,16,32,67);
INSERT INTO "berry_energy" VALUES (933,16,33,68);
INSERT INTO "berry_energy" VALUES (934,16,34,70);
INSERT INTO "berry_energy" VALUES (935,16,35,72);
INSERT INTO "berry_energy" VALUES (936,16,36,74);
INSERT INTO "berry_energy" VALUES (937,16,37,75);
INSERT INTO "berry_energy" VALUES (938,16,38,77);
INSERT INTO "berry_energy" VALUES (939,16,39,79);
INSERT INTO "berry_energy" VALUES (940,16,40,81);
INSERT INTO "berry_energy" VALUES (941,16,41,83);
INSERT INTO "berry_energy" VALUES (942,16,42,85);
INSERT INTO "berry_energy" VALUES (943,16,43,87);
INSERT INTO "berry_energy" VALUES (944,16,44,90);
INSERT INTO "berry_energy" VALUES (945,16,45,92);
INSERT INTO "berry_energy" VALUES (946,16,46,94);
INSERT INTO "berry_energy" VALUES (947,16,47,97);
INSERT INTO "berry_energy" VALUES (948,16,48,99);
INSERT INTO "berry_energy" VALUES (949,16,49,101);
INSERT INTO "berry_energy" VALUES (950,16,50,104);
INSERT INTO "berry_energy" VALUES (951,16,51,107);
INSERT INTO "berry_energy" VALUES (952,16,52,109);
INSERT INTO "berry_energy" VALUES (953,16,53,112);
INSERT INTO "berry_energy" VALUES (954,16,54,115);
INSERT INTO "berry_energy" VALUES (955,16,55,118);
INSERT INTO "berry_energy" VALUES (956,16,56,121);
INSERT INTO "berry_energy" VALUES (957,16,57,124);
INSERT INTO "berry_energy" VALUES (958,16,58,127);
INSERT INTO "berry_energy" VALUES (959,16,59,130);
INSERT INTO "berry_energy" VALUES (960,16,60,133);
INSERT INTO "berry_energy" VALUES (961,17,1,33);
INSERT INTO "berry_energy" VALUES (962,17,2,34);
INSERT INTO "berry_energy" VALUES (963,17,3,35);
INSERT INTO "berry_energy" VALUES (964,17,4,36);
INSERT INTO "berry_energy" VALUES (965,17,5,37);
INSERT INTO "berry_energy" VALUES (966,17,6,38);
INSERT INTO "berry_energy" VALUES (967,17,7,39);
INSERT INTO "berry_energy" VALUES (968,17,8,40);
INSERT INTO "berry_energy" VALUES (969,17,9,41);
INSERT INTO "berry_energy" VALUES (970,17,10,42);
INSERT INTO "berry_energy" VALUES (971,17,11,43);
INSERT INTO "berry_energy" VALUES (972,17,12,44);
INSERT INTO "berry_energy" VALUES (973,17,13,45);
INSERT INTO "berry_energy" VALUES (974,17,14,46);
INSERT INTO "berry_energy" VALUES (975,17,15,47);
INSERT INTO "berry_energy" VALUES (976,17,16,48);
INSERT INTO "berry_energy" VALUES (977,17,17,49);
INSERT INTO "berry_energy" VALUES (978,17,18,50);
INSERT INTO "berry_energy" VALUES (979,17,19,51);
INSERT INTO "berry_energy" VALUES (980,17,20,53);
INSERT INTO "berry_energy" VALUES (981,17,21,54);
INSERT INTO "berry_energy" VALUES (982,17,22,55);
INSERT INTO "berry_energy" VALUES (983,17,23,57);
INSERT INTO "berry_energy" VALUES (984,17,24,58);
INSERT INTO "berry_energy" VALUES (985,17,25,60);
INSERT INTO "berry_energy" VALUES (986,17,26,61);
INSERT INTO "berry_energy" VALUES (987,17,27,63);
INSERT INTO "berry_energy" VALUES (988,17,28,64);
INSERT INTO "berry_energy" VALUES (989,17,29,66);
INSERT INTO "berry_energy" VALUES (990,17,30,68);
INSERT INTO "berry_energy" VALUES (991,17,31,69);
INSERT INTO "berry_energy" VALUES (992,17,32,71);
INSERT INTO "berry_energy" VALUES (993,17,33,73);
INSERT INTO "berry_energy" VALUES (994,17,34,75);
INSERT INTO "berry_energy" VALUES (995,17,35,76);
INSERT INTO "berry_energy" VALUES (996,17,36,78);
INSERT INTO "berry_energy" VALUES (997,17,37,80);
INSERT INTO "berry_energy" VALUES (998,17,38,82);
INSERT INTO "berry_energy" VALUES (999,17,39,84);
INSERT INTO "berry_energy" VALUES (1000,17,40,86);
INSERT INTO "berry_energy" VALUES (1001,17,41,89);
INSERT INTO "berry_energy" VALUES (1002,17,42,91);
INSERT INTO "berry_energy" VALUES (1003,17,43,93);
INSERT INTO "berry_energy" VALUES (1004,17,44,95);
INSERT INTO "berry_energy" VALUES (1005,17,45,98);
INSERT INTO "berry_energy" VALUES (1006,17,46,100);
INSERT INTO "berry_energy" VALUES (1007,17,47,103);
INSERT INTO "berry_energy" VALUES (1008,17,48,105);
INSERT INTO "berry_energy" VALUES (1009,17,49,108);
INSERT INTO "berry_energy" VALUES (1010,17,50,111);
INSERT INTO "berry_energy" VALUES (1011,17,51,113);
INSERT INTO "berry_energy" VALUES (1012,17,52,116);
INSERT INTO "berry_energy" VALUES (1013,17,53,119);
INSERT INTO "berry_energy" VALUES (1014,17,54,122);
INSERT INTO "berry_energy" VALUES (1015,17,55,125);
INSERT INTO "berry_energy" VALUES (1016,17,56,128);
INSERT INTO "berry_energy" VALUES (1017,17,57,132);
INSERT INTO "berry_energy" VALUES (1018,17,58,135);
INSERT INTO "berry_energy" VALUES (1019,17,59,138);
INSERT INTO "berry_energy" VALUES (1020,17,60,142);
INSERT INTO "berry_energy" VALUES (1021,18,1,26);
INSERT INTO "berry_energy" VALUES (1022,18,2,27);
INSERT INTO "berry_energy" VALUES (1023,18,3,28);
INSERT INTO "berry_energy" VALUES (1024,18,4,29);
INSERT INTO "berry_energy" VALUES (1025,18,5,30);
INSERT INTO "berry_energy" VALUES (1026,18,6,31);
INSERT INTO "berry_energy" VALUES (1027,18,7,32);
INSERT INTO "berry_energy" VALUES (1028,18,8,33);
INSERT INTO "berry_energy" VALUES (1029,18,9,34);
INSERT INTO "berry_energy" VALUES (1030,18,10,35);
INSERT INTO "berry_energy" VALUES (1031,18,11,36);
INSERT INTO "berry_energy" VALUES (1032,18,12,37);
INSERT INTO "berry_energy" VALUES (1033,18,13,38);
INSERT INTO "berry_energy" VALUES (1034,18,14,39);
INSERT INTO "berry_energy" VALUES (1035,18,15,40);
INSERT INTO "berry_energy" VALUES (1036,18,16,41);
INSERT INTO "berry_energy" VALUES (1037,18,17,42);
INSERT INTO "berry_energy" VALUES (1038,18,18,43);
INSERT INTO "berry_energy" VALUES (1039,18,19,44);
INSERT INTO "berry_energy" VALUES (1040,18,20,45);
INSERT INTO "berry_energy" VALUES (1041,18,21,46);
INSERT INTO "berry_energy" VALUES (1042,18,22,47);
INSERT INTO "berry_energy" VALUES (1043,18,23,48);
INSERT INTO "berry_energy" VALUES (1044,18,24,49);
INSERT INTO "berry_energy" VALUES (1045,18,25,50);
INSERT INTO "berry_energy" VALUES (1046,18,26,51);
INSERT INTO "berry_energy" VALUES (1047,18,27,52);
INSERT INTO "berry_energy" VALUES (1048,18,28,53);
INSERT INTO "berry_energy" VALUES (1049,18,29,54);
INSERT INTO "berry_energy" VALUES (1050,18,30,55);
INSERT INTO "berry_energy" VALUES (1051,18,31,56);
INSERT INTO "berry_energy" VALUES (1052,18,32,57);
INSERT INTO "berry_energy" VALUES (1053,18,33,58);
INSERT INTO "berry_energy" VALUES (1054,18,34,59);
INSERT INTO "berry_energy" VALUES (1055,18,35,60);
INSERT INTO "berry_energy" VALUES (1056,18,36,62);
INSERT INTO "berry_energy" VALUES (1057,18,37,63);
INSERT INTO "berry_energy" VALUES (1058,18,38,65);
INSERT INTO "berry_energy" VALUES (1059,18,39,66);
INSERT INTO "berry_energy" VALUES (1060,18,40,68);
INSERT INTO "berry_energy" VALUES (1061,18,41,70);
INSERT INTO "berry_energy" VALUES (1062,18,42,72);
INSERT INTO "berry_energy" VALUES (1063,18,43,73);
INSERT INTO "berry_energy" VALUES (1064,18,44,75);
INSERT INTO "berry_energy" VALUES (1065,18,45,77);
INSERT INTO "berry_energy" VALUES (1066,18,46,79);
INSERT INTO "berry_energy" VALUES (1067,18,47,81);
INSERT INTO "berry_energy" VALUES (1068,18,48,83);
INSERT INTO "berry_energy" VALUES (1069,18,49,85);
INSERT INTO "berry_energy" VALUES (1070,18,50,87);
INSERT INTO "berry_energy" VALUES (1071,18,51,89);
INSERT INTO "berry_energy" VALUES (1072,18,52,92);
INSERT INTO "berry_energy" VALUES (1073,18,53,94);
INSERT INTO "berry_energy" VALUES (1074,18,54,96);
INSERT INTO "berry_energy" VALUES (1075,18,55,99);
INSERT INTO "berry_energy" VALUES (1076,18,56,101);
INSERT INTO "berry_energy" VALUES (1077,18,57,104);
INSERT INTO "berry_energy" VALUES (1078,18,58,106);
INSERT INTO "berry_energy" VALUES (1079,18,59,109);
INSERT INTO "berry_energy" VALUES (1080,18,60,112);
INSERT INTO "pokemon_pickup_status" VALUES (1,1,2700,4,2,1,17,1);
INSERT INTO "pokemon_pickup_status" VALUES (2,2,3700,1,1,10,12,3);
INSERT INTO "pokemon_pickup_status" VALUES (3,3,4900,1,2,7,10,1);
INSERT INTO "pokemon_pickup_status" VALUES (4,4,4400,1,1,3,9,3);
INSERT INTO "pokemon_pickup_status" VALUES (5,5,4300,4,2,1,10,1);
INSERT INTO "pokemon_pickup_status" VALUES (6,6,4400,5,1,10,11,2);
INSERT INTO "pokemon_pickup_status" VALUES (7,7,3300,5,1,10,14,2);
INSERT INTO "pokemon_pickup_status" VALUES (8,8,4400,12,2,10,11,1);
INSERT INTO "pokemon_pickup_status" VALUES (9,9,4200,12,2,10,13,1);
INSERT INTO "pokemon_pickup_status" VALUES (10,10,2600,12,2,10,21,1);
INSERT INTO "pokemon_pickup_status" VALUES (11,11,3900,18,1,8,9,3);
INSERT INTO "pokemon_pickup_status" VALUES (12,12,4500,3,1,10,10,2);
INSERT INTO "pokemon_pickup_status" VALUES (13,13,3400,3,1,10,14,2);
INSERT INTO "pokemon_pickup_status" VALUES (14,14,3500,2,1,10,12,2);
INSERT INTO "pokemon_pickup_status" VALUES (15,15,3000,2,1,10,15,2);
INSERT INTO "pokemon_pickup_status" VALUES (16,16,5700,3,1,4,9,3);
INSERT INTO "pokemon_pickup_status" VALUES (17,17,4500,3,2,5,11,1);
INSERT INTO "pokemon_pickup_status" VALUES (18,18,3400,3,2,5,15,1);
INSERT INTO "pokemon_pickup_status" VALUES (19,19,4300,9,1,1,10,2);
INSERT INTO "pokemon_pickup_status" VALUES (20,20,2800,9,1,1,16,2);
INSERT INTO "pokemon_pickup_status" VALUES (21,21,2900,18,1,8,13,3);
INSERT INTO "pokemon_pickup_status" VALUES (22,22,2800,5,1,10,17,2);
INSERT INTO "pokemon_pickup_status" VALUES (23,23,4800,18,1,12,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (24,24,5700,13,1,5,9,2);
INSERT INTO "pokemon_pickup_status" VALUES (25,25,4000,13,1,5,12,2);
INSERT INTO "pokemon_pickup_status" VALUES (26,26,5000,8,2,7,10,1);
INSERT INTO "pokemon_pickup_status" VALUES (27,27,3700,8,2,7,14,1);
INSERT INTO "pokemon_pickup_status" VALUES (28,28,4800,9,2,7,10,1);
INSERT INTO "pokemon_pickup_status" VALUES (29,29,3500,2,2,5,14,1);
INSERT INTO "pokemon_pickup_status" VALUES (30,30,3000,2,2,5,18,1);
INSERT INTO "pokemon_pickup_status" VALUES (31,31,2800,3,1,10,17,2);
INSERT INTO "pokemon_pickup_status" VALUES (32,32,4300,2,1,9,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (33,33,2400,2,1,10,19,2);
INSERT INTO "pokemon_pickup_status" VALUES (34,34,3200,1,2,7,16,1);
INSERT INTO "pokemon_pickup_status" VALUES (35,35,4200,7,2,5,12,1);
INSERT INTO "pokemon_pickup_status" VALUES (36,36,5200,5,1,7,8,2);
INSERT INTO "pokemon_pickup_status" VALUES (37,37,3800,5,1,7,12,2);
INSERT INTO "pokemon_pickup_status" VALUES (38,38,5200,18,1,8,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (39,39,4600,4,1,2,9,3);
INSERT INTO "pokemon_pickup_status" VALUES (40,40,4000,13,1,2,10,3);
INSERT INTO "pokemon_pickup_status" VALUES (41,41,5400,3,1,5,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (42,42,3800,3,1,4,10,3);
INSERT INTO "pokemon_pickup_status" VALUES (43,43,3800,10,2,7,13,1);
INSERT INTO "pokemon_pickup_status" VALUES (44,44,3800,14,1,5,10,2);
INSERT INTO "pokemon_pickup_status" VALUES (45,45,3000,14,1,5,14,2);
INSERT INTO "pokemon_pickup_status" VALUES (46,46,3500,9,2,7,15,1);
INSERT INTO "pokemon_pickup_status" VALUES (47,47,4400,5,2,5,12,1);
INSERT INTO "pokemon_pickup_status" VALUES (48,48,3300,5,2,5,17,1);
INSERT INTO "pokemon_pickup_status" VALUES (49,49,3300,4,1,2,11,3);
INSERT INTO "pokemon_pickup_status" VALUES (50,50,3500,11,1,4,10,3);
INSERT INTO "pokemon_pickup_status" VALUES (51,51,5900,8,1,6,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (52,52,3500,8,1,6,13,3);
INSERT INTO "pokemon_pickup_status" VALUES (53,53,4200,10,2,7,12,1);
INSERT INTO "pokemon_pickup_status" VALUES (54,54,5800,11,1,4,7,3);
INSERT INTO "pokemon_pickup_status" VALUES (55,55,6300,13,1,2,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (56,56,5600,8,1,1,10,2);
INSERT INTO "pokemon_pickup_status" VALUES (57,57,3400,8,1,1,14,2);
INSERT INTO "pokemon_pickup_status" VALUES (58,58,2200,4,2,1,21,1);
INSERT INTO "pokemon_pickup_status" VALUES (59,59,3000,1,1,3,12,3);
INSERT INTO "pokemon_pickup_status" VALUES (60,60,3400,3,1,5,11,3);
INSERT INTO "pokemon_pickup_status" VALUES (61,61,2800,7,2,5,17,1);
INSERT INTO "pokemon_pickup_status" VALUES (62,62,2500,2,1,9,16,3);
INSERT INTO "pokemon_pickup_status" VALUES (63,63,2800,5,1,7,17,2);
INSERT INTO "pokemon_pickup_status" VALUES (64,64,3100,13,1,5,16,2);
INSERT INTO "pokemon_pickup_status" VALUES (65,65,5800,17,1,11,8,3);
INSERT INTO "pokemon_pickup_status" VALUES (66,66,4000,17,1,11,11,3);
INSERT INTO "pokemon_pickup_status" VALUES (67,67,2400,10,2,7,21,1);
INSERT INTO "pokemon_pickup_status" VALUES (68,68,2200,14,1,5,18,2);
INSERT INTO "pokemon_pickup_status" VALUES (69,69,2800,1,1,10,16,2);
INSERT INTO "pokemon_pickup_status" VALUES (70,70,2400,12,1,1,19,2);
INSERT INTO "pokemon_pickup_status" VALUES (71,71,3500,1,1,5,13,2);
INSERT INTO "pokemon_pickup_status" VALUES (72,72,3100,3,1,10,13,3);
INSERT INTO "pokemon_pickup_status" VALUES (73,73,2200,4,1,9,17,3);
INSERT INTO "pokemon_pickup_status" VALUES (74,74,2700,2,1,11,14,3);
INSERT INTO "pokemon_pickup_status" VALUES (78,78,2800,5,2,5,20,1);
INSERT INTO "pokemon_pickup_status" VALUES (79,79,2400,2,2,5,23,1);
INSERT INTO "pokemon_pickup_status" VALUES (80,80,2800,3,2,5,19,1);
INSERT INTO "pokemon_pickup_status" VALUES (81,81,3800,18,1,12,10,3);
INSERT INTO "pokemon_pickup_status" VALUES (82,82,2500,4,1,2,15,3);
INSERT INTO "pokemon_pickup_status" VALUES (83,83,2400,11,1,2,16,3);
INSERT INTO "pokemon_pickup_status" VALUES (84,84,3200,16,1,7,14,3);
INSERT INTO "pokemon_pickup_status" VALUES (85,85,3400,3,1,4,11,3);
INSERT INTO "pokemon_pickup_status" VALUES (86,86,2500,12,1,10,15,3);
INSERT INTO "pokemon_pickup_status" VALUES (87,87,4800,13,1,7,9,2);
INSERT INTO "pokemon_pickup_status" VALUES (88,88,3600,13,1,7,13,2);
INSERT INTO "pokemon_pickup_status" VALUES (89,89,2700,16,1,7,19,2);
INSERT INTO "pokemon_pickup_status" VALUES (90,90,3000,5,1,4,13,3);
INSERT INTO "pokemon_pickup_status" VALUES (91,91,3100,16,1,1,14,2);
INSERT INTO "pokemon_pickup_status" VALUES (92,92,2600,18,1,8,15,3);
INSERT INTO "pokemon_pickup_status" VALUES (93,93,2600,18,1,12,16,3);
INSERT INTO "pokemon_pickup_status" VALUES (94,94,4900,1,2,10,7,1);
INSERT INTO "pokemon_pickup_status" VALUES (95,95,3200,1,2,10,9,1);
INSERT INTO "pokemon_pickup_status" VALUES (96,96,3800,1,2,10,12,1);
INSERT INTO "pokemon_pickup_status" VALUES (97,97,3100,17,1,11,13,3);
INSERT INTO "pokemon_pickup_status" VALUES (98,98,3200,6,1,11,12,3);
INSERT INTO "pokemon_pickup_status" VALUES (99,99,3700,15,2,7,14,1);
INSERT INTO "pokemon_pickup_status" VALUES (100,100,4200,7,1,3,9,3);
INSERT INTO "pokemon_pickup_status" VALUES (101,101,2700,7,1,3,14,3);
INSERT INTO "pokemon_pickup_status" VALUES (102,102,5600,6,2,10,9,1);
INSERT INTO "pokemon_pickup_status" VALUES (103,103,4000,6,2,10,13,1);
INSERT INTO "pokemon_pickup_status" VALUES (104,104,3000,6,2,10,18,1);
INSERT INTO "pokemon_pickup_status" VALUES (105,105,4900,16,2,1,10,1);
INSERT INTO "pokemon_pickup_status" VALUES (106,106,3300,16,2,1,16,1);
INSERT INTO "pokemon_pickup_status" VALUES (107,107,3600,16,1,6,10,3);
INSERT INTO "pokemon_pickup_status" VALUES (109,109,4300,11,1,1,10,2);
INSERT INTO "pokemon_pickup_status" VALUES (110,110,2800,11,1,1,17,2);
INSERT INTO "pokemon_pickup_status" VALUES (111,111,5600,18,2,12,10,1);
INSERT INTO "pokemon_pickup_status" VALUES (112,112,4000,18,2,12,16,1);
INSERT INTO "pokemon_pickup_status" VALUES (113,113,2800,18,2,12,24,1);
INSERT INTO "pokemon_pickup_status" VALUES (9001,9001,2600,4,2,5,18,1);
INSERT INTO "pokemon_pickup_status" VALUES (114,114,3900,14,2,5,11,1);
INSERT INTO "pokemon_pickup_status" VALUES (115,115,2600,14,2,5,19,1);
INSERT INTO "pokemon_pickup_status" VALUES (116,116,3100,13,2,10,22,1);
INSERT INTO "pokemon_pickup_status" VALUES (117,117,3000,17,2,10,25,1);
INSERT INTO "cooking_foods" VALUES (1,'md_cooking_foods_name_1','md_cooking_foods_narrow_name_1',185,185,3,0,0,7,'md_cooking_foods_desc_1',100,80,60,50,20,140,20,120);
INSERT INTO "cooking_foods" VALUES (2,'md_cooking_foods_name_2','md_cooking_foods_narrow_name_2',167,167,3,0,0,7,'md_cooking_foods_desc_2',10,160,40,40,140,150,160,50);
INSERT INTO "cooking_foods" VALUES (3,'md_cooking_foods_name_3','md_cooking_foods_narrow_name_3',115,115,1,0,0,5,'md_cooking_foods_desc_3',70,30,110,160,110,70,140,80);
INSERT INTO "cooking_foods" VALUES (4,'md_cooking_foods_name_4','md_cooking_foods_narrow_name_4',124,124,3,0,0,5,'md_cooking_foods_desc_4',110,140,120,120,80,130,40,160);
INSERT INTO "cooking_foods" VALUES (5,'md_cooking_foods_name_5','md_cooking_foods_narrow_name_5',90,90,2,0,0,4,'md_cooking_foods_desc_5',80,20,130,90,100,110,130,90);
INSERT INTO "cooking_foods" VALUES (6,'md_cooking_foods_name_6','md_cooking_foods_narrow_name_6',130,130,1,0,0,5,'md_cooking_foods_desc_6',60,40,10,150,30,60,80,10);
INSERT INTO "cooking_foods" VALUES (7,'md_cooking_foods_name_7','md_cooking_foods_narrow_name_7',103,103,1,0,0,4,'md_cooking_foods_desc_7',120,10,170,60,10,50,120,30);
INSERT INTO "cooking_foods" VALUES (8,'md_cooking_foods_name_8','md_cooking_foods_narrow_name_8',98,98,1,0,0,4,'md_cooking_foods_desc_8',140,90,80,70,90,90,150,60);
INSERT INTO "cooking_foods" VALUES (9,'md_cooking_foods_name_9','md_cooking_foods_narrow_name_9',101,101,2,0,0,4,'md_cooking_foods_desc_9',30,70,100,100,70,120,30,110);
INSERT INTO "cooking_foods" VALUES (10,'md_cooking_foods_name_10','md_cooking_foods_narrow_name_10',121,121,2,0,0,5,'md_cooking_foods_desc_10',90,100,70,110,130,10,170,100);
INSERT INTO "cooking_foods" VALUES (11,'md_cooking_foods_name_11','md_cooking_foods_narrow_name_11',109,109,1,0,0,4,'md_cooking_foods_desc_11',20,170,50,170,160,80,50,150);
INSERT INTO "cooking_foods" VALUES (12,'md_cooking_foods_name_12','md_cooking_foods_narrow_name_12',110,110,2,0,0,4,'md_cooking_foods_desc_12',40,130,160,130,150,160,90,20);
INSERT INTO "cooking_foods" VALUES (13,'md_cooking_foods_name_13','md_cooking_foods_narrow_name_13',151,151,3,0,0,6,'md_cooking_foods_desc_13',150,150,20,10,170,20,60,40);
INSERT INTO "cooking_foods" VALUES (14,'md_cooking_foods_name_14','md_cooking_foods_narrow_name_14',342,342,3,0,0,14,'md_cooking_foods_desc_14',50,120,140,30,40,40,70,70);
INSERT INTO "cooking_foods" VALUES (15,'md_cooking_foods_name_15','md_cooking_foods_narrow_name_15',100,100,3,0,0,4,'md_cooking_foods_desc_15',170,60,150,140,60,170,100,130);
INSERT INTO "cooking_foods" VALUES (1000,'md_cooking_foods_name_1000','md_cooking_foods_narrow_name_1000',0,0,1,0,0,0,'md_cooking_foods_desc_1000',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1001,'md_cooking_foods_name_1001','md_cooking_foods_narrow_name_1001',668,668,2,1,'5:7',0,'md_cooking_foods_desc_1001',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1002,'md_cooking_foods_name_1002','md_cooking_foods_narrow_name_1002',7483,7483,3,1,'14:8,6:25',0,'md_cooking_foods_desc_1002',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1003,'md_cooking_foods_name_1003','md_cooking_foods_narrow_name_1003',1943,1943,3,1,'12:10,6:5',0,'md_cooking_foods_desc_1003',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1004,'md_cooking_foods_name_1004','md_cooking_foods_narrow_name_1004',9010,9010,2,1,'4:18,12:15,13:12,8:10',0,'md_cooking_foods_desc_1004',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1005,'md_cooking_foods_name_1005','md_cooking_foods_narrow_name_1005',5900,5900,2,1,'1:14,11:10,6:8',0,'md_cooking_foods_desc_1005',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1006,'md_cooking_foods_name_1006','md_cooking_foods_narrow_name_1006',4041,4041,2,1,'2:14,4:9',0,'md_cooking_foods_desc_1006',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1007,'md_cooking_foods_name_1007','md_cooking_foods_narrow_name_1007',4523,4523,3,1,'9:12,5:11,3:8,4:4',0,'md_cooking_foods_desc_1007',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1008,'md_cooking_foods_name_1008','md_cooking_foods_narrow_name_1008',1785,1785,1,1,'8:8,7:8',0,'md_cooking_foods_desc_1008',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1009,'md_cooking_foods_name_1009','md_cooking_foods_narrow_name_1009',3089,3089,1,1,'8:10,4:8,2:4',0,'md_cooking_foods_desc_1009',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1010,'md_cooking_foods_name_1010','md_cooking_foods_narrow_name_1010',727,727,3,1,'8:7',0,'md_cooking_foods_desc_1010',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1011,'md_cooking_foods_name_1011','md_cooking_foods_narrow_name_1011',764,764,1,1,'7:7',0,'md_cooking_foods_desc_1011',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1012,'md_cooking_foods_name_1012','md_cooking_foods_narrow_name_1012',749,749,1,1,'9:7',0,'md_cooking_foods_desc_1012',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1013,'md_cooking_foods_name_1013','md_cooking_foods_narrow_name_1013',6159,6159,2,1,'15:15,7:9,1:9,2:5',0,'md_cooking_foods_desc_1013',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1014,'md_cooking_foods_name_1014','md_cooking_foods_narrow_name_1014',1815,1815,1,1,'7:10,10:5',0,'md_cooking_foods_desc_1014',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1015,'md_cooking_foods_name_1015','md_cooking_foods_narrow_name_1015',2009,2009,1,1,'3:10,12:6',0,'md_cooking_foods_desc_1015',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (1016,'md_cooking_foods_name_1016','md_cooking_foods_narrow_name_1016',3274,3274,1,1,'15:12,7:6,6:4,3:4',0,'md_cooking_foods_desc_1016',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2000,'md_cooking_foods_name_2000','md_cooking_foods_narrow_name_2000',0,0,1,0,0,0,'md_cooking_foods_desc_2000',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2001,'md_cooking_foods_name_2001','md_cooking_foods_narrow_name_2001',8169,8169,1,1,'14:10,6:10,10:15',0,'md_cooking_foods_desc_2001',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2002,'md_cooking_foods_name_2002','md_cooking_foods_narrow_name_2002',5859,5859,1,1,'2:17,12:8,10:8',0,'md_cooking_foods_desc_2002',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2003,'md_cooking_foods_name_2003','md_cooking_foods_narrow_name_2003',1774,1774,1,1,'8:10,7:6',0,'md_cooking_foods_desc_2003',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2004,'md_cooking_foods_name_2004','md_cooking_foods_narrow_name_2004',5040,5040,1,1,'4:14,3:9,7:7,5:6',0,'md_cooking_foods_desc_2004',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2005,'md_cooking_foods_name_2005','md_cooking_foods_narrow_name_2005',1843,1843,1,1,'15:10,12:6',0,'md_cooking_foods_desc_2005',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2006,'md_cooking_foods_name_2006','md_cooking_foods_narrow_name_2006',2958,2958,1,1,'7:9,11:6,3:5,4:3',0,'md_cooking_foods_desc_2006',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2007,'md_cooking_foods_name_2007','md_cooking_foods_narrow_name_2007',873,873,1,1,'7:8',0,'md_cooking_foods_desc_2007',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2008,'md_cooking_foods_name_2008','md_cooking_foods_narrow_name_2008',933,933,1,1,'12:8',0,'md_cooking_foods_desc_2008',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2009,'md_cooking_foods_name_2009','md_cooking_foods_narrow_name_2009',2856,2856,1,1,'8:12,12:6,10:5',0,'md_cooking_foods_desc_2009',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2010,'md_cooking_foods_name_2010','md_cooking_foods_narrow_name_2010',3558,3558,1,1,'13:14,7:9',0,'md_cooking_foods_desc_2010',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2011,'md_cooking_foods_name_2011','md_cooking_foods_narrow_name_2011',5225,5225,1,1,'6:17,11:10,12:8',0,'md_cooking_foods_desc_2011',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2012,'md_cooking_foods_name_2012','md_cooking_foods_narrow_name_2012',763,763,1,1,'5:8',0,'md_cooking_foods_desc_2012',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2013,'md_cooking_foods_name_2013','md_cooking_foods_narrow_name_2013',2658,2658,1,1,'1:10,11:5',0,'md_cooking_foods_desc_2013',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2014,'md_cooking_foods_name_2014','md_cooking_foods_narrow_name_2014',2578,2578,1,1,'5:15,8:5,10:3',0,'md_cooking_foods_desc_2014',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2015,'md_cooking_foods_name_2015','md_cooking_foods_narrow_name_2015',10095,10095,1,1,'1:15,15:15,2:12,11:11',0,'md_cooking_foods_desc_2015',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (2016,'md_cooking_foods_name_2016','md_cooking_foods_narrow_name_2016',1976,1976,1,1,'15:10,6:6',0,'md_cooking_foods_desc_2016',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3000,'md_cooking_foods_name_3000','md_cooking_foods_narrow_name_3000',0,0,1,0,0,0,'md_cooking_foods_desc_3000',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3001,'md_cooking_foods_name_3001','md_cooking_foods_narrow_name_3001',1783,1783,1,1,'4:9,8:5',0,'md_cooking_foods_desc_3001',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3002,'md_cooking_foods_name_3002','md_cooking_foods_narrow_name_3002',4921,4921,1,1,'9:14,11:12,13:5,3:4',0,'md_cooking_foods_desc_3002',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3003,'md_cooking_foods_name_3003','md_cooking_foods_narrow_name_3003',763,763,1,1,'5:8',0,'md_cooking_foods_desc_3003',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3004,'md_cooking_foods_name_3004','md_cooking_foods_narrow_name_3004',964,964,1,1,'9:9',0,'md_cooking_foods_desc_3004',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3005,'md_cooking_foods_name_3005','md_cooking_foods_narrow_name_3005',1788,1788,1,1,'11:9,5:7',0,'md_cooking_foods_desc_3005',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3006,'md_cooking_foods_name_3006','md_cooking_foods_narrow_name_3006',7594,7594,1,1,'9:20,3:15,8:10,5:10',0,'md_cooking_foods_desc_3006',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3007,'md_cooking_foods_name_3007','md_cooking_foods_narrow_name_3007',4734,4734,1,1,'5:11,8:9,9:7,13:8',0,'md_cooking_foods_desc_3007',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3008,'md_cooking_foods_name_3008','md_cooking_foods_narrow_name_3008',1634,1634,1,1,'5:12,8:4',0,'md_cooking_foods_desc_3008',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3009,'md_cooking_foods_name_3009','md_cooking_foods_narrow_name_3009',5065,5065,1,1,'11:11,5:15,2:9',0,'md_cooking_foods_desc_3009',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3010,'md_cooking_foods_name_3010','md_cooking_foods_narrow_name_3010',3280,3280,1,1,'9:9,13:8,8:7',0,'md_cooking_foods_desc_3010',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3011,'md_cooking_foods_name_3011','md_cooking_foods_narrow_name_3011',727,727,1,1,'8:7',0,'md_cooking_foods_desc_3011',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3012,'md_cooking_foods_name_3012','md_cooking_foods_narrow_name_3012',1798,1798,1,1,'3:8,15:7',0,'md_cooking_foods_desc_3012',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3013,'md_cooking_foods_name_3013','md_cooking_foods_narrow_name_3013',3168,3168,1,1,'15:15,13:8',0,'md_cooking_foods_desc_3013',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3014,'md_cooking_foods_name_3014','md_cooking_foods_narrow_name_3014',1798,1798,1,1,'12:9,5:7',0,'md_cooking_foods_desc_3014',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3015,'md_cooking_foods_name_3015','md_cooking_foods_narrow_name_3015',2927,2927,1,1,'10:10,8:7,9:6',0,'md_cooking_foods_desc_3015',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_foods" VALUES (3016,'md_cooking_foods_name_3016','md_cooking_foods_narrow_name_3016',3213,3213,1,1,'10:9,15:6,13:7',0,'md_cooking_foods_desc_3016',0,0,0,0,0,0,0,0);
INSERT INTO "cooking_bonus" VALUES (1,1080,20);
INSERT INTO "cooking_bonus" VALUES (2,2324,40);
INSERT INTO "cooking_bonus" VALUES (3,3936,60);
INSERT INTO "cooking_bonus" VALUES (4,5545,80);
INSERT INTO "cooking_bonus" VALUES (5,7341,90);
INSERT INTO "cooking_bonus" VALUES (6,9712,110);
INSERT INTO "cooking_bonus" VALUES (7,12760,130);
INSERT INTO "cooking_bonus" VALUES (8,16426,160);
INSERT INTO "cooking_bonus" VALUES (9,20791,180);
INSERT INTO "cooking_bonus" VALUES (10,25639,190);
INSERT INTO "cooking_bonus" VALUES (11,30911,210);
INSERT INTO "cooking_bonus" VALUES (12,36621,230);
INSERT INTO "cooking_bonus" VALUES (13,42922,240);
INSERT INTO "cooking_bonus" VALUES (14,49882,260);
INSERT INTO "cooking_bonus" VALUES (15,57551,280);
INSERT INTO "cooking_bonus" VALUES (16,66001,300);
INSERT INTO "cooking_bonus" VALUES (17,75131,310);
INSERT INTO "cooking_bonus" VALUES (18,84981,330);
INSERT INTO "cooking_bonus" VALUES (19,95642,350);
INSERT INTO "cooking_bonus" VALUES (20,107159,370);
INSERT INTO "cooking_bonus" VALUES (21,119576,400);
INSERT INTO "cooking_bonus" VALUES (22,132938,420);
INSERT INTO "cooking_bonus" VALUES (23,147309,450);
INSERT INTO "cooking_bonus" VALUES (24,162621,470);
INSERT INTO "cooking_bonus" VALUES (25,178929,500);
INSERT INTO "cooking_bonus" VALUES (26,196563,520);
INSERT INTO "cooking_bonus" VALUES (27,215605,550);
INSERT INTO "cooking_bonus" VALUES (28,236149,580);
INSERT INTO "cooking_bonus" VALUES (29,258299,610);
INSERT INTO "cooking_bonus" VALUES (30,281955,640);
INSERT INTO "cooking_bonus" VALUES (31,306759,670);
INSERT INTO "cooking_bonus" VALUES (32,332769,700);
INSERT INTO "cooking_bonus" VALUES (33,360469,740);
INSERT INTO "cooking_bonus" VALUES (34,389943,770);
INSERT INTO "cooking_bonus" VALUES (35,421521,810);
INSERT INTO "cooking_bonus" VALUES (36,455380,840);
INSERT INTO "cooking_bonus" VALUES (37,491055,880);
INSERT INTO "cooking_bonus" VALUES (38,528663,920);
INSERT INTO "cooking_bonus" VALUES (39,568918,960);
INSERT INTO "cooking_bonus" VALUES (40,611541,1000);
INSERT INTO "cooking_bonus" VALUES (41,656646,1040);
INSERT INTO "cooking_bonus" VALUES (42,704344,1080);
INSERT INTO "cooking_bonus" VALUES (43,754748,1130);
INSERT INTO "cooking_bonus" VALUES (44,807184,1170);
INSERT INTO "cooking_bonus" VALUES (45,862205,1220);
INSERT INTO "cooking_bonus" VALUES (46,920936,1270);
INSERT INTO "cooking_bonus" VALUES (47,983590,1320);
INSERT INTO "cooking_bonus" VALUES (48,1050391,1370);
INSERT INTO "cooking_bonus" VALUES (49,1121582,1420);
INSERT INTO "cooking_bonus" VALUES (50,1196687,1480);
INSERT INTO "daytimepower_condition" VALUES (1,0,1);
INSERT INTO "daytimepower_condition" VALUES (2,200,2);
INSERT INTO "daytimepower_condition" VALUES (3,400,3);
INSERT INTO "daytimepower_condition" VALUES (4,600,4);
INSERT INTO "daytimepower_condition" VALUES (5,800,5);
INSERT INTO "cooking_new_dishes_table" VALUES (1,3,1000);
INSERT INTO "cooking_new_dishes_table" VALUES (2,7,500);
INSERT INTO "cooking_new_dishes_table" VALUES (3,9999,300);
INSERT INTO "other_parameters" VALUES (1,'daytimepower_reduce_per_minute',10);
INSERT INTO "other_parameters" VALUES (2,'support_pokemon_levelup_pickup_reduce_per',2);
INSERT INTO "other_parameters" VALUES (3,'candy_base_num',3);
INSERT INTO "other_parameters" VALUES (4,'candy_exp',25);
INSERT INTO "other_parameters" VALUES (5,'quick_pickup_need_sec',50);
INSERT INTO "other_parameters" VALUES (6,'quick_pickup_max_count',2);
INSERT INTO "other_parameters" VALUES (7,'quick_pickup_cooling_sec',3000);
INSERT INTO "other_parameters" VALUES (8,'cooking_shortcut_min_per_dia',20);
INSERT INTO "other_parameters" VALUES (9,'cooking_shortcut_no_dia_sec',180);
INSERT INTO "other_parameters" VALUES (10,'favorite_food_up_per',1000);
INSERT INTO "other_parameters" VALUES (11,'rare_candy_bag_sort_index',100);
INSERT INTO "other_parameters" VALUES (12,'pokemon_rankup_bonus_unlock_level_1',10);
INSERT INTO "other_parameters" VALUES (13,'pokemon_rankup_bonus_unlock_level_2',25);
INSERT INTO "other_parameters" VALUES (14,'pokemon_rankup_bonus_unlock_level_3',50);
INSERT INTO "other_parameters" VALUES (15,'pokemon_rankup_bonus_unlock_level_4',75);
INSERT INTO "other_parameters" VALUES (16,'pokemon_rankup_bonus_unlock_level_5',100);
INSERT INTO "other_parameters" VALUES (17,'pokemon_rare_slot_1_unlock_level',1);
INSERT INTO "other_parameters" VALUES (18,'pokemon_rare_slot_2_unlock_level',30);
INSERT INTO "other_parameters" VALUES (19,'pokemon_rare_slot_3_unlock_level',60);
INSERT INTO "other_parameters" VALUES (20,'pokemon_recover_at_week_start',50);
INSERT INTO "other_parameters" VALUES (21,'premium_pass_discount_per',0);
INSERT INTO "other_parameters" VALUES (22,'base_cooking_max_num',15);
INSERT INTO "other_parameters" VALUES (23,'shiny_per_base',3);
INSERT INTO "other_parameters" VALUES (24,'free_baitball_num',1);
INSERT INTO "other_parameters" VALUES (26,'baitball_success_multiplier',3);
INSERT INTO "other_parameters" VALUES (32,'auto_pickup_max_hour',168);
INSERT INTO "other_parameters" VALUES (33,'boost_item_add_pokemon_num',1);
INSERT INTO "other_parameters" VALUES (35,'cooking_expansion_limit_base',0);
INSERT INTO "other_parameters" VALUES (36,'camp_set_sort_index',101);
INSERT INTO "other_parameters" VALUES (37,'collection_reward_dia_num',20);
INSERT INTO "other_parameters" VALUES (38,'tutorial_bonus_dia_num',200);
INSERT INTO "other_parameters" VALUES (39,'tutorial_cooking_start_bonus_num',10);
INSERT INTO "other_parameters" VALUES (40,'tutorial_cooking_finish_bonus_num',30);
INSERT INTO "other_parameters" VALUES (41,'tutorial_cooking_bonus_item_type',4);
INSERT INTO "other_parameters" VALUES (42,'tutorial_cooking_bonus_item_id',5);
INSERT INTO "other_parameters" VALUES (43,'premium_pass_sleep_point',100);
INSERT INTO "other_parameters" VALUES (44,'snorlax_growth_multiplier_add_per',500);
INSERT INTO "other_parameters" VALUES (45,'pickup_candy_lottery_interval_sec',4000);
INSERT INTO "other_parameters" VALUES (46,'pickup_candy_winning_probability',300);
INSERT INTO "other_parameters" VALUES (47,'pickup_candy_minimum_guarantee',5);
INSERT INTO "other_parameters" VALUES (48,'pickup_candy_maximum_wins_per_day',7);
INSERT INTO "other_parameters" VALUES (49,'pokedex_bunus_dia_num',0);
INSERT INTO "other_parameters" VALUES (50,'free_baitball_friend_point',3);
INSERT INTO "other_parameters" VALUES (51,'pokemon_nature_daytimepower',0);
INSERT INTO "other_parameters" VALUES (52,'pickup_candy_base_num',2);
INSERT INTO "other_parameters" VALUES (53,'beginner_researcher_sleep_point',600);
INSERT INTO "other_parameters" VALUES (54,'free_baitball_plus_friend_point',4);
INSERT INTO "other_parameters" VALUES (55,'sleep_data_limit_days',30);
INSERT INTO "other_parameters" VALUES (56,'snorlax_default_energy',40000);
INSERT INTO "other_parameters" VALUES (57,'sleep_promise_valid_minutes_before',90);
INSERT INTO "other_parameters" VALUES (58,'sleep_promise_valid_minutes_after',30);
INSERT INTO "other_parameters" VALUES (66,'use_linking_cord_pokemon_candy_num',5);
INSERT INTO "other_parameters" VALUES (67,'overflow_pokemon_exp_limit',500);
INSERT INTO "other_parameters" VALUES (68,'overflow_pokemon_exp_all_purpose_candy_num',1);
INSERT INTO "other_parameters" VALUES (70,'tutorial_bonus_normal_baitball_num',10);
INSERT INTO "pokemon_main_skills" VALUES (1,'md_pokemon_main_skills_name_1',1,'md_pokemon_main_skills_desc_1',400,569,785,1083,1496,2066,400,569,785,1083,1496,2066,0,0);
INSERT INTO "pokemon_main_skills" VALUES (2,'md_pokemon_main_skills_name_2',1,'md_pokemon_main_skills_desc_2',880,1251,1726,2383,3290,4546,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_main_skills" VALUES (3,'md_pokemon_main_skills_name_3',3,'md_pokemon_main_skills_desc_3',88,125,173,274,395,568,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_main_skills" VALUES (4,'md_pokemon_main_skills_name_4',6,'md_pokemon_main_skills_desc_4',140,171,225,288,382,506,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_main_skills" VALUES (5,'md_pokemon_main_skills_name_5',2,'md_pokemon_main_skills_desc_5',400,569,785,1083,1496,2066,400,569,785,1083,1496,2066,5000,20000);
INSERT INTO "pokemon_main_skills" VALUES (6,'md_pokemon_main_skills_name_6',4,'md_pokemon_main_skills_desc_6',88,125,173,274,395,568,880,1251,1726,2383,3290,4546,5000,20000);
INSERT INTO "pokemon_main_skills" VALUES (7,'md_pokemon_main_skills_name_7',5,'md_pokemon_main_skills_desc_7',120,162,212,266,336,434,400,569,785,1083,1496,2066,0,0);
INSERT INTO "pokemon_main_skills" VALUES (8,'md_pokemon_main_skills_name_8',7,'md_pokemon_main_skills_desc_8',50,70,90,114,150,181,1120,1593,2197,3033,4187,5785,0,0);
INSERT INTO "pokemon_main_skills" VALUES (9,'md_pokemon_main_skills_name_9',8,'md_pokemon_main_skills_desc_9',4,5,6,7,8,9,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_main_skills" VALUES (10,'md_pokemon_main_skills_name_10',9,'md_pokemon_main_skills_desc_10',6,8,11,14,17,21,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_main_skills" VALUES (11,'md_pokemon_main_skills_name_11',10,'md_pokemon_main_skills_desc_11',7,10,12,17,22,27,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_main_skills" VALUES (12,'md_pokemon_main_skills_name_13',12,'md_pokemon_main_skills_desc_13',1,2,3,4,5,6,880,1251,1726,2383,3290,4546,0,0);
INSERT INTO "pokemon_nature" VALUES (1,'md_pokemon_nature_name_1',-200,0,2,-2,0,0,0,0,-80);
INSERT INTO "pokemon_nature" VALUES (2,'md_pokemon_nature_name_2',0,0,2,0,-2,0,0,0,0);
INSERT INTO "pokemon_nature" VALUES (3,'md_pokemon_nature_name_3',0,0,2,0,0,-2,0,-2,0);
INSERT INTO "pokemon_nature" VALUES (4,'md_pokemon_nature_name_4',0,-180,2,0,0,0,-2,0,0);
INSERT INTO "pokemon_nature" VALUES (5,'md_pokemon_nature_name_5',200,0,-2,2,0,0,0,0,80);
INSERT INTO "pokemon_nature" VALUES (6,'md_pokemon_nature_name_6',200,0,0,2,-2,0,0,0,80);
INSERT INTO "pokemon_nature" VALUES (7,'md_pokemon_nature_name_7',200,0,0,2,0,-2,0,-2,80);
INSERT INTO "pokemon_nature" VALUES (8,'md_pokemon_nature_name_8',200,-180,0,2,0,0,-2,0,80);
INSERT INTO "pokemon_nature" VALUES (9,'md_pokemon_nature_name_9',0,0,-2,0,2,0,0,0,0);
INSERT INTO "pokemon_nature" VALUES (10,'md_pokemon_nature_name_10',-200,0,0,-2,2,0,0,0,-80);
INSERT INTO "pokemon_nature" VALUES (11,'md_pokemon_nature_name_11',0,0,0,0,2,-2,0,-2,0);
INSERT INTO "pokemon_nature" VALUES (12,'md_pokemon_nature_name_12',0,-180,0,0,2,0,-2,0,0);
INSERT INTO "pokemon_nature" VALUES (13,'md_pokemon_nature_name_13',0,0,-2,0,0,2,0,2,0);
INSERT INTO "pokemon_nature" VALUES (14,'md_pokemon_nature_name_14',-200,0,0,-2,0,2,0,2,-80);
INSERT INTO "pokemon_nature" VALUES (15,'md_pokemon_nature_name_15',0,0,0,0,-2,2,0,2,0);
INSERT INTO "pokemon_nature" VALUES (16,'md_pokemon_nature_name_16',0,-180,0,0,0,2,-2,2,0);
INSERT INTO "pokemon_nature" VALUES (17,'md_pokemon_nature_name_17',0,180,-2,0,0,0,2,0,0);
INSERT INTO "pokemon_nature" VALUES (18,'md_pokemon_nature_name_18',-200,180,0,-2,0,0,2,0,-80);
INSERT INTO "pokemon_nature" VALUES (19,'md_pokemon_nature_name_19',0,180,0,0,-2,0,2,0,0);
INSERT INTO "pokemon_nature" VALUES (20,'md_pokemon_nature_name_20',0,180,0,0,0,-2,2,-2,0);
INSERT INTO "pokemon_nature" VALUES (21,'md_pokemon_nature_name_21',0,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_nature" VALUES (22,'md_pokemon_nature_name_22',0,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_nature" VALUES (23,'md_pokemon_nature_name_23',0,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_nature" VALUES (24,'md_pokemon_nature_name_24',0,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_nature" VALUES (25,'md_pokemon_nature_name_25',0,0,0,0,0,0,0,0,0);
INSERT INTO "incense" VALUES (1,'md_incense_name_1',30,2000,1,'md_incense_desc_1',2001);
INSERT INTO "incense" VALUES (2,'md_incense_name_2',40,2000,2,'md_incense_desc_2',2002);
INSERT INTO "incense" VALUES (3,'md_incense_name_3',50,2000,3,'md_incense_desc_3',2003);
INSERT INTO "incense" VALUES (4,'md_incense_name_4',60,2000,4,'md_incense_desc_4',2004);
INSERT INTO "incense" VALUES (5,'md_incense_name_5',70,1,5,'md_incense_desc_5',2005);
INSERT INTO "pokemon_incense" VALUES (1,'md_pokemon_incense_name_25',1,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (2,'md_pokemon_incense_name_133',2,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (3,'md_pokemon_incense_name_19',3,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (4,'md_pokemon_incense_name_52',4,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (5,'md_pokemon_incense_name_172',5,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (6,'md_pokemon_incense_name_1',6,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (7,'md_pokemon_incense_name_2',7,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (8,'md_pokemon_incense_name_10',8,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (9,'md_pokemon_incense_name_11',9,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (10,'md_pokemon_incense_name_12',10,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (11,'md_pokemon_incense_name_39',11,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (12,'md_pokemon_incense_name_7',12,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (13,'md_pokemon_incense_name_8',13,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (14,'md_pokemon_incense_name_4',14,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (15,'md_pokemon_incense_name_5',15,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (16,'md_pokemon_incense_name_79',16,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (17,'md_pokemon_incense_name_158',17,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (18,'md_pokemon_incense_name_159',18,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (19,'md_pokemon_incense_name_50',19,'1,2,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (20,'md_pokemon_incense_name_51',20,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (21,'md_pokemon_incense_name_40',21,'1,2,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (22,'md_pokemon_incense_name_3',22,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (23,'md_pokemon_incense_name_175',23,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (24,'md_pokemon_incense_name_74',24,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (25,'md_pokemon_incense_name_75',25,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (26,'md_pokemon_incense_name_23',26,'1,2,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (27,'md_pokemon_incense_name_24',27,'1,2,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (28,'md_pokemon_incense_name_104',28,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (29,'md_pokemon_incense_name_155',29,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (30,'md_pokemon_incense_name_156',30,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (31,'md_pokemon_incense_name_9',31,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (32,'md_pokemon_incense_name_58',32,'1,2,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (33,'md_pokemon_incense_name_6',33,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (34,'md_pokemon_incense_name_20',34,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (35,'md_pokemon_incense_name_56',35,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (36,'md_pokemon_incense_name_69',36,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (37,'md_pokemon_incense_name_70',37,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (38,'md_pokemon_incense_name_174',38,'1,2,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (39,'md_pokemon_incense_name_179',39,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (40,'md_pokemon_incense_name_185',40,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (41,'md_pokemon_incense_name_54',41,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (42,'md_pokemon_incense_name_80',42,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (43,'md_pokemon_incense_name_84',43,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (44,'md_pokemon_incense_name_92',44,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (45,'md_pokemon_incense_name_93',45,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (46,'md_pokemon_incense_name_105',46,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (47,'md_pokemon_incense_name_152',47,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (48,'md_pokemon_incense_name_153',48,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (49,'md_pokemon_incense_name_180',49,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (50,'md_pokemon_incense_name_202',50,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (51,'md_pokemon_incense_name_316',51,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (52,'md_pokemon_incense_name_317',52,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (53,'md_pokemon_incense_name_333',53,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (54,'md_pokemon_incense_name_360',54,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (55,'md_pokemon_incense_name_438',55,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (56,'md_pokemon_incense_name_453',56,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (57,'md_pokemon_incense_name_454',57,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (58,'md_pokemon_incense_name_26',58,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (59,'md_pokemon_incense_name_53',59,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (60,'md_pokemon_incense_name_55',60,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (61,'md_pokemon_incense_name_57',61,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (62,'md_pokemon_incense_name_59',62,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (63,'md_pokemon_incense_name_71',63,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (64,'md_pokemon_incense_name_76',64,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (65,'md_pokemon_incense_name_81',65,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (66,'md_pokemon_incense_name_82',66,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (67,'md_pokemon_incense_name_85',67,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (68,'md_pokemon_incense_name_94',68,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (69,'md_pokemon_incense_name_115',69,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (70,'md_pokemon_incense_name_127',70,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (71,'md_pokemon_incense_name_132',71,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (72,'md_pokemon_incense_name_134',72,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (73,'md_pokemon_incense_name_135',73,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (74,'md_pokemon_incense_name_136',74,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (78,'md_pokemon_incense_name_154',78,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (79,'md_pokemon_incense_name_157',79,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (80,'md_pokemon_incense_name_160',80,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (81,'md_pokemon_incense_name_176',81,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (82,'md_pokemon_incense_name_181',82,'4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (83,'md_pokemon_incense_name_196',83,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (84,'md_pokemon_incense_name_197',84,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (85,'md_pokemon_incense_name_199',85,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (86,'md_pokemon_incense_name_214',86,'1,2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (87,'md_pokemon_incense_name_246',87,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (88,'md_pokemon_incense_name_247',88,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (89,'md_pokemon_incense_name_248',89,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (90,'md_pokemon_incense_name_470',90,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (91,'md_pokemon_incense_name_359',91,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (92,'md_pokemon_incense_name_700',92,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (93,'md_pokemon_incense_name_468',93,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (94,'md_pokemon_incense_name_287',94,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (95,'md_pokemon_incense_name_288',95,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (96,'md_pokemon_incense_name_289',96,'1,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (97,'md_pokemon_incense_name_462',97,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (98,'md_pokemon_incense_name_471',98,'4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (99,'md_pokemon_incense_name_334',99,'4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (100,'md_pokemon_incense_name_447',100,'1,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (101,'md_pokemon_incense_name_448',101,'4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (102,'md_pokemon_incense_name_363',102,'1,2,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (103,'md_pokemon_incense_name_364',103,'4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (104,'md_pokemon_incense_name_365',104,'4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (105,'md_pokemon_incense_name_228',105,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (106,'md_pokemon_incense_name_229',106,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (107,'md_pokemon_incense_name_302',107,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (109,'md_pokemon_incense_name_439',109,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (110,'md_pokemon_incense_name_122',110,'2','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (111,'md_pokemon_incense_name_173',111,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (112,'md_pokemon_incense_name_35',112,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (113,'md_pokemon_incense_name_36',113,'1,2,3,4','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (9001,'md_pokemon_incense_name_25',9001,'1','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (114,'md_pokemon_incense_name_353',114,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (115,'md_pokemon_incense_name_354',115,'1,3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (116,'md_pokemon_incense_name_95',116,'3','md_pokemon_incense_desc_1');
INSERT INTO "pokemon_incense" VALUES (117,'md_pokemon_incense_name_208',117,'3','md_pokemon_incense_desc_1');
INSERT INTO "research_rank" VALUES (1,1,1,0,9,1,1,25,1,1,22,1,1,15,139);
INSERT INTO "research_rank" VALUES (2,2,2,103,9,1,1,25,1,1,5,3,1,15,158);
INSERT INTO "research_rank" VALUES (3,3,3,249,9,1,1,25,1,1,5,5,1,15,177);
INSERT INTO "research_rank" VALUES (4,4,4,449,9,1,1,25,1,1,5,2,1,15,199);
INSERT INTO "research_rank" VALUES (5,5,5,712,9,3,1,25,2,1,23,1,1,20,222);
INSERT INTO "research_rank" VALUES (6,6,6,1064,9,1,1,25,1,1,22,1,1,20,249);
INSERT INTO "research_rank" VALUES (7,7,7,1528,9,1,1,25,1,1,5,3,1,20,279);
INSERT INTO "research_rank" VALUES (8,8,8,2128,9,1,1,25,1,1,5,5,1,20,308);
INSERT INTO "research_rank" VALUES (9,9,9,2852,9,1,1,25,1,1,5,2,1,20,335);
INSERT INTO "research_rank" VALUES (10,10,10,3719,9,3,1,25,2,1,23,1,1,25,351);
INSERT INTO "research_rank" VALUES (11,11,11,4685,9,1,1,25,1,1,22,1,1,25,362);
INSERT INTO "research_rank" VALUES (12,12,12,5739,9,1,1,25,1,1,5,3,1,25,373);
INSERT INTO "research_rank" VALUES (13,13,13,6886,9,1,1,25,1,1,5,5,1,25,391);
INSERT INTO "research_rank" VALUES (14,14,14,8156,9,1,1,25,1,1,5,2,1,25,411);
INSERT INTO "research_rank" VALUES (15,15,15,9565,9,3,1,25,2,1,23,1,1,30,432);
INSERT INTO "research_rank" VALUES (16,16,16,11123,9,1,1,25,1,1,22,1,1,30,454);
INSERT INTO "research_rank" VALUES (17,17,17,12846,9,1,1,25,1,1,5,3,1,30,472);
INSERT INTO "research_rank" VALUES (18,18,18,14715,9,1,1,25,1,1,5,5,1,30,489);
INSERT INTO "research_rank" VALUES (19,19,19,16739,9,1,1,25,1,1,5,2,1,30,510);
INSERT INTO "research_rank" VALUES (20,20,20,18938,9,3,1,25,2,1,23,1,1,35,531);
INSERT INTO "research_rank" VALUES (21,21,21,21322,9,1,1,25,1,1,22,1,1,35,552);
INSERT INTO "research_rank" VALUES (22,22,22,23903,9,1,1,25,1,1,5,3,1,35,575);
INSERT INTO "research_rank" VALUES (23,23,23,26691,9,1,1,25,1,1,5,5,1,35,598);
INSERT INTO "research_rank" VALUES (24,24,24,29700,9,1,1,25,1,1,5,2,1,35,619);
INSERT INTO "research_rank" VALUES (25,25,25,32919,9,3,1,25,2,1,23,1,1,35,640);
INSERT INTO "research_rank" VALUES (26,26,26,36360,9,1,1,25,1,1,22,1,1,35,671);
INSERT INTO "research_rank" VALUES (27,27,27,40094,9,1,1,25,1,1,5,3,1,35,703);
INSERT INTO "research_rank" VALUES (28,28,28,44142,9,1,1,25,1,1,5,5,1,35,737);
INSERT INTO "research_rank" VALUES (29,29,29,48524,9,1,1,25,1,1,5,2,1,35,773);
INSERT INTO "research_rank" VALUES (30,30,30,53266,9,3,1,25,2,1,23,1,1,40,805);
INSERT INTO "research_rank" VALUES (31,31,31,58349,9,1,1,25,1,1,22,1,1,40,825);
INSERT INTO "research_rank" VALUES (32,32,32,63699,9,1,1,25,1,1,5,3,1,40,845);
INSERT INTO "research_rank" VALUES (33,33,33,69329,9,1,1,25,1,1,5,5,1,40,879);
INSERT INTO "research_rank" VALUES (34,34,34,75347,9,1,1,25,1,1,5,2,1,40,915);
INSERT INTO "research_rank" VALUES (35,35,35,81774,9,3,1,25,2,1,23,1,1,45,958);
INSERT INTO "research_rank" VALUES (36,36,36,88684,9,1,1,25,1,1,22,1,1,45,1004);
INSERT INTO "research_rank" VALUES (37,37,37,96120,9,1,1,25,1,1,5,3,1,45,1037);
INSERT INTO "research_rank" VALUES (38,38,38,103982,9,1,1,25,1,1,5,5,1,45,1071);
INSERT INTO "research_rank" VALUES (39,39,39,112300,9,1,1,25,1,1,5,2,1,45,1124);
INSERT INTO "research_rank" VALUES (40,40,40,121236,9,3,1,25,2,1,23,1,1,45,1167);
INSERT INTO "research_rank" VALUES (41,41,41,130730,9,1,1,25,1,1,22,1,1,45,1212);
INSERT INTO "research_rank" VALUES (42,42,42,140812,9,1,1,25,1,1,5,3,1,45,1259);
INSERT INTO "research_rank" VALUES (43,43,43,151511,9,1,1,25,1,1,5,5,1,45,1307);
INSERT INTO "research_rank" VALUES (44,44,44,162857,9,1,1,25,1,1,5,2,1,45,1337);
INSERT INTO "research_rank" VALUES (45,45,45,174701,9,3,1,25,2,1,23,1,1,50,1380);
INSERT INTO "research_rank" VALUES (46,46,46,187172,9,1,1,25,1,1,22,1,1,50,1448);
INSERT INTO "research_rank" VALUES (47,47,47,200531,9,1,1,25,1,1,5,3,1,50,1519);
INSERT INTO "research_rank" VALUES (48,48,48,214831,9,1,1,25,1,1,5,5,1,50,1593);
INSERT INTO "research_rank" VALUES (49,49,49,230130,9,1,1,25,1,1,5,2,1,50,1671);
INSERT INTO "research_rank" VALUES (50,50,50,246490,9,3,1,25,2,1,23,1,1,50,1736);
INSERT INTO "gpp_go_bonus_reward" VALUES (1,6,4,0);
INSERT INTO "gpp_go_bonus_reward" VALUES (2,8,4,8);
INSERT INTO "gpp_go_bonus_reward" VALUES (3,10,4,16);
INSERT INTO "gpp_go_bonus_reward" VALUES (4,12,4,24);
INSERT INTO "gpp_go_bonus_reward" VALUES (5,14,4,32);
INSERT INTO "sleeptime_promise" VALUES (1,1,4,5,5);
INSERT INTO "sleeptime_promise" VALUES (2,2,17,1,1);
INSERT INTO "sleeptime_promise" VALUES (3,3,2,0,5);
INSERT INTO "sleeptime_promise" VALUES (4,4,4,9,10);
INSERT INTO "sleeptime_promise" VALUES (5,5,5,3,1);
INSERT INTO "sleeptime_promise" VALUES (6,6,2,0,20);
INSERT INTO "sleeptime_promise" VALUES (7,7,25,1,1);
INSERT INTO "weekly_report_comment" VALUES (1,0,0,'md_weekly_report_comment_comment_1');
INSERT INTO "weekly_report_comment" VALUES (2,0,1,'md_weekly_report_comment_comment_1');
INSERT INTO "weekly_report_comment" VALUES (3,0,2,'md_weekly_report_comment_comment_2');
INSERT INTO "weekly_report_comment" VALUES (4,0,3,'md_weekly_report_comment_comment_2');
INSERT INTO "weekly_report_comment" VALUES (5,1,0,'md_weekly_report_comment_comment_1');
INSERT INTO "weekly_report_comment" VALUES (6,1,1,'md_weekly_report_comment_comment_1');
INSERT INTO "weekly_report_comment" VALUES (7,1,2,'md_weekly_report_comment_comment_2');
INSERT INTO "weekly_report_comment" VALUES (8,1,3,'md_weekly_report_comment_comment_2');
INSERT INTO "weekly_report_comment" VALUES (9,2,0,'md_weekly_report_comment_comment_3');
INSERT INTO "weekly_report_comment" VALUES (10,2,1,'md_weekly_report_comment_comment_3');
INSERT INTO "weekly_report_comment" VALUES (11,2,2,'md_weekly_report_comment_comment_4');
INSERT INTO "weekly_report_comment" VALUES (12,2,3,'md_weekly_report_comment_comment_5');
INSERT INTO "weekly_report_comment" VALUES (13,3,0,'md_weekly_report_comment_comment_3');
INSERT INTO "weekly_report_comment" VALUES (14,3,1,'md_weekly_report_comment_comment_3');
INSERT INTO "weekly_report_comment" VALUES (15,3,2,'md_weekly_report_comment_comment_6');
INSERT INTO "weekly_report_comment" VALUES (16,3,3,'md_weekly_report_comment_comment_7');
INSERT INTO "weekly_report_reward" VALUES (1,0,10,1,1);
INSERT INTO "weekly_report_reward" VALUES (2,1,10,1,1);
INSERT INTO "weekly_report_reward" VALUES (3,2,10,1,2);
INSERT INTO "weekly_report_reward" VALUES (4,3,10,1,2);
INSERT INTO "weekly_report_reward" VALUES (5,4,10,1,3);
INSERT INTO "weekly_report_reward" VALUES (6,5,10,1,4);
INSERT INTO "weekly_report_reward" VALUES (7,6,10,1,6);
INSERT INTO "coin_per_candy_table" VALUES (1,1,1,14);
INSERT INTO "coin_per_candy_table" VALUES (2,2,2,18);
INSERT INTO "coin_per_candy_table" VALUES (3,3,3,22);
INSERT INTO "coin_per_candy_table" VALUES (4,4,4,27);
INSERT INTO "coin_per_candy_table" VALUES (5,5,5,30);
INSERT INTO "coin_per_candy_table" VALUES (6,6,6,34);
INSERT INTO "coin_per_candy_table" VALUES (7,7,7,39);
INSERT INTO "coin_per_candy_table" VALUES (8,8,8,44);
INSERT INTO "coin_per_candy_table" VALUES (9,9,9,48);
INSERT INTO "coin_per_candy_table" VALUES (10,10,10,50);
INSERT INTO "coin_per_candy_table" VALUES (11,11,11,52);
INSERT INTO "coin_per_candy_table" VALUES (12,12,12,53);
INSERT INTO "coin_per_candy_table" VALUES (13,13,13,56);
INSERT INTO "coin_per_candy_table" VALUES (14,14,14,59);
INSERT INTO "coin_per_candy_table" VALUES (15,15,15,62);
INSERT INTO "coin_per_candy_table" VALUES (16,16,16,66);
INSERT INTO "coin_per_candy_table" VALUES (17,17,17,68);
INSERT INTO "coin_per_candy_table" VALUES (18,18,18,71);
INSERT INTO "coin_per_candy_table" VALUES (19,19,19,74);
INSERT INTO "coin_per_candy_table" VALUES (20,20,20,78);
INSERT INTO "coin_per_candy_table" VALUES (21,21,21,81);
INSERT INTO "coin_per_candy_table" VALUES (22,22,22,85);
INSERT INTO "coin_per_candy_table" VALUES (23,23,23,88);
INSERT INTO "coin_per_candy_table" VALUES (24,24,24,92);
INSERT INTO "coin_per_candy_table" VALUES (25,25,25,95);
INSERT INTO "coin_per_candy_table" VALUES (26,26,26,100);
INSERT INTO "coin_per_candy_table" VALUES (27,27,27,105);
INSERT INTO "coin_per_candy_table" VALUES (28,28,28,111);
INSERT INTO "coin_per_candy_table" VALUES (29,29,29,117);
INSERT INTO "coin_per_candy_table" VALUES (30,30,30,122);
INSERT INTO "coin_per_candy_table" VALUES (31,31,31,126);
INSERT INTO "coin_per_candy_table" VALUES (32,32,32,130);
INSERT INTO "coin_per_candy_table" VALUES (33,33,33,136);
INSERT INTO "coin_per_candy_table" VALUES (34,34,34,143);
INSERT INTO "coin_per_candy_table" VALUES (35,35,35,151);
INSERT INTO "coin_per_candy_table" VALUES (36,36,36,160);
INSERT INTO "coin_per_candy_table" VALUES (37,37,37,167);
INSERT INTO "coin_per_candy_table" VALUES (38,38,38,174);
INSERT INTO "coin_per_candy_table" VALUES (39,39,39,184);
INSERT INTO "coin_per_candy_table" VALUES (40,40,40,192);
INSERT INTO "coin_per_candy_table" VALUES (41,41,41,201);
INSERT INTO "coin_per_candy_table" VALUES (42,42,42,211);
INSERT INTO "coin_per_candy_table" VALUES (43,43,43,221);
INSERT INTO "coin_per_candy_table" VALUES (44,44,44,227);
INSERT INTO "coin_per_candy_table" VALUES (45,45,45,236);
INSERT INTO "coin_per_candy_table" VALUES (46,46,46,250);
INSERT INTO "coin_per_candy_table" VALUES (47,47,47,264);
INSERT INTO "coin_per_candy_table" VALUES (48,48,48,279);
INSERT INTO "coin_per_candy_table" VALUES (49,49,49,295);
INSERT INTO "coin_per_candy_table" VALUES (50,50,50,309);
INSERT INTO "storehouse_cookingfood" VALUES (1,1,100,0);
INSERT INTO "storehouse_cookingfood" VALUES (2,2,120,120);
INSERT INTO "storehouse_cookingfood" VALUES (3,3,140,120);
INSERT INTO "storehouse_cookingfood" VALUES (4,4,160,120);
INSERT INTO "storehouse_cookingfood" VALUES (5,5,180,120);
INSERT INTO "storehouse_cookingfood" VALUES (6,6,200,120);
INSERT INTO "storehouse_cookingfood" VALUES (7,7,220,120);
INSERT INTO "storehouse_cookingfood" VALUES (8,8,240,120);
INSERT INTO "storehouse_cookingfood" VALUES (9,9,260,120);
INSERT INTO "storehouse_cookingfood" VALUES (10,10,280,120);
INSERT INTO "storehouse_cookingfood" VALUES (11,11,300,120);
INSERT INTO "storehouse_cookingfood" VALUES (12,12,320,120);
INSERT INTO "storehouse_cookingfood" VALUES (13,13,340,120);
INSERT INTO "storehouse_cookingfood" VALUES (14,14,360,120);
INSERT INTO "storehouse_cookingfood" VALUES (15,15,380,120);
INSERT INTO "storehouse_cookingfood" VALUES (16,16,400,120);
INSERT INTO "storehouse_cookingfood" VALUES (17,17,420,120);
INSERT INTO "storehouse_cookingfood" VALUES (18,18,440,120);
INSERT INTO "storehouse_cookingfood" VALUES (19,19,460,120);
INSERT INTO "storehouse_cookingfood" VALUES (20,20,480,120);
INSERT INTO "storehouse_cookingfood" VALUES (21,21,500,120);
INSERT INTO "storehouse_consumable_item" VALUES (1,1,100,0);
INSERT INTO "storehouse_consumable_item" VALUES (2,2,120,120);
INSERT INTO "storehouse_consumable_item" VALUES (3,3,140,120);
INSERT INTO "storehouse_consumable_item" VALUES (4,4,160,120);
INSERT INTO "storehouse_consumable_item" VALUES (5,5,180,120);
INSERT INTO "storehouse_consumable_item" VALUES (6,6,200,120);
INSERT INTO "storehouse_consumable_item" VALUES (7,7,220,120);
INSERT INTO "storehouse_consumable_item" VALUES (8,8,240,120);
INSERT INTO "storehouse_consumable_item" VALUES (9,9,260,120);
INSERT INTO "storehouse_consumable_item" VALUES (10,10,280,120);
INSERT INTO "storehouse_consumable_item" VALUES (11,11,300,120);
INSERT INTO "storehouse_consumable_item" VALUES (12,12,320,120);
INSERT INTO "storehouse_consumable_item" VALUES (13,13,340,120);
INSERT INTO "storehouse_consumable_item" VALUES (14,14,360,120);
INSERT INTO "storehouse_consumable_item" VALUES (15,15,380,120);
INSERT INTO "storehouse_consumable_item" VALUES (16,16,400,120);
INSERT INTO "storehouse_consumable_item" VALUES (17,17,420,120);
INSERT INTO "storehouse_consumable_item" VALUES (18,18,440,120);
INSERT INTO "storehouse_consumable_item" VALUES (19,19,460,120);
INSERT INTO "storehouse_consumable_item" VALUES (20,20,480,120);
INSERT INTO "storehouse_consumable_item" VALUES (21,21,500,120);
INSERT INTO "pokemon_rank_exp_table" VALUES (1,1,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_rank_exp_table" VALUES (2,2,54,81,97,107,118,130,143,157);
INSERT INTO "pokemon_rank_exp_table" VALUES (3,3,125,188,225,248,273,300,330,363);
INSERT INTO "pokemon_rank_exp_table" VALUES (4,4,233,350,419,461,507,558,614,675);
INSERT INTO "pokemon_rank_exp_table" VALUES (5,5,361,542,650,715,787,866,953,1048);
INSERT INTO "pokemon_rank_exp_table" VALUES (6,6,525,788,945,1040,1144,1258,1384,1522);
INSERT INTO "pokemon_rank_exp_table" VALUES (7,7,727,1091,1309,1440,1584,1742,1916,2108);
INSERT INTO "pokemon_rank_exp_table" VALUES (8,8,971,1457,1748,1923,2115,2327,2560,2816);
INSERT INTO "pokemon_rank_exp_table" VALUES (9,9,1245,1868,2241,2465,2712,2983,3281,3609);
INSERT INTO "pokemon_rank_exp_table" VALUES (10,10,1560,2340,2808,3089,3398,3738,4112,4523);
INSERT INTO "pokemon_rank_exp_table" VALUES (11,11,1905,2858,3429,3772,4149,4564,5020,5522);
INSERT INTO "pokemon_rank_exp_table" VALUES (12,12,2281,3422,4106,4517,4969,5466,6013,6614);
INSERT INTO "pokemon_rank_exp_table" VALUES (13,13,2688,4032,4838,5322,5854,6439,7083,7791);
INSERT INTO "pokemon_rank_exp_table" VALUES (14,14,3107,4661,5593,6152,6767,7444,8188,9007);
INSERT INTO "pokemon_rank_exp_table" VALUES (15,15,3536,5304,6365,7002,7702,8472,9319,10251);
INSERT INTO "pokemon_rank_exp_table" VALUES (16,16,3976,5964,7157,7873,8660,9526,10479,11527);
INSERT INTO "pokemon_rank_exp_table" VALUES (17,17,4430,6645,7974,8771,9648,10613,11674,12841);
INSERT INTO "pokemon_rank_exp_table" VALUES (18,18,4899,7349,8818,9700,10670,11737,12911,14202);
INSERT INTO "pokemon_rank_exp_table" VALUES (19,19,5382,8073,9688,10657,11723,12895,14185,15604);
INSERT INTO "pokemon_rank_exp_table" VALUES (20,20,5879,8819,10582,11640,12804,14084,15492,17041);
INSERT INTO "pokemon_rank_exp_table" VALUES (21,21,6394,9591,11509,12660,13926,15319,16851,18536);
INSERT INTO "pokemon_rank_exp_table" VALUES (22,22,6931,10397,12476,13724,15096,16606,18267,20094);
INSERT INTO "pokemon_rank_exp_table" VALUES (23,23,7489,11234,13480,14828,16311,17942,19736,21710);
INSERT INTO "pokemon_rank_exp_table" VALUES (24,24,8068,12102,14522,15974,17571,19328,21261,23387);
INSERT INTO "pokemon_rank_exp_table" VALUES (25,25,8668,13002,15602,17162,18878,20766,22843,25127);
INSERT INTO "pokemon_rank_exp_table" VALUES (26,26,9290,13935,16722,18394,20233,22256,24482,26930);
INSERT INTO "pokemon_rank_exp_table" VALUES (27,27,9933,14900,17879,19667,21634,23797,26177,28795);
INSERT INTO "pokemon_rank_exp_table" VALUES (28,28,10598,15897,19076,20984,23082,25390,27929,30722);
INSERT INTO "pokemon_rank_exp_table" VALUES (29,29,11284,16926,20311,22342,24576,27034,29737,32711);
INSERT INTO "pokemon_rank_exp_table" VALUES (30,30,11992,17988,21586,23745,26120,28732,31605,34766);
INSERT INTO "pokemon_rank_exp_table" VALUES (31,31,12721,19082,22898,25188,27707,30478,33526,36879);
INSERT INTO "pokemon_rank_exp_table" VALUES (32,32,13469,20204,24244,26668,29335,32269,35496,39046);
INSERT INTO "pokemon_rank_exp_table" VALUES (33,33,14235,21353,25623,28185,31004,34104,37514,41265);
INSERT INTO "pokemon_rank_exp_table" VALUES (34,34,15020,22530,27036,29740,32714,35985,39584,43542);
INSERT INTO "pokemon_rank_exp_table" VALUES (35,35,15823,23735,28481,31329,34462,37908,41699,45869);
INSERT INTO "pokemon_rank_exp_table" VALUES (36,36,16644,24966,29959,32955,36251,39876,43864,48250);
INSERT INTO "pokemon_rank_exp_table" VALUES (37,37,17483,26225,31469,34616,38078,41886,46075,50683);
INSERT INTO "pokemon_rank_exp_table" VALUES (38,38,18340,27510,33012,36313,39944,43938,48332,53165);
INSERT INTO "pokemon_rank_exp_table" VALUES (39,39,19215,28823,34587,38046,41851,46036,50640,55704);
INSERT INTO "pokemon_rank_exp_table" VALUES (40,40,20108,30162,36194,39813,43794,48173,52990,58289);
INSERT INTO "pokemon_rank_exp_table" VALUES (41,41,21018,31527,37832,41615,45777,50355,55391,60930);
INSERT INTO "pokemon_rank_exp_table" VALUES (42,42,21946,32919,39503,43453,47798,52578,57836,63620);
INSERT INTO "pokemon_rank_exp_table" VALUES (43,43,22891,34337,41204,45324,49856,54842,60326,66359);
INSERT INTO "pokemon_rank_exp_table" VALUES (44,44,23854,35781,42937,47231,51954,57149,62864,69150);
INSERT INTO "pokemon_rank_exp_table" VALUES (45,45,24834,37251,44701,49171,54088,59497,65447,71992);
INSERT INTO "pokemon_rank_exp_table" VALUES (46,46,25831,38747,46496,51146,56261,61887,68076,74884);
INSERT INTO "pokemon_rank_exp_table" VALUES (47,47,26846,40269,48323,53155,58471,64318,70750,77825);
INSERT INTO "pokemon_rank_exp_table" VALUES (48,48,27878,41817,50180,55198,60718,66790,73469,80816);
INSERT INTO "pokemon_rank_exp_table" VALUES (49,49,28927,43391,52069,57276,63004,69304,76234,83857);
INSERT INTO "pokemon_rank_exp_table" VALUES (50,50,29993,44990,53987,59386,65325,71858,79044,86948);
INSERT INTO "pokemonbox_expand_table" VALUES (1,1,80,0);
INSERT INTO "pokemonbox_expand_table" VALUES (2,2,100,120);
INSERT INTO "pokemonbox_expand_table" VALUES (3,3,120,120);
INSERT INTO "pokemonbox_expand_table" VALUES (4,4,140,120);
INSERT INTO "pokemonbox_expand_table" VALUES (5,5,160,120);
INSERT INTO "pokemonbox_expand_table" VALUES (6,6,180,120);
INSERT INTO "pokemonbox_expand_table" VALUES (7,7,200,120);
INSERT INTO "pokemonbox_expand_table" VALUES (8,8,220,120);
INSERT INTO "pokemonbox_expand_table" VALUES (9,9,240,120);
INSERT INTO "pokemonbox_expand_table" VALUES (10,10,260,120);
INSERT INTO "pokemonbox_expand_table" VALUES (11,11,280,120);
INSERT INTO "pokemonbox_expand_table" VALUES (12,12,300,120);
INSERT INTO "pokemonbox_expand_table" VALUES (13,13,320,120);
INSERT INTO "pokemonbox_expand_table" VALUES (14,14,340,120);
INSERT INTO "pokemonbox_expand_table" VALUES (15,15,360,120);
INSERT INTO "pokemonbox_expand_table" VALUES (16,16,380,120);
INSERT INTO "pokemonbox_expand_table" VALUES (17,17,400,120);
INSERT INTO "pokemonbox_expand_table" VALUES (18,18,420,120);
INSERT INTO "pokemonbox_expand_table" VALUES (19,19,440,120);
INSERT INTO "pokemonbox_expand_table" VALUES (20,20,460,120);
INSERT INTO "pokemonbox_expand_table" VALUES (21,21,480,120);
INSERT INTO "pokemonbox_expand_table" VALUES (22,22,500,120);
INSERT INTO "pokemonbox_expand_table" VALUES (23,23,520,120);
INSERT INTO "pokemonbox_expand_table" VALUES (24,24,540,120);
INSERT INTO "pokemonbox_expand_table" VALUES (25,25,560,120);
INSERT INTO "pokemonbox_expand_table" VALUES (26,26,580,120);
INSERT INTO "pokemonbox_expand_table" VALUES (27,27,600,120);
INSERT INTO "pokemonbox_expand_table" VALUES (28,28,620,120);
INSERT INTO "pokemonbox_expand_table" VALUES (29,29,640,120);
INSERT INTO "pokemonbox_expand_table" VALUES (30,30,660,120);
INSERT INTO "pokemonbox_expand_table" VALUES (31,31,680,120);
INSERT INTO "pokemonbox_expand_table" VALUES (32,32,700,120);
INSERT INTO "pokemonbox_expand_table" VALUES (33,33,720,120);
INSERT INTO "pokemonbox_expand_table" VALUES (34,34,740,120);
INSERT INTO "pokemonbox_expand_table" VALUES (35,35,760,120);
INSERT INTO "pokemonbox_expand_table" VALUES (36,36,780,120);
INSERT INTO "pokemonbox_expand_table" VALUES (37,37,800,120);
INSERT INTO "pokemonbox_expand_table" VALUES (38,38,820,120);
INSERT INTO "pokemonbox_expand_table" VALUES (39,39,840,120);
INSERT INTO "pokemonbox_expand_table" VALUES (40,40,860,120);
INSERT INTO "pokemonbox_expand_table" VALUES (41,41,880,120);
INSERT INTO "pokemonbox_expand_table" VALUES (42,42,900,120);
INSERT INTO "pokemonbox_expand_table" VALUES (43,43,920,120);
INSERT INTO "pokemonbox_expand_table" VALUES (44,44,940,120);
INSERT INTO "pokemonbox_expand_table" VALUES (45,45,960,120);
INSERT INTO "pokemonbox_expand_table" VALUES (46,46,980,120);
INSERT INTO "pokemonbox_expand_table" VALUES (47,47,1000,120);
INSERT INTO "main_missions" VALUES (1,'md_main_missions_name_1',7,0,1,100,0,0,0,'17,10','1,1','2,3',11500);
INSERT INTO "main_missions" VALUES (2,'md_main_missions_name_2',12,0,2,100,0,0,0,'17,10','1,1','2,3',12000);
INSERT INTO "main_missions" VALUES (3,'md_main_missions_name_3',20,2,0,100,0,0,0,'17,10','1,1','2,3',12500);
INSERT INTO "main_missions" VALUES (4,'md_main_missions_name_4',35,0,3,100,0,0,3,'17,10','1,1','2,3',13000);
INSERT INTO "main_missions" VALUES (5,'md_main_missions_name_5',70,3,0,100,0,0,5,'17,10','1,1','2,3',13500);
INSERT INTO "main_missions" VALUES (6,'md_main_missions_name_6',110,0,0,100,0,0,7,'28,10','4,2','1,1',14000);
INSERT INTO "main_missions" VALUES (7,'md_main_missions_name_7',150,4,0,100,0,0,9,'17,10','2,2','1,1',14500);
INSERT INTO "main_missions" VALUES (8,'md_main_missions_name_8',190,0,0,100,0,0,11,'21,10','1,2','1,1',15000);
INSERT INTO "main_mission_optinal_task_types" VALUES (1,'md_main_mission_optinal_task_types_name_1','md_main_mission_optinal_task_types_tips_1');
INSERT INTO "main_mission_optinal_task_types" VALUES (2,'md_main_mission_optinal_task_types_name_2','md_main_mission_optinal_task_types_tips_2');
INSERT INTO "main_mission_optional_tasks" VALUES (1,1,'お手伝いポケモンのランクをあげる',5);
INSERT INTO "main_mission_optional_tasks" VALUES (2,1,'お手伝いポケモンのランクをあげる',10);
INSERT INTO "main_mission_optional_tasks" VALUES (3,2,'お手伝いポケモンを進化させる',1);
INSERT INTO "main_mission_optional_tasks" VALUES (4,2,'お手伝いポケモンを進化させる',2);
INSERT INTO "main_mission_story" VALUES (1,1,1,'md_main_mission_story_1_1',0,1);
INSERT INTO "main_mission_story" VALUES (2,1,2,'md_main_mission_story_1_2',0,0);
INSERT INTO "main_mission_story" VALUES (3,1,3,'md_main_mission_story_1_3',1,0);
INSERT INTO "main_mission_story" VALUES (4,1,4,'md_main_mission_story_1_4',1,0);
INSERT INTO "main_mission_story" VALUES (5,1,5,'md_main_mission_story_1_5',1,0);
INSERT INTO "main_mission_story" VALUES (6,1,6,'md_main_mission_story_1_6',1,2);
INSERT INTO "main_mission_story" VALUES (7,1,7,'md_main_mission_story_1_7',1,0);
INSERT INTO "main_mission_story" VALUES (8,1,8,'md_main_mission_story_1_8',0,0);
INSERT INTO "main_mission_story" VALUES (9,2,1,'md_main_mission_story_2_1',0,1);
INSERT INTO "main_mission_story" VALUES (10,2,2,'md_main_mission_story_2_2',0,0);
INSERT INTO "main_mission_story" VALUES (11,2,3,'md_main_mission_story_2_3',1,0);
INSERT INTO "main_mission_story" VALUES (12,2,4,'md_main_mission_story_2_4',1,0);
INSERT INTO "main_mission_story" VALUES (13,2,5,'md_main_mission_story_2_5',1,0);
INSERT INTO "main_mission_story" VALUES (14,2,6,'md_main_mission_story_2_6',1,2);
INSERT INTO "main_mission_story" VALUES (15,2,7,'md_main_mission_story_2_7',1,0);
INSERT INTO "main_mission_story" VALUES (16,2,8,'md_main_mission_story_2_8',0,0);
INSERT INTO "main_mission_story" VALUES (17,3,1,'md_main_mission_story_3_1',0,1);
INSERT INTO "main_mission_story" VALUES (18,3,2,'md_main_mission_story_3_2',0,0);
INSERT INTO "main_mission_story" VALUES (19,3,3,'md_main_mission_story_3_3',1,0);
INSERT INTO "main_mission_story" VALUES (20,3,4,'md_main_mission_story_3_4',1,0);
INSERT INTO "main_mission_story" VALUES (21,3,5,'md_main_mission_story_3_5',1,0);
INSERT INTO "main_mission_story" VALUES (22,3,6,'md_main_mission_story_3_6',1,2);
INSERT INTO "main_mission_story" VALUES (23,3,7,'md_main_mission_story_3_7',1,0);
INSERT INTO "main_mission_story" VALUES (24,3,8,'md_main_mission_story_3_8',0,0);
INSERT INTO "main_mission_story" VALUES (25,4,1,'md_main_mission_story_4_1',0,1);
INSERT INTO "main_mission_story" VALUES (26,4,2,'md_main_mission_story_4_2',0,0);
INSERT INTO "main_mission_story" VALUES (27,4,3,'md_main_mission_story_4_3',1,0);
INSERT INTO "main_mission_story" VALUES (28,4,4,'md_main_mission_story_4_4',1,0);
INSERT INTO "main_mission_story" VALUES (29,4,5,'md_main_mission_story_4_5',1,0);
INSERT INTO "main_mission_story" VALUES (30,4,6,'md_main_mission_story_4_6',1,2);
INSERT INTO "main_mission_story" VALUES (31,4,7,'md_main_mission_story_4_7',1,0);
INSERT INTO "main_mission_story" VALUES (32,4,8,'md_main_mission_story_4_8',0,0);
INSERT INTO "main_mission_story" VALUES (33,5,1,'md_main_mission_story_5_1',0,1);
INSERT INTO "main_mission_story" VALUES (34,5,2,'md_main_mission_story_5_2',0,0);
INSERT INTO "main_mission_story" VALUES (35,5,3,'md_main_mission_story_5_3',1,0);
INSERT INTO "main_mission_story" VALUES (36,5,4,'md_main_mission_story_5_4',1,0);
INSERT INTO "main_mission_story" VALUES (37,5,5,'md_main_mission_story_5_5',1,0);
INSERT INTO "main_mission_story" VALUES (38,5,6,'md_main_mission_story_5_6',1,2);
INSERT INTO "main_mission_story" VALUES (39,5,7,'md_main_mission_story_5_7',1,0);
INSERT INTO "main_mission_story" VALUES (40,5,8,'md_main_mission_story_5_8',0,0);
INSERT INTO "main_mission_story" VALUES (41,6,1,'md_main_mission_story_6_1',0,1);
INSERT INTO "main_mission_story" VALUES (42,6,2,'md_main_mission_story_6_2',0,0);
INSERT INTO "main_mission_story" VALUES (43,6,3,'md_main_mission_story_6_3',1,0);
INSERT INTO "main_mission_story" VALUES (44,6,4,'md_main_mission_story_6_4',1,0);
INSERT INTO "main_mission_story" VALUES (45,6,5,'md_main_mission_story_6_5',1,0);
INSERT INTO "main_mission_story" VALUES (46,6,6,'md_main_mission_story_6_6',1,2);
INSERT INTO "main_mission_story" VALUES (47,6,7,'md_main_mission_story_6_7',1,0);
INSERT INTO "main_mission_story" VALUES (48,6,8,'md_main_mission_story_6_8',0,0);
INSERT INTO "main_mission_story" VALUES (49,7,1,'md_main_mission_story_7_1',0,1);
INSERT INTO "main_mission_story" VALUES (50,7,2,'md_main_mission_story_7_2',0,0);
INSERT INTO "main_mission_story" VALUES (51,7,3,'md_main_mission_story_7_3',1,0);
INSERT INTO "main_mission_story" VALUES (52,7,4,'md_main_mission_story_7_4',1,0);
INSERT INTO "main_mission_story" VALUES (53,7,5,'md_main_mission_story_7_5',1,0);
INSERT INTO "main_mission_story" VALUES (54,7,6,'md_main_mission_story_7_6',1,2);
INSERT INTO "main_mission_story" VALUES (55,7,7,'md_main_mission_story_7_7',1,0);
INSERT INTO "main_mission_story" VALUES (56,7,8,'md_main_mission_story_7_8',0,0);
INSERT INTO "main_mission_story" VALUES (57,8,1,'md_main_mission_story_8_1',0,1);
INSERT INTO "main_mission_story" VALUES (58,8,2,'md_main_mission_story_8_2',0,0);
INSERT INTO "main_mission_story" VALUES (59,8,3,'md_main_mission_story_8_3',1,0);
INSERT INTO "main_mission_story" VALUES (60,8,4,'md_main_mission_story_8_4',1,0);
INSERT INTO "main_mission_story" VALUES (61,8,5,'md_main_mission_story_8_5',1,0);
INSERT INTO "main_mission_story" VALUES (62,8,6,'md_main_mission_story_waiting_update',1,0);
INSERT INTO "main_mission_story" VALUES (63,8,7,'md_main_mission_story_8_7',1,0);
INSERT INTO "main_mission_story" VALUES (64,8,8,'md_main_mission_story_8_8',0,0);
INSERT INTO "unlock_features" VALUES (1,'md_unlock_features_name_1');
INSERT INTO "unlock_features" VALUES (2,'md_unlock_features_name_2');
INSERT INTO "unlock_features" VALUES (3,'md_unlock_features_name_3');
INSERT INTO "weekly_missions" VALUES (1,1,4,1,0,70);
INSERT INTO "weekly_missions" VALUES (2,1,4,1,0,90);
INSERT INTO "weekly_missions" VALUES (3,1,4,1,0,120);
INSERT INTO "weekly_missions" VALUES (4,1,4,1,0,140);
INSERT INTO "weekly_missions" VALUES (5,1,4,1,0,150);
INSERT INTO "weekly_missions" VALUES (6,1,4,1,0,170);
INSERT INTO "weekly_missions" VALUES (7,1,5,1,0,200);
INSERT INTO "weekly_missions" VALUES (8,1,5,1,0,220);
INSERT INTO "weekly_missions" VALUES (9,1,5,1,0,240);
INSERT INTO "weekly_missions" VALUES (10,1,5,1,0,240);
INSERT INTO "weekly_missions" VALUES (11,1,5,1,0,250);
INSERT INTO "weekly_missions" VALUES (12,1,5,1,0,260);
INSERT INTO "weekly_missions" VALUES (13,1,5,1,0,280);
INSERT INTO "weekly_missions" VALUES (14,1,5,1,0,290);
INSERT INTO "weekly_missions" VALUES (15,1,5,1,0,300);
INSERT INTO "weekly_missions" VALUES (16,1,6,1,0,310);
INSERT INTO "weekly_missions" VALUES (17,1,6,1,0,320);
INSERT INTO "weekly_missions" VALUES (18,1,6,1,0,330);
INSERT INTO "weekly_missions" VALUES (19,1,6,1,0,360);
INSERT INTO "weekly_missions" VALUES (20,1,6,1,0,370);
INSERT INTO "weekly_missions" VALUES (21,1,6,1,0,380);
INSERT INTO "weekly_missions" VALUES (22,1,6,1,0,390);
INSERT INTO "weekly_missions" VALUES (23,1,6,1,0,410);
INSERT INTO "weekly_missions" VALUES (24,1,6,1,0,430);
INSERT INTO "weekly_missions" VALUES (25,1,6,1,0,440);
INSERT INTO "weekly_missions" VALUES (26,1,6,1,0,460);
INSERT INTO "weekly_missions" VALUES (27,1,6,1,0,480);
INSERT INTO "weekly_missions" VALUES (28,1,6,1,0,510);
INSERT INTO "weekly_missions" VALUES (29,1,6,1,0,540);
INSERT INTO "weekly_missions" VALUES (30,1,6,1,0,560);
INSERT INTO "weekly_missions" VALUES (31,1,6,1,0,580);
INSERT INTO "weekly_missions" VALUES (32,1,6,1,0,590);
INSERT INTO "weekly_missions" VALUES (33,1,6,1,0,610);
INSERT INTO "weekly_missions" VALUES (34,1,6,1,0,630);
INSERT INTO "weekly_missions" VALUES (35,1,6,1,0,670);
INSERT INTO "weekly_missions" VALUES (36,1,7,1,0,700);
INSERT INTO "weekly_missions" VALUES (37,1,7,1,0,720);
INSERT INTO "weekly_missions" VALUES (38,1,7,1,0,750);
INSERT INTO "weekly_missions" VALUES (39,1,7,1,0,780);
INSERT INTO "weekly_missions" VALUES (40,1,7,1,0,820);
INSERT INTO "weekly_missions" VALUES (41,1,7,1,0,840);
INSERT INTO "weekly_missions" VALUES (42,1,7,1,0,870);
INSERT INTO "weekly_missions" VALUES (43,1,7,1,0,910);
INSERT INTO "weekly_missions" VALUES (44,1,7,1,0,930);
INSERT INTO "weekly_missions" VALUES (45,1,7,1,0,950);
INSERT INTO "weekly_missions" VALUES (46,1,7,1,0,1010);
INSERT INTO "weekly_missions" VALUES (47,1,7,1,0,1060);
INSERT INTO "weekly_missions" VALUES (48,1,7,1,0,1120);
INSERT INTO "weekly_missions" VALUES (49,1,7,1,0,1160);
INSERT INTO "weekly_missions" VALUES (50,1,7,1,0,1210);
INSERT INTO "weekly_missions" VALUES (51,1,7,1,0,1240);
INSERT INTO "weekly_missions" VALUES (52,1,7,1,0,1270);
INSERT INTO "weekly_missions" VALUES (53,1,7,1,0,1310);
INSERT INTO "weekly_missions" VALUES (54,1,7,1,0,1370);
INSERT INTO "weekly_missions" VALUES (55,1,7,1,0,1430);
INSERT INTO "weekly_missions" VALUES (56,1,8,1,0,1500);
INSERT INTO "weekly_missions" VALUES (57,1,8,1,0,1540);
INSERT INTO "weekly_missions" VALUES (58,1,8,1,0,1590);
INSERT INTO "weekly_missions" VALUES (59,1,8,1,0,1670);
INSERT INTO "weekly_missions" VALUES (60,1,8,1,0,1740);
INSERT INTO "weekly_missions" VALUES (201,1,8,25,1,1);
INSERT INTO "weekly_missions" VALUES (202,1,8,25,1,1);
INSERT INTO "weekly_missions" VALUES (203,1,8,25,1,1);
INSERT INTO "weekly_missions" VALUES (204,1,9,25,1,1);
INSERT INTO "weekly_missions" VALUES (205,1,9,25,1,1);
INSERT INTO "weekly_missions" VALUES (206,1,9,25,1,1);
INSERT INTO "weekly_missions" VALUES (207,1,9,25,1,1);
INSERT INTO "weekly_missions" VALUES (208,1,9,25,1,1);
INSERT INTO "weekly_missions" VALUES (209,1,9,25,1,1);
INSERT INTO "weekly_missions" VALUES (210,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (211,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (212,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (213,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (214,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (215,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (216,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (217,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (218,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (219,1,10,25,1,1);
INSERT INTO "weekly_missions" VALUES (220,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (221,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (222,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (223,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (224,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (225,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (226,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (227,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (228,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (229,1,11,25,1,1);
INSERT INTO "weekly_missions" VALUES (230,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (231,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (232,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (233,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (234,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (235,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (236,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (237,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (238,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (239,1,12,25,1,1);
INSERT INTO "weekly_missions" VALUES (240,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (241,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (242,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (243,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (244,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (245,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (246,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (247,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (248,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (249,1,13,25,1,1);
INSERT INTO "weekly_missions" VALUES (250,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (251,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (252,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (253,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (254,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (255,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (256,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (257,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (258,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (259,1,14,25,1,1);
INSERT INTO "weekly_missions" VALUES (260,1,15,25,1,1);
INSERT INTO "weekly_missions" VALUES (401,1,12,29,1,1);
INSERT INTO "weekly_missions" VALUES (402,1,12,29,1,1);
INSERT INTO "weekly_missions" VALUES (403,1,13,29,1,1);
INSERT INTO "weekly_missions" VALUES (404,1,13,29,1,1);
INSERT INTO "weekly_missions" VALUES (405,1,13,29,1,1);
INSERT INTO "weekly_missions" VALUES (406,1,14,29,1,1);
INSERT INTO "weekly_missions" VALUES (407,1,14,29,1,1);
INSERT INTO "weekly_missions" VALUES (408,1,14,29,1,1);
INSERT INTO "weekly_missions" VALUES (409,1,14,29,1,1);
INSERT INTO "weekly_missions" VALUES (410,1,14,29,1,1);
INSERT INTO "weekly_missions" VALUES (411,1,14,29,1,1);
INSERT INTO "weekly_missions" VALUES (412,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (413,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (414,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (415,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (416,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (417,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (418,1,15,29,2,1);
INSERT INTO "weekly_missions" VALUES (419,1,16,29,2,1);
INSERT INTO "weekly_missions" VALUES (420,1,16,29,2,1);
INSERT INTO "weekly_missions" VALUES (421,1,16,29,2,1);
INSERT INTO "weekly_missions" VALUES (422,1,16,29,2,1);
INSERT INTO "weekly_missions" VALUES (423,1,16,29,2,1);
INSERT INTO "weekly_missions" VALUES (424,1,16,29,2,1);
INSERT INTO "weekly_missions" VALUES (425,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (426,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (427,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (428,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (429,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (430,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (431,1,17,29,3,1);
INSERT INTO "weekly_missions" VALUES (432,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (433,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (434,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (435,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (436,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (437,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (438,1,18,29,3,1);
INSERT INTO "weekly_missions" VALUES (439,1,19,29,3,1);
INSERT INTO "weekly_missions" VALUES (440,1,19,29,3,1);
INSERT INTO "weekly_missions" VALUES (441,1,19,29,3,1);
INSERT INTO "weekly_missions" VALUES (442,1,19,29,3,1);
INSERT INTO "weekly_missions" VALUES (443,1,19,29,3,1);
INSERT INTO "weekly_missions" VALUES (444,1,19,29,3,1);
INSERT INTO "weekly_missions" VALUES (445,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (446,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (447,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (448,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (449,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (450,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (451,1,20,29,3,1);
INSERT INTO "weekly_missions" VALUES (452,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (453,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (454,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (455,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (456,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (457,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (458,1,21,29,3,1);
INSERT INTO "weekly_missions" VALUES (459,1,22,29,3,1);
INSERT INTO "weekly_missions" VALUES (460,1,22,29,3,1);
INSERT INTO "weekly_missions" VALUES (1001,2,14,1,0,70);
INSERT INTO "weekly_missions" VALUES (1002,2,14,1,0,90);
INSERT INTO "weekly_missions" VALUES (1003,2,14,1,0,120);
INSERT INTO "weekly_missions" VALUES (1004,2,15,1,0,140);
INSERT INTO "weekly_missions" VALUES (1005,2,15,1,0,150);
INSERT INTO "weekly_missions" VALUES (1006,2,15,1,0,170);
INSERT INTO "weekly_missions" VALUES (1007,2,16,1,0,200);
INSERT INTO "weekly_missions" VALUES (1008,2,16,1,0,220);
INSERT INTO "weekly_missions" VALUES (1009,2,16,1,0,240);
INSERT INTO "weekly_missions" VALUES (1010,2,17,1,0,240);
INSERT INTO "weekly_missions" VALUES (1011,2,17,1,0,250);
INSERT INTO "weekly_missions" VALUES (1012,2,17,1,0,260);
INSERT INTO "weekly_missions" VALUES (1013,2,17,1,0,280);
INSERT INTO "weekly_missions" VALUES (1014,2,17,1,0,290);
INSERT INTO "weekly_missions" VALUES (1015,2,17,1,0,300);
INSERT INTO "weekly_missions" VALUES (1016,2,17,1,0,310);
INSERT INTO "weekly_missions" VALUES (1017,2,17,1,0,320);
INSERT INTO "weekly_missions" VALUES (1018,2,17,1,0,330);
INSERT INTO "weekly_missions" VALUES (1019,2,17,1,0,360);
INSERT INTO "weekly_missions" VALUES (1020,2,17,1,0,370);
INSERT INTO "weekly_missions" VALUES (1021,2,17,1,0,380);
INSERT INTO "weekly_missions" VALUES (1022,2,17,1,0,390);
INSERT INTO "weekly_missions" VALUES (1023,2,17,1,0,410);
INSERT INTO "weekly_missions" VALUES (1024,2,17,1,0,430);
INSERT INTO "weekly_missions" VALUES (1025,2,17,1,0,440);
INSERT INTO "weekly_missions" VALUES (1026,2,17,1,0,460);
INSERT INTO "weekly_missions" VALUES (1027,2,17,1,0,480);
INSERT INTO "weekly_missions" VALUES (1028,2,17,1,0,510);
INSERT INTO "weekly_missions" VALUES (1029,2,17,1,0,540);
INSERT INTO "weekly_missions" VALUES (1030,2,17,1,0,560);
INSERT INTO "weekly_missions" VALUES (1031,2,17,1,0,580);
INSERT INTO "weekly_missions" VALUES (1032,2,17,1,0,590);
INSERT INTO "weekly_missions" VALUES (1033,2,17,1,0,610);
INSERT INTO "weekly_missions" VALUES (1034,2,17,1,0,630);
INSERT INTO "weekly_missions" VALUES (1035,2,17,1,0,670);
INSERT INTO "weekly_missions" VALUES (1036,2,17,1,0,700);
INSERT INTO "weekly_missions" VALUES (1037,2,17,1,0,720);
INSERT INTO "weekly_missions" VALUES (1038,2,17,1,0,750);
INSERT INTO "weekly_missions" VALUES (1039,2,17,1,0,780);
INSERT INTO "weekly_missions" VALUES (1040,2,17,1,0,820);
INSERT INTO "weekly_missions" VALUES (1041,2,17,1,0,840);
INSERT INTO "weekly_missions" VALUES (1042,2,17,1,0,870);
INSERT INTO "weekly_missions" VALUES (1043,2,17,1,0,910);
INSERT INTO "weekly_missions" VALUES (1044,2,17,1,0,930);
INSERT INTO "weekly_missions" VALUES (1045,2,17,1,0,950);
INSERT INTO "weekly_missions" VALUES (1046,2,17,1,0,1010);
INSERT INTO "weekly_missions" VALUES (1047,2,17,1,0,1060);
INSERT INTO "weekly_missions" VALUES (1048,2,17,1,0,1120);
INSERT INTO "weekly_missions" VALUES (1049,2,17,1,0,1160);
INSERT INTO "weekly_missions" VALUES (1050,2,17,1,0,1210);
INSERT INTO "weekly_missions" VALUES (1051,2,17,1,0,1240);
INSERT INTO "weekly_missions" VALUES (1052,2,17,1,0,1270);
INSERT INTO "weekly_missions" VALUES (1053,2,17,1,0,1310);
INSERT INTO "weekly_missions" VALUES (1054,2,17,1,0,1370);
INSERT INTO "weekly_missions" VALUES (1055,2,17,1,0,1430);
INSERT INTO "weekly_missions" VALUES (1056,2,17,1,0,1500);
INSERT INTO "weekly_missions" VALUES (1057,2,17,1,0,1540);
INSERT INTO "weekly_missions" VALUES (1058,2,17,1,0,1590);
INSERT INTO "weekly_missions" VALUES (1059,2,17,1,0,1670);
INSERT INTO "weekly_missions" VALUES (1060,2,17,1,0,1740);
INSERT INTO "weekly_missions" VALUES (1201,5,295,1,0,70);
INSERT INTO "weekly_missions" VALUES (1202,5,452,1,0,90);
INSERT INTO "weekly_missions" VALUES (1203,5,504,1,0,120);
INSERT INTO "weekly_missions" VALUES (1204,5,562,1,0,140);
INSERT INTO "weekly_missions" VALUES (1205,5,620,1,0,150);
INSERT INTO "weekly_missions" VALUES (1206,5,683,1,0,170);
INSERT INTO "weekly_missions" VALUES (1207,5,748,1,0,200);
INSERT INTO "weekly_missions" VALUES (1208,5,812,1,0,220);
INSERT INTO "weekly_missions" VALUES (1209,5,862,1,0,240);
INSERT INTO "weekly_missions" VALUES (1210,5,881,1,0,240);
INSERT INTO "weekly_missions" VALUES (1211,5,894,1,0,250);
INSERT INTO "weekly_missions" VALUES (1212,5,908,1,0,260);
INSERT INTO "weekly_missions" VALUES (1213,5,927,1,0,280);
INSERT INTO "weekly_missions" VALUES (1214,5,947,1,0,290);
INSERT INTO "weekly_missions" VALUES (1215,5,961,1,0,300);
INSERT INTO "weekly_missions" VALUES (1216,5,980,1,0,310);
INSERT INTO "weekly_missions" VALUES (1217,5,995,1,0,320);
INSERT INTO "weekly_missions" VALUES (1218,5,1015,1,0,330);
INSERT INTO "weekly_missions" VALUES (1219,5,1034,1,0,360);
INSERT INTO "weekly_missions" VALUES (1220,5,1049,1,0,370);
INSERT INTO "weekly_missions" VALUES (1221,5,1069,1,0,380);
INSERT INTO "weekly_missions" VALUES (1222,5,1089,1,0,390);
INSERT INTO "weekly_missions" VALUES (1223,5,1104,1,0,410);
INSERT INTO "weekly_missions" VALUES (1224,5,1125,1,0,430);
INSERT INTO "weekly_missions" VALUES (1225,5,1140,1,0,440);
INSERT INTO "weekly_missions" VALUES (1226,5,1161,1,0,460);
INSERT INTO "weekly_missions" VALUES (1227,5,1181,1,0,480);
INSERT INTO "weekly_missions" VALUES (1228,5,1202,1,0,510);
INSERT INTO "weekly_missions" VALUES (1229,5,1218,1,0,540);
INSERT INTO "weekly_missions" VALUES (1230,5,1239,1,0,560);
INSERT INTO "weekly_missions" VALUES (1231,5,1254,1,0,580);
INSERT INTO "weekly_missions" VALUES (1232,5,1276,1,0,590);
INSERT INTO "weekly_missions" VALUES (1233,5,1297,1,0,610);
INSERT INTO "weekly_missions" VALUES (1234,5,1319,1,0,630);
INSERT INTO "weekly_missions" VALUES (1235,5,1340,1,0,670);
INSERT INTO "weekly_missions" VALUES (1236,5,1362,1,0,700);
INSERT INTO "weekly_missions" VALUES (1237,5,1379,1,0,720);
INSERT INTO "weekly_missions" VALUES (1238,5,1401,1,0,750);
INSERT INTO "weekly_missions" VALUES (1239,5,1423,1,0,780);
INSERT INTO "weekly_missions" VALUES (1240,5,1445,1,0,820);
INSERT INTO "weekly_missions" VALUES (1241,5,1462,1,0,840);
INSERT INTO "weekly_missions" VALUES (1242,5,1484,1,0,870);
INSERT INTO "weekly_missions" VALUES (1243,5,1507,1,0,910);
INSERT INTO "weekly_missions" VALUES (1244,5,1529,1,0,930);
INSERT INTO "weekly_missions" VALUES (1245,5,1552,1,0,950);
INSERT INTO "weekly_missions" VALUES (1246,5,1575,1,0,1010);
INSERT INTO "weekly_missions" VALUES (1247,5,1598,1,0,1060);
INSERT INTO "weekly_missions" VALUES (1248,5,1622,1,0,1120);
INSERT INTO "weekly_missions" VALUES (1249,5,1645,1,0,1160);
INSERT INTO "weekly_missions" VALUES (1250,5,1668,1,0,1210);
INSERT INTO "weekly_missions" VALUES (1251,5,1686,1,0,1240);
INSERT INTO "weekly_missions" VALUES (1252,5,1710,1,0,1270);
INSERT INTO "weekly_missions" VALUES (1253,5,1733,1,0,1310);
INSERT INTO "weekly_missions" VALUES (1254,5,1757,1,0,1370);
INSERT INTO "weekly_missions" VALUES (1255,5,1781,1,0,1430);
INSERT INTO "weekly_missions" VALUES (1256,5,1806,1,0,1500);
INSERT INTO "weekly_missions" VALUES (1257,5,1830,1,0,1540);
INSERT INTO "weekly_missions" VALUES (1258,5,1854,1,0,1590);
INSERT INTO "weekly_missions" VALUES (1259,5,1879,1,0,1670);
INSERT INTO "weekly_missions" VALUES (1260,5,1903,1,0,1740);
INSERT INTO "weekly_missions" VALUES (1401,6,47,10,1,2);
INSERT INTO "weekly_missions" VALUES (1402,6,73,10,1,2);
INSERT INTO "weekly_missions" VALUES (1403,6,82,10,1,2);
INSERT INTO "weekly_missions" VALUES (1404,6,92,10,1,2);
INSERT INTO "weekly_missions" VALUES (1405,6,102,10,1,2);
INSERT INTO "weekly_missions" VALUES (1406,6,113,10,1,2);
INSERT INTO "weekly_missions" VALUES (1407,6,124,10,1,2);
INSERT INTO "weekly_missions" VALUES (1408,6,136,10,1,2);
INSERT INTO "weekly_missions" VALUES (1409,6,145,10,1,2);
INSERT INTO "weekly_missions" VALUES (1410,6,149,10,1,2);
INSERT INTO "weekly_missions" VALUES (1411,6,152,10,1,2);
INSERT INTO "weekly_missions" VALUES (1412,6,155,10,1,2);
INSERT INTO "weekly_missions" VALUES (1413,6,159,10,1,2);
INSERT INTO "weekly_missions" VALUES (1414,6,164,10,1,2);
INSERT INTO "weekly_missions" VALUES (1415,6,167,10,1,2);
INSERT INTO "weekly_missions" VALUES (1416,6,172,10,1,2);
INSERT INTO "weekly_missions" VALUES (1417,6,175,10,1,2);
INSERT INTO "weekly_missions" VALUES (1418,6,180,10,1,2);
INSERT INTO "weekly_missions" VALUES (1419,6,184,10,1,2);
INSERT INTO "weekly_missions" VALUES (1420,6,188,10,1,2);
INSERT INTO "weekly_missions" VALUES (1421,6,192,10,1,2);
INSERT INTO "weekly_missions" VALUES (1422,6,197,10,1,2);
INSERT INTO "weekly_missions" VALUES (1423,6,201,10,1,2);
INSERT INTO "weekly_missions" VALUES (1424,6,206,10,1,2);
INSERT INTO "weekly_missions" VALUES (1425,6,210,10,1,2);
INSERT INTO "weekly_missions" VALUES (1426,6,215,10,1,2);
INSERT INTO "weekly_missions" VALUES (1427,6,220,10,1,2);
INSERT INTO "weekly_missions" VALUES (1428,6,225,10,1,2);
INSERT INTO "weekly_missions" VALUES (1429,6,229,10,1,2);
INSERT INTO "weekly_missions" VALUES (1430,6,234,10,1,2);
INSERT INTO "weekly_missions" VALUES (1431,6,238,10,1,2);
INSERT INTO "weekly_missions" VALUES (1432,6,244,10,1,2);
INSERT INTO "weekly_missions" VALUES (1433,6,249,10,1,2);
INSERT INTO "weekly_missions" VALUES (1434,6,255,10,1,2);
INSERT INTO "weekly_missions" VALUES (1435,6,260,10,1,2);
INSERT INTO "weekly_missions" VALUES (1436,6,266,10,1,2);
INSERT INTO "weekly_missions" VALUES (1437,6,270,10,1,2);
INSERT INTO "weekly_missions" VALUES (1438,6,276,10,1,2);
INSERT INTO "weekly_missions" VALUES (1439,6,282,10,1,2);
INSERT INTO "weekly_missions" VALUES (1440,6,288,10,1,3);
INSERT INTO "weekly_missions" VALUES (1441,6,292,10,1,3);
INSERT INTO "weekly_missions" VALUES (1442,6,298,10,1,3);
INSERT INTO "weekly_missions" VALUES (1443,6,304,10,1,3);
INSERT INTO "weekly_missions" VALUES (1444,6,310,10,1,3);
INSERT INTO "weekly_missions" VALUES (1445,6,317,10,1,3);
INSERT INTO "weekly_missions" VALUES (1446,6,323,10,1,3);
INSERT INTO "weekly_missions" VALUES (1447,6,329,10,1,3);
INSERT INTO "weekly_missions" VALUES (1448,6,336,10,1,3);
INSERT INTO "weekly_missions" VALUES (1449,6,342,10,1,3);
INSERT INTO "weekly_missions" VALUES (1450,6,349,10,1,3);
INSERT INTO "weekly_missions" VALUES (1451,6,354,10,1,3);
INSERT INTO "weekly_missions" VALUES (1452,6,361,10,1,3);
INSERT INTO "weekly_missions" VALUES (1453,6,367,10,1,3);
INSERT INTO "weekly_missions" VALUES (1454,6,374,10,1,3);
INSERT INTO "weekly_missions" VALUES (1455,6,381,10,1,3);
INSERT INTO "weekly_missions" VALUES (1456,6,388,10,1,3);
INSERT INTO "weekly_missions" VALUES (1457,6,395,10,1,3);
INSERT INTO "weekly_missions" VALUES (1458,6,402,10,1,3);
INSERT INTO "weekly_missions" VALUES (1459,6,410,10,1,3);
INSERT INTO "weekly_missions" VALUES (1460,6,417,10,1,3);
INSERT INTO "weekly_missions" VALUES (1601,7,4,2,0,15);
INSERT INTO "weekly_missions" VALUES (1602,7,4,2,0,15);
INSERT INTO "weekly_missions" VALUES (1603,7,4,2,0,15);
INSERT INTO "weekly_missions" VALUES (1604,7,4,2,0,15);
INSERT INTO "weekly_missions" VALUES (1605,7,4,2,0,15);
INSERT INTO "weekly_missions" VALUES (1606,7,4,2,0,15);
INSERT INTO "weekly_missions" VALUES (1607,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1608,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1609,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1610,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1611,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1612,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1613,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1614,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1615,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1616,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1617,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1618,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1619,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1620,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1621,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1622,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1623,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1624,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1625,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1626,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1627,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1628,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1629,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1630,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1631,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1632,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1633,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1634,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1635,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1636,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1637,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1638,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1639,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1640,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1641,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1642,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1643,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1644,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1645,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1646,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1647,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1648,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1649,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1650,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1651,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1652,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1653,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1654,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1655,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1656,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1657,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1658,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1659,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1660,7,5,2,0,15);
INSERT INTO "weekly_missions" VALUES (1801,8,6,1,0,70);
INSERT INTO "weekly_missions" VALUES (1802,8,7,1,0,90);
INSERT INTO "weekly_missions" VALUES (1803,8,7,1,0,120);
INSERT INTO "weekly_missions" VALUES (1804,8,7,1,0,140);
INSERT INTO "weekly_missions" VALUES (1805,8,7,1,0,150);
INSERT INTO "weekly_missions" VALUES (1806,8,8,1,0,170);
INSERT INTO "weekly_missions" VALUES (1807,8,8,1,0,200);
INSERT INTO "weekly_missions" VALUES (1808,8,8,1,0,220);
INSERT INTO "weekly_missions" VALUES (1809,8,8,1,0,240);
INSERT INTO "weekly_missions" VALUES (1810,8,9,1,0,240);
INSERT INTO "weekly_missions" VALUES (1811,8,9,1,0,250);
INSERT INTO "weekly_missions" VALUES (1812,8,9,1,0,260);
INSERT INTO "weekly_missions" VALUES (1813,8,9,1,0,280);
INSERT INTO "weekly_missions" VALUES (1814,8,9,1,0,290);
INSERT INTO "weekly_missions" VALUES (1815,8,9,1,0,300);
INSERT INTO "weekly_missions" VALUES (1816,8,9,1,0,310);
INSERT INTO "weekly_missions" VALUES (1817,8,9,1,0,320);
INSERT INTO "weekly_missions" VALUES (1818,8,9,1,0,330);
INSERT INTO "weekly_missions" VALUES (1819,8,9,1,0,360);
INSERT INTO "weekly_missions" VALUES (1820,8,9,1,0,370);
INSERT INTO "weekly_missions" VALUES (1821,8,9,1,0,380);
INSERT INTO "weekly_missions" VALUES (1822,8,9,1,0,390);
INSERT INTO "weekly_missions" VALUES (1823,8,9,1,0,410);
INSERT INTO "weekly_missions" VALUES (1824,8,9,1,0,430);
INSERT INTO "weekly_missions" VALUES (1825,8,9,1,0,440);
INSERT INTO "weekly_missions" VALUES (1826,8,9,1,0,460);
INSERT INTO "weekly_missions" VALUES (1827,8,9,1,0,480);
INSERT INTO "weekly_missions" VALUES (1828,8,9,1,0,510);
INSERT INTO "weekly_missions" VALUES (1829,8,9,1,0,540);
INSERT INTO "weekly_missions" VALUES (1830,8,9,1,0,560);
INSERT INTO "weekly_missions" VALUES (1831,8,9,1,0,580);
INSERT INTO "weekly_missions" VALUES (1832,8,9,1,0,590);
INSERT INTO "weekly_missions" VALUES (1833,8,9,1,0,610);
INSERT INTO "weekly_missions" VALUES (1834,8,9,1,0,630);
INSERT INTO "weekly_missions" VALUES (1835,8,9,1,0,670);
INSERT INTO "weekly_missions" VALUES (1836,8,9,1,0,700);
INSERT INTO "weekly_missions" VALUES (1837,8,9,1,0,720);
INSERT INTO "weekly_missions" VALUES (1838,8,9,1,0,750);
INSERT INTO "weekly_missions" VALUES (1839,8,9,1,0,780);
INSERT INTO "weekly_missions" VALUES (1840,8,9,1,0,820);
INSERT INTO "weekly_missions" VALUES (1841,8,10,1,0,840);
INSERT INTO "weekly_missions" VALUES (1842,8,10,1,0,870);
INSERT INTO "weekly_missions" VALUES (1843,8,10,1,0,910);
INSERT INTO "weekly_missions" VALUES (1844,8,10,1,0,930);
INSERT INTO "weekly_missions" VALUES (1845,8,10,1,0,950);
INSERT INTO "weekly_missions" VALUES (1846,8,10,1,0,1010);
INSERT INTO "weekly_missions" VALUES (1847,8,10,1,0,1060);
INSERT INTO "weekly_missions" VALUES (1848,8,10,1,0,1120);
INSERT INTO "weekly_missions" VALUES (1849,8,10,1,0,1160);
INSERT INTO "weekly_missions" VALUES (1850,8,10,1,0,1210);
INSERT INTO "weekly_missions" VALUES (1851,8,10,1,0,1240);
INSERT INTO "weekly_missions" VALUES (1852,8,10,1,0,1270);
INSERT INTO "weekly_missions" VALUES (1853,8,10,1,0,1310);
INSERT INTO "weekly_missions" VALUES (1854,8,10,1,0,1370);
INSERT INTO "weekly_missions" VALUES (1855,8,10,1,0,1430);
INSERT INTO "weekly_missions" VALUES (1856,8,10,1,0,1500);
INSERT INTO "weekly_missions" VALUES (1857,8,10,1,0,1540);
INSERT INTO "weekly_missions" VALUES (1858,8,10,1,0,1590);
INSERT INTO "weekly_missions" VALUES (1859,8,10,1,0,1670);
INSERT INTO "weekly_missions" VALUES (1860,8,10,1,0,1740);
INSERT INTO "weekly_missions" VALUES (2001,9,10,10,1,2);
INSERT INTO "weekly_missions" VALUES (2002,9,10,10,1,2);
INSERT INTO "weekly_missions" VALUES (2003,9,10,10,1,2);
INSERT INTO "weekly_missions" VALUES (2004,9,10,10,1,2);
INSERT INTO "weekly_missions" VALUES (2005,9,11,10,1,2);
INSERT INTO "weekly_missions" VALUES (2006,9,11,10,1,2);
INSERT INTO "weekly_missions" VALUES (2007,9,11,10,1,2);
INSERT INTO "weekly_missions" VALUES (2008,9,11,10,1,2);
INSERT INTO "weekly_missions" VALUES (2009,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2010,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2011,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2012,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2013,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2014,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2015,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2016,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2017,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2018,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2019,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2020,9,12,10,1,2);
INSERT INTO "weekly_missions" VALUES (2021,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2022,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2023,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2024,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2025,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2026,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2027,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2028,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2029,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2030,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2031,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2032,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2033,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2034,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2035,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2036,9,13,10,1,2);
INSERT INTO "weekly_missions" VALUES (2037,9,14,10,1,2);
INSERT INTO "weekly_missions" VALUES (2038,9,14,10,1,2);
INSERT INTO "weekly_missions" VALUES (2039,9,14,10,1,2);
INSERT INTO "weekly_missions" VALUES (2040,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2041,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2042,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2043,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2044,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2045,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2046,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2047,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2048,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2049,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2050,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2051,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2052,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2053,9,14,10,1,3);
INSERT INTO "weekly_missions" VALUES (2054,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2055,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2056,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2057,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2058,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2059,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2060,9,15,10,1,3);
INSERT INTO "weekly_missions" VALUES (2201,10,62,2,0,15);
INSERT INTO "weekly_missions" VALUES (2202,10,68,2,0,15);
INSERT INTO "weekly_missions" VALUES (2203,10,74,2,0,15);
INSERT INTO "weekly_missions" VALUES (2204,10,80,2,0,15);
INSERT INTO "weekly_missions" VALUES (2205,10,87,2,0,15);
INSERT INTO "weekly_missions" VALUES (2206,10,94,2,0,15);
INSERT INTO "weekly_missions" VALUES (2207,10,100,2,0,15);
INSERT INTO "weekly_missions" VALUES (2208,10,108,2,0,15);
INSERT INTO "weekly_missions" VALUES (2209,10,114,2,0,15);
INSERT INTO "weekly_missions" VALUES (2210,10,121,2,0,15);
INSERT INTO "weekly_missions" VALUES (2211,10,128,2,0,15);
INSERT INTO "weekly_missions" VALUES (2212,10,136,2,0,15);
INSERT INTO "weekly_missions" VALUES (2213,10,144,2,0,15);
INSERT INTO "weekly_missions" VALUES (2214,10,151,2,0,15);
INSERT INTO "weekly_missions" VALUES (2215,10,159,2,0,15);
INSERT INTO "weekly_missions" VALUES (2216,10,167,2,0,15);
INSERT INTO "weekly_missions" VALUES (2217,10,175,2,0,15);
INSERT INTO "weekly_missions" VALUES (2218,10,183,2,0,15);
INSERT INTO "weekly_missions" VALUES (2219,10,189,2,0,15);
INSERT INTO "weekly_missions" VALUES (2220,10,192,2,0,15);
INSERT INTO "weekly_missions" VALUES (2221,10,195,2,0,15);
INSERT INTO "weekly_missions" VALUES (2222,10,197,2,0,15);
INSERT INTO "weekly_missions" VALUES (2223,10,200,2,0,15);
INSERT INTO "weekly_missions" VALUES (2224,10,203,2,0,15);
INSERT INTO "weekly_missions" VALUES (2225,10,206,2,0,15);
INSERT INTO "weekly_missions" VALUES (2226,10,208,2,0,15);
INSERT INTO "weekly_missions" VALUES (2227,10,212,2,0,15);
INSERT INTO "weekly_missions" VALUES (2228,10,215,2,0,15);
INSERT INTO "weekly_missions" VALUES (2229,10,217,2,0,15);
INSERT INTO "weekly_missions" VALUES (2230,10,220,2,0,15);
INSERT INTO "weekly_missions" VALUES (2231,10,222,2,0,15);
INSERT INTO "weekly_missions" VALUES (2232,10,224,2,0,15);
INSERT INTO "weekly_missions" VALUES (2233,10,225,2,0,15);
INSERT INTO "weekly_missions" VALUES (2234,10,227,2,0,15);
INSERT INTO "weekly_missions" VALUES (2235,10,228,2,0,15);
INSERT INTO "weekly_missions" VALUES (2236,10,230,2,0,15);
INSERT INTO "weekly_missions" VALUES (2237,10,232,2,0,15);
INSERT INTO "weekly_missions" VALUES (2238,10,233,2,0,15);
INSERT INTO "weekly_missions" VALUES (2239,10,235,2,0,15);
INSERT INTO "weekly_missions" VALUES (2240,10,236,2,0,15);
INSERT INTO "weekly_missions" VALUES (2241,10,238,2,0,15);
INSERT INTO "weekly_missions" VALUES (2242,10,240,2,0,15);
INSERT INTO "weekly_missions" VALUES (2243,10,241,2,0,15);
INSERT INTO "weekly_missions" VALUES (2244,10,244,2,0,15);
INSERT INTO "weekly_missions" VALUES (2245,10,245,2,0,15);
INSERT INTO "weekly_missions" VALUES (2246,10,247,2,0,15);
INSERT INTO "weekly_missions" VALUES (2247,10,248,2,0,15);
INSERT INTO "weekly_missions" VALUES (2248,10,250,2,0,15);
INSERT INTO "weekly_missions" VALUES (2249,10,252,2,0,15);
INSERT INTO "weekly_missions" VALUES (2250,10,253,2,0,15);
INSERT INTO "weekly_missions" VALUES (2251,10,255,2,0,15);
INSERT INTO "weekly_missions" VALUES (2252,10,257,2,0,15);
INSERT INTO "weekly_missions" VALUES (2253,10,259,2,0,15);
INSERT INTO "weekly_missions" VALUES (2254,10,260,2,0,15);
INSERT INTO "weekly_missions" VALUES (2255,10,262,2,0,15);
INSERT INTO "weekly_missions" VALUES (2256,10,264,2,0,15);
INSERT INTO "weekly_missions" VALUES (2257,10,266,2,0,15);
INSERT INTO "weekly_missions" VALUES (2258,10,268,2,0,15);
INSERT INTO "weekly_missions" VALUES (2259,10,269,2,0,15);
INSERT INTO "weekly_missions" VALUES (2260,10,271,2,0,15);
INSERT INTO "weekly_mission_types" VALUES (1,'md_weekly_mission_types_name_1','md_weekly_mission_types_tips_1');
INSERT INTO "weekly_mission_types" VALUES (2,'md_weekly_mission_types_name_2','md_weekly_mission_types_tips_2');
INSERT INTO "weekly_mission_types" VALUES (5,'md_weekly_mission_types_name_5','md_weekly_mission_types_tips_5');
INSERT INTO "weekly_mission_types" VALUES (6,'md_weekly_mission_types_name_6','md_weekly_mission_types_tips_6');
INSERT INTO "weekly_mission_types" VALUES (7,'md_weekly_mission_types_name_7','md_weekly_mission_types_tips_7');
INSERT INTO "weekly_mission_types" VALUES (8,'md_weekly_mission_types_name_8','md_weekly_mission_types_tips_8');
INSERT INTO "weekly_mission_types" VALUES (9,'md_weekly_mission_types_name_9','md_weekly_mission_types_tips_9');
INSERT INTO "weekly_mission_types" VALUES (10,'md_weekly_mission_types_name_10','md_weekly_mission_types_tips_10');
INSERT INTO "weekly_mission_types" VALUES (12,'md_weekly_mission_types_name_12','md_weekly_mission_types_tips_12');
INSERT INTO "bait_balls" VALUES (1,'md_bait_balls_name_1',1,1000,'md_bait_balls_desc_1');
INSERT INTO "bait_balls" VALUES (2,'md_bait_balls_name_2',10000,1002,'md_bait_balls_desc_2');
INSERT INTO "bait_balls" VALUES (3,'md_bait_balls_name_3',3,1001,'md_bait_balls_desc_3');
INSERT INTO "item_type" VALUES (0,'NONE');
INSERT INTO "item_type" VALUES (1,'コイン');
INSERT INTO "item_type" VALUES (2,'ダイヤ');
INSERT INTO "item_type" VALUES (3,'きのみ');
INSERT INTO "item_type" VALUES (4,'食材・料理');
INSERT INTO "item_type" VALUES (5,'睡眠消費アイテム');
INSERT INTO "item_type" VALUES (6,'レシピ');
INSERT INTO "item_type" VALUES (7,'マップ');
INSERT INTO "item_type" VALUES (8,'睡眠グッズ（環境アイテム）');
INSERT INTO "item_type" VALUES (9,'エサ玉');
INSERT INTO "item_type" VALUES (10,'ばんのうアメ');
INSERT INTO "item_type" VALUES (11,'環境アイテム素材');
INSERT INTO "item_type" VALUES (12,'食材ボックス（お手伝いの大量）');
INSERT INTO "item_type" VALUES (13,'食材詰め合わせ（カビゴンのお礼）');
INSERT INTO "item_type" VALUES (14,'ノート');
INSERT INTO "item_type" VALUES (15,'ポケモンが確定でくる');
INSERT INTO "item_type" VALUES (16,'機能アンロック');
INSERT INTO "item_type" VALUES (17,'食材詰め合わせ（アイテムとして使用）');
INSERT INTO "item_type" VALUES (18,'種族アメ');
INSERT INTO "item_type" VALUES (19,'スリープポイント');
INSERT INTO "item_type" VALUES (20,'フィールド移動用アイテム');
INSERT INTO "item_type" VALUES (21,'いいキャンプチケット');
INSERT INTO "item_type" VALUES (22,'げんきリカバー');
INSERT INTO "item_type" VALUES (23,'おてつだいホイッスル');
INSERT INTO "item_type" VALUES (24,'ゆめのかたまり');
INSERT INTO "item_type" VALUES (25,'アイテムパック');
INSERT INTO "item_type" VALUES (26,'メインスキルのたね');
INSERT INTO "item_type" VALUES (27,'サブスキルのたね');
INSERT INTO "item_type" VALUES (28,'進化の道具');
INSERT INTO "item_type" VALUES (29,'種族のおこう');
INSERT INTO "item_type" VALUES (30,'期間限定アイテム');
INSERT INTO "ingredient_bag_items" VALUES (1,'md_ingredient_bag_items_name_1',10,2000,2,'md_ingredient_bag_items_desc_1');
INSERT INTO "ingredient_bag_items" VALUES (2,'md_ingredient_bag_items_name_2',30,2002,3,'md_ingredient_bag_items_desc_2');
INSERT INTO "ingredient_bag_items" VALUES (3,'md_ingredient_bag_items_name_3',100,2001,4,'md_ingredient_bag_items_desc_3');
INSERT INTO "coin_bag_items" VALUES (1,'md_coin_bag_items_name_1',1,3000,'md_coin_bag_items_desc_1');
INSERT INTO "coin_bag_items" VALUES (2,'md_coin_bag_items_name_2',6,3001,'md_coin_bag_items_desc_2');
INSERT INTO "coin_bag_items" VALUES (3,'md_coin_bag_items_name_3',25,3002,'md_coin_bag_items_desc_3');
INSERT INTO "power_recover_items" VALUES (1,'md_power_recover_items_name_1','md_power_recover_items_desc_1',50,4000);
INSERT INTO "gpp_voice_list" VALUES (1,201,'md_gpp_voice_list_name_1','CHEER_1',0);
INSERT INTO "gpp_voice_list" VALUES (2,202,'md_gpp_voice_list_name_2','CHEER_2',0);
INSERT INTO "gpp_voice_list" VALUES (3,203,'md_gpp_voice_list_name_3','CHEER_3',0);
INSERT INTO "gpp_voice_list" VALUES (4,204,'md_gpp_voice_list_name_4','CHEER_4',0);
INSERT INTO "gpp_voice_list" VALUES (5,205,'md_gpp_voice_list_name_5','CHEER_5',0);
INSERT INTO "gpp_voice_list" VALUES (6,206,'md_gpp_voice_list_name_6','CHEER_6',0);
INSERT INTO "gpp_voice_list" VALUES (7,207,'md_gpp_voice_list_name_7','CHEER_7',0);
INSERT INTO "gpp_voice_list" VALUES (8,208,'md_gpp_voice_list_name_8','CHEER_8',0);
INSERT INTO "gpp_voice_list" VALUES (9,209,'md_gpp_voice_list_name_9','VIGOROTH_1',0);
INSERT INTO "gpp_voice_list" VALUES (10,210,'md_gpp_voice_list_name_10','VIGOROTH_2',0);
INSERT INTO "gpp_voice_list" VALUES (11,211,'md_gpp_voice_list_name_11','VIGOROTH_3',0);
INSERT INTO "gpp_voice_list" VALUES (12,212,'md_gpp_voice_list_name_12','SLEEPY_1',0);
INSERT INTO "gpp_voice_list" VALUES (13,213,'md_gpp_voice_list_name_13','SLEEPY_2',0);
INSERT INTO "gpp_voice_list" VALUES (14,214,'md_gpp_voice_list_name_14','SLEEPY_3',0);
INSERT INTO "gpp_voice_list" VALUES (15,215,'md_gpp_voice_list_name_15','SLEEPY_4',0);
INSERT INTO "gpp_voice_list" VALUES (16,216,'md_gpp_voice_list_name_16','SLEEPY_5',0);
INSERT INTO "gpp_voice_list" VALUES (17,217,'md_gpp_voice_list_name_17','SLEEPY_6',0);
INSERT INTO "gpp_voice_list" VALUES (18,218,'md_gpp_voice_list_name_18','SLEEPY_7',0);
INSERT INTO "gpp_voice_list" VALUES (19,219,'md_gpp_voice_list_name_19','SLEEPY_8',0);
INSERT INTO "gpp_voice_list" VALUES (20,220,'md_gpp_voice_list_name_20','OVERSLEEP_1',0);
INSERT INTO "gpp_voice_list" VALUES (21,221,'md_gpp_voice_list_name_21','OVERSLEEP_2',0);
INSERT INTO "gpp_voice_list" VALUES (22,222,'md_gpp_voice_list_name_22','OVERSLEEP_3',0);
INSERT INTO "gpp_voice_list" VALUES (23,223,'md_gpp_voice_list_name_23','BAD_1',0);
INSERT INTO "gpp_voice_list" VALUES (24,224,'md_gpp_voice_list_name_24','BAD_2',0);
INSERT INTO "gpp_voice_list" VALUES (25,225,'md_gpp_voice_list_name_25','BAD_3',0);
INSERT INTO "gpp_voice_list" VALUES (26,226,'md_gpp_voice_list_name_26','BAD_4',0);
INSERT INTO "gpp_voice_list" VALUES (27,227,'md_gpp_voice_list_name_27','BAD_5',0);
INSERT INTO "gpp_voice_list" VALUES (28,228,'md_gpp_voice_list_name_28','BAD_6',0);
INSERT INTO "gpp_voice_list" VALUES (29,229,'md_gpp_voice_list_name_29','BAD_7',0);
INSERT INTO "gpp_voice_list" VALUES (30,230,'md_gpp_voice_list_name_30','BAD_8',0);
INSERT INTO "gpp_voice_list" VALUES (31,231,'md_gpp_voice_list_name_31','FAWN_1',0);
INSERT INTO "gpp_voice_list" VALUES (32,232,'md_gpp_voice_list_name_32','FAWN_2',0);
INSERT INTO "gpp_voice_list" VALUES (33,233,'md_gpp_voice_list_name_33','FAWN_3',0);
INSERT INTO "gpp_voice_list" VALUES (34,234,'md_gpp_voice_list_name_34','MISCHIEF_1',0);
INSERT INTO "gpp_voice_list" VALUES (35,235,'md_gpp_voice_list_name_35','MISCHIEF_2',0);
INSERT INTO "gpp_voice_list" VALUES (36,236,'md_gpp_voice_list_name_36','MISCHIEF_3',0);
INSERT INTO "gpp_voice_list" VALUES (37,237,'md_gpp_voice_list_name_37','WHISPER_1',0);
INSERT INTO "gpp_voice_list" VALUES (38,238,'md_gpp_voice_list_name_38','WHISPER_2',0);
INSERT INTO "gpp_voice_list" VALUES (39,239,'md_gpp_voice_list_name_39','WHISPER_3',0);
INSERT INTO "gpp_voice_list" VALUES (40,240,'md_gpp_voice_list_name_40','SPECIAL_1',1);
INSERT INTO "gpp_voice_list" VALUES (41,241,'md_gpp_voice_list_name_41','SPECIAL_2',1);
INSERT INTO "gpp_voice_list" VALUES (42,242,'md_gpp_voice_list_name_42','SPECIAL_3',1);
INSERT INTO "gpp_voice_list" VALUES (43,243,'md_gpp_voice_list_name_43','SPECIAL_4',1);
INSERT INTO "gpp_voice_list" VALUES (44,244,'md_gpp_voice_list_name_44','SPECIAL_GO_1',1);
INSERT INTO "gpp_voice_list" VALUES (45,245,'md_gpp_voice_list_name_45','SPECIAL_GO_2',1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (1,1,0,8,4800,4,1,0,0,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (2,2,20,8,4680,4,1,0,0,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (3,3,40,9,4560,4,1,5,1,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (4,4,70,9,4440,4,1,5,1,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (5,5,100,10,4380,4,1,5,1,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (6,6,140,10,4320,4,1,5,1,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (7,7,180,11,4260,4,1,5,1,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (8,8,220,11,4200,4,1,5,1,0,0);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (9,9,270,12,4140,4,1,5,1,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (10,10,320,12,4080,4,1,5,1,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (11,11,400,13,4020,4,2,5,1,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (12,12,500,13,3960,4,2,5,1,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (13,13,620,14,3900,4,2,5,2,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (14,14,750,14,3840,4,2,5,2,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (15,15,900,15,3780,4,2,5,2,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (16,16,1080,15,3720,4,2,5,2,13,1);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (17,17,1300,16,3660,4,2,5,2,13,2);
INSERT INTO "gpp_totalsleep_reward_table" VALUES (18,18,1600,16,3600,4,2,5,2,13,2);
INSERT INTO "sleep_tips" VALUES (1,'md_sleep_tips_title_1','md_sleep_tips_narrow_title_1','md_sleep_tips_desc_1');
INSERT INTO "sleep_tips" VALUES (2,'md_sleep_tips_title_2','md_sleep_tips_narrow_title_2','md_sleep_tips_desc_2');
INSERT INTO "sleep_tips" VALUES (3,'md_sleep_tips_title_3','md_sleep_tips_narrow_title_3','md_sleep_tips_desc_3');
INSERT INTO "sleep_tips" VALUES (4,'md_sleep_tips_title_5','md_sleep_tips_narrow_title_5','md_sleep_tips_desc_5');
INSERT INTO "sleep_tips" VALUES (5,'md_sleep_tips_title_6','md_sleep_tips_narrow_title_6','md_sleep_tips_desc_6');
INSERT INTO "sleep_tips" VALUES (6,'md_sleep_tips_title_7','md_sleep_tips_narrow_title_7','md_sleep_tips_desc_7');
INSERT INTO "sleep_tips" VALUES (7,'md_sleep_tips_title_8','md_sleep_tips_narrow_title_8','md_sleep_tips_desc_8');
INSERT INTO "sleep_tips" VALUES (8,'md_sleep_tips_title_9','md_sleep_tips_narrow_title_9','md_sleep_tips_desc_9');
INSERT INTO "sleep_tips" VALUES (9,'md_sleep_tips_title_10','md_sleep_tips_narrow_title_10','md_sleep_tips_desc_10');
INSERT INTO "sleep_tips" VALUES (10,'md_sleep_tips_title_11','md_sleep_tips_narrow_title_11','md_sleep_tips_desc_11');
INSERT INTO "sleep_tips" VALUES (11,'md_sleep_tips_title_12','md_sleep_tips_narrow_title_12','md_sleep_tips_desc_12');
INSERT INTO "sleep_tips" VALUES (12,'md_sleep_tips_title_13','md_sleep_tips_narrow_title_13','md_sleep_tips_desc_13');
INSERT INTO "sleep_tips" VALUES (13,'md_sleep_tips_title_14','md_sleep_tips_narrow_title_14','md_sleep_tips_desc_14');
INSERT INTO "sleep_tips" VALUES (14,'md_sleep_tips_title_15','md_sleep_tips_narrow_title_15','md_sleep_tips_desc_15');
INSERT INTO "sleep_tips" VALUES (15,'md_sleep_tips_title_16','md_sleep_tips_narrow_title_16','md_sleep_tips_desc_16');
INSERT INTO "sleep_tips" VALUES (16,'md_sleep_tips_title_17','md_sleep_tips_narrow_title_17','md_sleep_tips_desc_17');
INSERT INTO "sleep_tips" VALUES (17,'md_sleep_tips_title_18','md_sleep_tips_narrow_title_18','md_sleep_tips_desc_18');
INSERT INTO "sleep_tips" VALUES (18,'md_sleep_tips_title_19','md_sleep_tips_narrow_title_19','md_sleep_tips_desc_19');
INSERT INTO "sleep_tips" VALUES (19,'md_sleep_tips_title_20','md_sleep_tips_narrow_title_20','md_sleep_tips_desc_20');
INSERT INTO "sleep_tips" VALUES (20,'md_sleep_tips_title_21','md_sleep_tips_narrow_title_21','md_sleep_tips_desc_21');
INSERT INTO "sleep_tips" VALUES (21,'md_sleep_tips_title_22','md_sleep_tips_narrow_title_22','md_sleep_tips_desc_22');
INSERT INTO "sleep_tips" VALUES (22,'md_sleep_tips_title_23','md_sleep_tips_narrow_title_23','md_sleep_tips_desc_23');
INSERT INTO "sleep_tips" VALUES (23,'md_sleep_tips_title_24','md_sleep_tips_narrow_title_24','md_sleep_tips_desc_24');
INSERT INTO "sleep_tips" VALUES (24,'md_sleep_tips_title_25','md_sleep_tips_narrow_title_25','md_sleep_tips_desc_25');
INSERT INTO "sleep_tips" VALUES (25,'md_sleep_tips_title_26','md_sleep_tips_narrow_title_26','md_sleep_tips_desc_26');
INSERT INTO "sleep_tips" VALUES (26,'md_sleep_tips_title_27','md_sleep_tips_narrow_title_27','md_sleep_tips_desc_27');
INSERT INTO "sleep_tips" VALUES (27,'md_sleep_tips_title_28','md_sleep_tips_narrow_title_28','md_sleep_tips_desc_28');
INSERT INTO "sleep_tips" VALUES (28,'md_sleep_tips_title_29','md_sleep_tips_narrow_title_29','md_sleep_tips_desc_29');
INSERT INTO "sleep_tips" VALUES (29,'md_sleep_tips_title_30','md_sleep_tips_narrow_title_30','md_sleep_tips_desc_30');
INSERT INTO "sleep_tips" VALUES (30,'md_sleep_tips_title_31','md_sleep_tips_narrow_title_31','md_sleep_tips_desc_31');
INSERT INTO "sleep_tips" VALUES (31,'md_sleep_tips_title_32','md_sleep_tips_narrow_title_32','md_sleep_tips_desc_32');
INSERT INTO "sleep_tips" VALUES (32,'md_sleep_tips_title_33','md_sleep_tips_narrow_title_33','md_sleep_tips_desc_33');
INSERT INTO "sleep_tips" VALUES (33,'md_sleep_tips_title_34','md_sleep_tips_narrow_title_34','md_sleep_tips_desc_34');
INSERT INTO "sleep_tips" VALUES (34,'md_sleep_tips_title_35','md_sleep_tips_narrow_title_35','md_sleep_tips_desc_35');
INSERT INTO "sleep_tips" VALUES (35,'md_sleep_tips_title_36','md_sleep_tips_narrow_title_36','md_sleep_tips_desc_36');
INSERT INTO "sleep_tips" VALUES (36,'md_sleep_tips_title_37','md_sleep_tips_narrow_title_37','md_sleep_tips_desc_37');
INSERT INTO "sleep_tips" VALUES (37,'md_sleep_tips_title_38','md_sleep_tips_narrow_title_38','md_sleep_tips_desc_38');
INSERT INTO "sleep_tips" VALUES (38,'md_sleep_tips_title_39','md_sleep_tips_narrow_title_39','md_sleep_tips_desc_39');
INSERT INTO "sleep_tips" VALUES (39,'md_sleep_tips_title_41','md_sleep_tips_narrow_title_41','md_sleep_tips_desc_41');
INSERT INTO "sleep_tips" VALUES (40,'md_sleep_tips_title_42','md_sleep_tips_narrow_title_42','md_sleep_tips_desc_42');
INSERT INTO "sleep_tips" VALUES (41,'md_sleep_tips_title_43','md_sleep_tips_narrow_title_43','md_sleep_tips_desc_43');
INSERT INTO "sleep_tips" VALUES (42,'md_sleep_tips_title_44','md_sleep_tips_narrow_title_44','md_sleep_tips_desc_44');
INSERT INTO "sleep_tips" VALUES (43,'md_sleep_tips_title_45','md_sleep_tips_narrow_title_45','md_sleep_tips_desc_45');
INSERT INTO "sleep_tips" VALUES (44,'md_sleep_tips_title_46','md_sleep_tips_narrow_title_46','md_sleep_tips_desc_46');
INSERT INTO "sleep_tips" VALUES (45,'md_sleep_tips_title_47','md_sleep_tips_narrow_title_47','md_sleep_tips_desc_47');
INSERT INTO "sleep_tips" VALUES (46,'md_sleep_tips_title_48','md_sleep_tips_narrow_title_48','md_sleep_tips_desc_48');
INSERT INTO "sleep_tips" VALUES (47,'md_sleep_tips_title_49','md_sleep_tips_narrow_title_49','md_sleep_tips_desc_49');
INSERT INTO "sleep_tips" VALUES (48,'md_sleep_tips_title_50','md_sleep_tips_narrow_title_50','md_sleep_tips_desc_50');
INSERT INTO "sleep_tips" VALUES (49,'md_sleep_tips_title_51','md_sleep_tips_narrow_title_51','md_sleep_tips_desc_51');
INSERT INTO "sleep_tips" VALUES (50,'md_sleep_tips_title_52','md_sleep_tips_narrow_title_52','md_sleep_tips_desc_52');
INSERT INTO "sleep_tips" VALUES (51,'md_sleep_tips_title_53','md_sleep_tips_narrow_title_53','md_sleep_tips_desc_53');
INSERT INTO "sleep_tips" VALUES (52,'md_sleep_tips_title_54','md_sleep_tips_narrow_title_54','md_sleep_tips_desc_54');
INSERT INTO "cooking_expand_table" VALUES (1,1,0,0);
INSERT INTO "cooking_expand_table" VALUES (2,2,3,1200);
INSERT INTO "cooking_expand_table" VALUES (3,3,6,2700);
INSERT INTO "cooking_expand_table" VALUES (4,4,9,4100);
INSERT INTO "cooking_expand_table" VALUES (5,5,12,6600);
INSERT INTO "cooking_expand_table" VALUES (6,6,15,8600);
INSERT INTO "cooking_expand_table" VALUES (7,7,18,13300);
INSERT INTO "cooking_expand_table" VALUES (8,8,21,15300);
INSERT INTO "cooking_expand_table" VALUES (9,9,24,15700);
INSERT INTO "cooking_expand_table" VALUES (10,10,27,18100);
INSERT INTO "cooking_expand_table" VALUES (11,11,30,22000);
INSERT INTO "cooking_expand_table" VALUES (12,12,33,24000);
INSERT INTO "cooking_expand_table" VALUES (13,13,36,30000);
INSERT INTO "cooking_expand_table" VALUES (14,14,39,33000);
INSERT INTO "cooking_expand_table" VALUES (15,15,42,41000);
INSERT INTO "cooking_expand_table" VALUES (16,16,45,45000);
INSERT INTO "cooking_expand_table" VALUES (17,17,48,55000);
INSERT INTO "cooking_expand_table" VALUES (18,18,51,61000);
INSERT INTO "cooking_expand_table" VALUES (19,19,54,73000);
INSERT INTO "cooking_expand_table" VALUES (20,20,57,80000);
INSERT INTO "cooking_expand_table" VALUES (21,21,60,98000);
INSERT INTO "cooking_expand_table" VALUES (22,22,63,108000);
INSERT INTO "cooking_expand_table" VALUES (23,23,66,130000);
INSERT INTO "item_packs" VALUES (1,'md_item_packs_name_1','9,22,23','1,1,1','8,1,1',3,25,2,1,'md_item_packs_desc_1');
INSERT INTO "item_packs" VALUES (2,'md_item_packs_name_2','9,5,5,5','3,2,1,4','8,1,1,1',3,25,2,1,'md_item_packs_desc_2');
INSERT INTO "event_item_packs" VALUES (1,'md_event_item_packs_name_4','9,5','1,5','15,3','temp',1,0);
INSERT INTO "event_item_packs" VALUES (2,'md_event_item_packs_name_6','9,5,23','3,5,1','20,7,3','temp',2,0);
INSERT INTO "event_item_packs" VALUES (3,'md_event_item_packs_name_3','9,5,5,5','3,2,1,4','9,2,2,2','temp',1001,1);
INSERT INTO "event_item_packs" VALUES (4,'md_event_item_packs_name_3','9,5,5,5','3,2,1,4','9,2,2,2','temp',1001,2);
INSERT INTO "event_item_packs" VALUES (5,'md_event_item_packs_name_7','9,5,10','1,5,1','10,2,5','temp',3,0);
INSERT INTO "event_item_packs" VALUES (6,'md_event_item_packs_name_8','9,5,10,10','3,5,1,2','20,6,10,3','temp',4,0);
INSERT INTO "event_item_packs" VALUES (7,'md_event_item_packs_name_3','9,5,5,5','3,2,1,4','9,2,2,2','temp',1001,3);
INSERT INTO "event_item_packs" VALUES (8,'md_event_item_packs_name_11','9,5,10','3,5,1','1,1,3','temp',7,0);
INSERT INTO "event_item_packs" VALUES (9,'md_event_item_packs_name_12','9,9,5,10','3,1,5,1','2,6,1,6','temp',8,0);
INSERT INTO "event_item_packs" VALUES (10,'md_event_item_packs_name_13','9,5,10,10','3,5,1,2','10,3,6,2','temp',9,0);
INSERT INTO "event_item_packs" VALUES (11,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (12,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (13,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (14,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (15,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (16,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (17,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (18,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (19,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (20,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (21,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (22,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (23,'md_event_item_packs_name_9','17,9','1,1','2,2','temp',5,1);
INSERT INTO "event_item_packs" VALUES (24,'md_event_item_packs_name_10','9,17','3,2','1,1','temp',6,1);
INSERT INTO "event_item_packs" VALUES (25,'md_event_item_packs_name_14','9,9,18','3,1,2','1,2,10','temp',10,0);
INSERT INTO "event_item_packs" VALUES (26,'md_event_item_packs_name_15','9,5,18,29','1,5,2,2','18,2,40,2','temp',11,0);
INSERT INTO "event_item_packs" VALUES (27,'md_event_item_packs_name_16','9,5,18,29','3,5,2,2','15,5,100,5','temp',12,0);
INSERT INTO "event_item_packs" VALUES (28,'md_event_item_packs_name_3','9,5,5,5','3,2,1,4','9,2,2,2','temp',1001,4);
INSERT INTO "dia_shop" VALUES (1,600,'temp',24,1,1,1,2,0,'use_dia_shop_10');
INSERT INTO "dia_shop" VALUES (2,1500,'temp',24,2,1,2,2,0,'use_dia_shop_11');
INSERT INTO "dia_shop" VALUES (3,180,'temp',9,1,3,1,3,0,'use_dia_shop_8');
INSERT INTO "dia_shop" VALUES (4,600,'temp',9,3,3,2,3,0,'use_dia_shop_9');
INSERT INTO "dia_shop" VALUES (5,150,'temp',5,4,1,3,3,0,'use_dia_shop_1');
INSERT INTO "dia_shop" VALUES (6,150,'temp',5,2,1,4,3,0,'use_dia_shop_2');
INSERT INTO "dia_shop" VALUES (7,200,'temp',5,1,1,5,3,0,'use_dia_shop_3');
INSERT INTO "dia_shop" VALUES (8,150,'temp',5,5,1,6,3,0,'use_dia_shop_12');
INSERT INTO "dia_shop" VALUES (9,500,'temp',21,1,1,7,3,0,'use_dia_shop_7');
INSERT INTO "dia_shop" VALUES (10,60,'temp',22,1,1,8,3,0,'use_dia_shop_4');
INSERT INTO "dia_shop" VALUES (11,200,'temp',23,1,1,9,3,0,'use_dia_shop_5');
INSERT INTO "dia_shop" VALUES (12,150,'temp',20,1,1,10,3,0,'use_dia_shop_6');
INSERT INTO "dia_shop" VALUES (13,600,'md_event_item_packs_name_4',30,1,1,1,1,1,'use_dia_shop_13');
INSERT INTO "dia_shop" VALUES (14,3000,'md_event_item_packs_name_6',30,2,1,2,1,1,'use_dia_shop_14');
INSERT INTO "dia_shop" VALUES (15,1500,'md_event_item_packs_name_3',30,3,1,1,4,1,'use_dia_shop_15');
INSERT INTO "dia_shop" VALUES (16,1500,'md_event_item_packs_name_3',30,4,1,1,5,1,'use_dia_shop_15');
INSERT INTO "dia_shop" VALUES (17,600,'md_event_item_packs_name_7',30,5,1,1,6,1,'use_dia_shop_15');
INSERT INTO "dia_shop" VALUES (18,3000,'md_event_item_packs_name_8',30,6,1,1,6,1,'use_dia_shop_15');
INSERT INTO "dia_shop" VALUES (19,1500,'md_event_item_packs_name_3',30,7,1,1,7,1,'use_dia_shop_15');
INSERT INTO "dia_shop" VALUES (20,250,'md_event_item_packs_name_9',30,8,1,1,8,3,'use_dia_shop_18');
INSERT INTO "dia_shop" VALUES (21,600,'md_event_item_packs_name_10',30,9,1,2,8,1,'use_dia_shop_19');
INSERT INTO "dia_shop" VALUES (22,1500,'md_event_item_packs_name_11',30,10,1,3,8,1,'use_dia_shop_20');
INSERT INTO "dia_shop" VALUES (23,0,'md_event_item_packs_name_9',30,11,1,1,9,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (24,100,'md_event_item_packs_name_10',30,12,1,2,9,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (25,0,'md_event_item_packs_name_9',30,13,1,1,10,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (26,100,'md_event_item_packs_name_10',30,14,1,2,10,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (27,0,'md_event_item_packs_name_9',30,15,1,1,11,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (28,100,'md_event_item_packs_name_10',30,16,1,2,11,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (29,0,'md_event_item_packs_name_9',30,17,1,1,12,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (30,100,'md_event_item_packs_name_10',30,18,1,2,12,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (31,0,'md_event_item_packs_name_9',30,19,1,1,13,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (32,100,'md_event_item_packs_name_10',30,20,1,2,13,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (33,0,'md_event_item_packs_name_9',30,21,1,1,14,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (34,100,'md_event_item_packs_name_10',30,22,1,2,14,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (35,0,'md_event_item_packs_name_9',30,23,1,1,15,1,'use_dia_shop_16');
INSERT INTO "dia_shop" VALUES (36,100,'md_event_item_packs_name_10',30,24,1,2,15,1,'use_dia_shop_17');
INSERT INTO "dia_shop" VALUES (37,250,'md_event_item_packs_name_14',30,25,1,1,16,3,'use_dia_shop_21');
INSERT INTO "dia_shop" VALUES (38,1200,'md_event_item_packs_name_15',30,26,1,2,16,1,'use_dia_shop_22');
INSERT INTO "dia_shop" VALUES (39,3000,'md_event_item_packs_name_16',30,27,1,3,16,1,'use_dia_shop_23');
INSERT INTO "dia_shop" VALUES (40,1500,'md_event_item_packs_name_3',30,28,1,1,17,1,'use_dia_shop_15');
INSERT INTO "dia_shop_group" VALUES (1,0,1,'ShopScene_Content_Title_2',28);
INSERT INTO "dia_shop_group" VALUES (2,1,2,'ShopScene_Content_Title_3',1);
INSERT INTO "dia_shop_group" VALUES (3,2,0,'ShopScene_Content_Title_4',1);
INSERT INTO "dia_shop_group" VALUES (4,0,1,'ShopScene_Content_Title_2',32);
INSERT INTO "dia_shop_group" VALUES (5,0,1,'ShopScene_Content_Title_2',36);
INSERT INTO "dia_shop_group" VALUES (6,0,1,'ShopScene_Content_Title_2',37);
INSERT INTO "dia_shop_group" VALUES (7,0,1,'ShopScene_Content_Title_2',49);
INSERT INTO "dia_shop_group" VALUES (8,0,1,'ShopScene_Content_Title_2',45);
INSERT INTO "dia_shop_group" VALUES (9,0,1,'ShopScene_Content_Title_2',52);
INSERT INTO "dia_shop_group" VALUES (10,0,1,'ShopScene_Content_Title_2',53);
INSERT INTO "dia_shop_group" VALUES (11,0,1,'ShopScene_Content_Title_2',54);
INSERT INTO "dia_shop_group" VALUES (12,0,1,'ShopScene_Content_Title_2',55);
INSERT INTO "dia_shop_group" VALUES (13,0,1,'ShopScene_Content_Title_2',56);
INSERT INTO "dia_shop_group" VALUES (14,0,1,'ShopScene_Content_Title_2',57);
INSERT INTO "dia_shop_group" VALUES (15,0,1,'ShopScene_Content_Title_2',58);
INSERT INTO "dia_shop_group" VALUES (16,0,1,'ShopScene_Content_Title_2',10002);
INSERT INTO "dia_shop_group" VALUES (17,0,1,'ShopScene_Content_Title_2',10001);
INSERT INTO "event_list" VALUES (1,0,'95649119999',1,0,0,0,0,0);
INSERT INTO "event_list" VALUES (2,1651363200,'1656633599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (3,1640995200,'1643673599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (4,1643673600,'1646092799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (5,1646092800,'1648771199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (6,1648771200,'1651363199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (7,1651363200,'1654041599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (8,1654041600,'1656633599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (9,1656633600,'1659311999',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (10,1659312000,'1661990399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (11,1661990400,'1664582399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (12,1664582400,'1667260799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (13,1667260800,'1669852799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (14,1669852800,'1672531199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (15,1672531200,'1675209599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (16,1675209600,'1677628799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (17,1677628800,'1680307199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (18,1680307200,'1682899199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (19,1682899200,'1685577599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (20,1685577600,'1688169599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (21,1688169600,'1690847999',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (22,1690848000,'1693526399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (23,1693526400,'1696118399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (24,1696118400,'1698796799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (25,1698796800,'1701388799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (26,1701388800,'1704067199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (27,1656547200,'1656719999',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (28,32400,'1692403199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (29,1693368000,'1693454399',2,20230830,0,0,1,0);
INSERT INTO "event_list" VALUES (30,1693454400,'1693540799',2,20230830,1,0,1,0);
INSERT INTO "event_list" VALUES (31,1693540800,'1693627199',2,20230830,0,0,1,0);
INSERT INTO "event_list" VALUES (32,1693281600,'1693713599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (33,1695873600,'1695959999',2,20230928,0,0,1,0);
INSERT INTO "event_list" VALUES (34,1695960000,'1696046399',2,20230928,1,0,1,0);
INSERT INTO "event_list" VALUES (35,1696046400,'1696132799',2,20230928,0,0,1,0);
INSERT INTO "event_list" VALUES (36,1695787200,'1696219199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (37,1694754000,'1695358800',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (38,1695614400,'1695873540',0,0,0,0,1,0);
INSERT INTO "event_list" VALUES (39,1698638400,'1699243199',4,20231030,0,40,1,0);
INSERT INTO "event_list" VALUES (40,1698638400,'1699675199',4,20231030,1,39,1,0);
INSERT INTO "event_list" VALUES (41,1698638400,'1698724799',5,20231030,0,0,1,1);
INSERT INTO "event_list" VALUES (42,1698724800,'1698811199',5,20231030,1,0,1,1);
INSERT INTO "event_list" VALUES (43,1698811200,'1699156799',5,20231030,0,0,1,1);
INSERT INTO "event_list" VALUES (44,1699156800,'1699243199',5,20231030,2,0,1,1);
INSERT INTO "event_list" VALUES (45,1698552000,'1699243199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (46,1698465600,'1698551999',2,20231029,0,0,1,0);
INSERT INTO "event_list" VALUES (47,1698552000,'1698638399',2,20231029,1,0,1,0);
INSERT INTO "event_list" VALUES (48,1698638400,'1698724799',2,20231029,0,0,1,0);
INSERT INTO "event_list" VALUES (49,1698379200,'1698811199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (50,1695614400,'1698638390',0,0,0,0,1,0);
INSERT INTO "event_list" VALUES (51,1699243200,'2550715190',0,0,0,0,1,0);
INSERT INTO "event_list" VALUES (52,1696824000,'1696910399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (53,1696910400,'1696996799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (54,1696996800,'1697083199',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (55,1697083200,'1697169599',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (56,1697169600,'1697255999',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (57,1697256000,'1697342399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (58,1697342400,'1697428799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (59,1700452800,'1700539199',6,20231120,0,0,1,0);
INSERT INTO "event_list" VALUES (60,1700539200,'1700625599',6,20231120,1,0,1,0);
INSERT INTO "event_list" VALUES (61,1700625600,'1700971199',6,20231120,0,0,1,0);
INSERT INTO "event_list" VALUES (62,1700971200,'1701057599',6,20231120,2,0,1,0);
INSERT INTO "event_list" VALUES (63,1700452800,'1701057599',4,20231120,0,64,1,0);
INSERT INTO "event_list" VALUES (64,1700452800,'1701489599',4,20231120,1,63,1,0);
INSERT INTO "event_list" VALUES (66,1700971200,'1701057599',2,20231127,0,0,1,0);
INSERT INTO "event_list" VALUES (67,1701057600,'1701143999',2,20231127,1,0,1,0);
INSERT INTO "event_list" VALUES (68,1701144000,'1701230399',2,20231127,0,0,1,0);
INSERT INTO "event_list" VALUES (10001,1700884800,'1701316799',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (10002,1700366400,'1701143999',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (999,0,'1693454399',0,0,0,0,0,0);
INSERT INTO "event_list" VALUES (90001,1698811200,'1699973999',0,0,0,0,1,0);
INSERT INTO "dia_products" VALUES (1,1,'pokemonsleep.dia001','ShopScene_ShopPopup_PurchaseCell_ItemName_1','ShopScene_ShopPopup_PurchaseCell_ItemName_1','image_name_1',60,0,0,1,120,1);
INSERT INTO "dia_products" VALUES (2,1,'pokemonsleep.dia002','ShopScene_ShopPopup_PurchaseCell_ItemName_2','ShopScene_ShopPopup_PurchaseCell_ItemName_2','image_name_2',240,20,0,2,480,1);
INSERT INTO "dia_products" VALUES (3,1,'pokemonsleep.dia003','ShopScene_ShopPopup_PurchaseCell_ItemName_3','ShopScene_ShopPopup_PurchaseCell_ItemName_3','image_name_3',550,70,0,3,1100,1);
INSERT INTO "dia_products" VALUES (4,1,'pokemonsleep.dia004','ShopScene_ShopPopup_PurchaseCell_ItemName_4','ShopScene_ShopPopup_PurchaseCell_ItemName_4','image_name_4',1200,300,0,4,2400,1);
INSERT INTO "dia_products" VALUES (5,1,'pokemonsleep.dia005','ShopScene_ShopPopup_PurchaseCell_ItemName_5','ShopScene_ShopPopup_PurchaseCell_ItemName_5','image_name_5',2400,700,0,5,4800,1);
INSERT INTO "dia_products" VALUES (6,1,'pokemonsleep.dia006','ShopScene_ShopPopup_PurchaseCell_ItemName_6','ShopScene_ShopPopup_PurchaseCell_ItemName_6','image_name_6',4900,2100,0,6,9800,1);
INSERT INTO "dia_products" VALUES (7,2,'pokemonsleep.dia001','ShopScene_ShopPopup_PurchaseCell_ItemName_1','ShopScene_ShopPopup_PurchaseCell_ItemName_1','image_name_1',60,0,0,1,120,1);
INSERT INTO "dia_products" VALUES (8,2,'pokemonsleep.dia002','ShopScene_ShopPopup_PurchaseCell_ItemName_2','ShopScene_ShopPopup_PurchaseCell_ItemName_2','image_name_2',240,20,0,2,480,1);
INSERT INTO "dia_products" VALUES (9,2,'pokemonsleep.dia003','ShopScene_ShopPopup_PurchaseCell_ItemName_3','ShopScene_ShopPopup_PurchaseCell_ItemName_3','image_name_3',550,70,0,3,1100,1);
INSERT INTO "dia_products" VALUES (10,2,'pokemonsleep.dia004','ShopScene_ShopPopup_PurchaseCell_ItemName_4','ShopScene_ShopPopup_PurchaseCell_ItemName_4','image_name_4',1200,300,0,4,2400,1);
INSERT INTO "dia_products" VALUES (11,2,'pokemonsleep.dia005','ShopScene_ShopPopup_PurchaseCell_ItemName_5','ShopScene_ShopPopup_PurchaseCell_ItemName_5','image_name_5',2400,700,0,5,4800,1);
INSERT INTO "dia_products" VALUES (12,2,'pokemonsleep.dia006','ShopScene_ShopPopup_PurchaseCell_ItemName_6','ShopScene_ShopPopup_PurchaseCell_ItemName_6','image_name_6',4900,2100,0,6,9800,1);
INSERT INTO "premium_pass_products" VALUES (1,1,'pokemonsleep.subscribe_1','md_premium_pass_products_name_1','md_premium_pass_products_desc_1','image_name_1',1,1,1,0,0,1,1);
INSERT INTO "premium_pass_products" VALUES (2,1,'pokemonsleep.subscribe_6','md_premium_pass_products_name_2','md_premium_pass_products_desc_2','image_name_2',6,2,1,0,0,2,1);
INSERT INTO "premium_pass_products" VALUES (3,2,'pokemonsleep.subscribe_1','md_premium_pass_products_name_3','md_premium_pass_products_desc_3','image_name_1',1,1,1,0,0,1,1);
INSERT INTO "premium_pass_products" VALUES (4,2,'pokemonsleep.subscribe_6','md_premium_pass_products_name_4','md_premium_pass_products_desc_4','image_name_2',6,2,1,0,0,2,1);
INSERT INTO "purchase_bonuses" VALUES (1,1,21,1,1,0,0,0,0,0,0,1,1,200,1,1);
INSERT INTO "purchase_bonuses" VALUES (2,2,21,1,1,0,0,0,0,0,0,1,1,1000,1,1);
INSERT INTO "continuation_bonuses" VALUES (1,1,1,19,1,1000,21,1,1,0,0,0,19,1,1000,1,1);
INSERT INTO "continuation_bonuses" VALUES (2,1,3,10,3,1,27,1,1,25,2,1,10,3,1,1,1);
INSERT INTO "achievements" VALUES (1,1,'md_achievements_name_1','md_achievements_short_name_1','md_achievements_desc_1','cleard_message_1',0,0,0);
INSERT INTO "achievements" VALUES (2,2,'md_achievements_name_2','md_achievements_short_name_2','md_achievements_desc_2','cleard_message_2',0,0,0);
INSERT INTO "achievements" VALUES (3,3,'md_achievements_name_3','md_achievements_short_name_3','md_achievements_desc_3','cleard_message_3',0,0,0);
INSERT INTO "achievements" VALUES (4,4,'md_achievements_name_4','md_achievements_short_name_4','md_achievements_desc_4','cleard_message_4',0,0,0);
INSERT INTO "achievements" VALUES (5,5,'md_achievements_name_5','md_achievements_short_name_5','md_achievements_desc_5','cleard_message_5',0,0,0);
INSERT INTO "achievements" VALUES (6,6,'md_achievements_name_6','md_achievements_short_name_6','md_achievements_desc_6','cleard_message_6',0,0,0);
INSERT INTO "achievements" VALUES (7,7,'md_achievements_name_7','md_achievements_short_name_7','md_achievements_desc_7','cleard_message_7',0,0,0);
INSERT INTO "achievements" VALUES (8,8,'md_achievements_name_8','md_achievements_short_name_8','md_achievements_desc_8','cleard_message_8',0,0,0);
INSERT INTO "achievements" VALUES (9,9,'md_achievements_name_9','md_achievements_short_name_9','md_achievements_desc_9','cleard_message_9',0,0,0);
INSERT INTO "achievements" VALUES (10,10,'md_achievements_name_10','md_achievements_short_name_10','md_achievements_desc_10','cleard_message_10',0,0,0);
INSERT INTO "achievements" VALUES (11,11,'md_achievements_name_11','md_achievements_short_name_11','md_achievements_desc_11','cleard_message_11',0,0,0);
INSERT INTO "achievements" VALUES (12,12,'md_achievements_name_12','md_achievements_short_name_12','md_achievements_desc_12','cleard_message_12',0,0,0);
INSERT INTO "achievements" VALUES (13,13,'md_achievements_name_13','md_achievements_short_name_13','md_achievements_desc_13','cleard_message_13',0,0,0);
INSERT INTO "achievements" VALUES (14,14,'md_achievements_name_14','md_achievements_short_name_14','md_achievements_desc_14','cleard_message_14',0,0,0);
INSERT INTO "achievements" VALUES (15,15,'md_achievements_name_15','md_achievements_short_name_15','md_achievements_desc_15','cleard_message_15',1,0,0);
INSERT INTO "achievements" VALUES (16,15,'md_achievements_name_16','md_achievements_short_name_16','md_achievements_desc_16','cleard_message_16',2,0,0);
INSERT INTO "achievements" VALUES (17,15,'md_achievements_name_17','md_achievements_short_name_17','md_achievements_desc_17','cleard_message_17',3,0,0);
INSERT INTO "achievements" VALUES (18,15,'md_achievements_name_18','md_achievements_short_name_18','md_achievements_desc_18','cleard_message_18',4,0,0);
INSERT INTO "achievements" VALUES (19,15,'md_achievements_name_19','md_achievements_short_name_19','md_achievements_desc_19','cleard_message_19',5,0,0);
INSERT INTO "achievements" VALUES (20,15,'md_achievements_name_20','md_achievements_short_name_20','md_achievements_desc_20','cleard_message_20',6,0,0);
INSERT INTO "achievements" VALUES (21,15,'md_achievements_name_21','md_achievements_short_name_21','md_achievements_desc_21','cleard_message_21',7,0,0);
INSERT INTO "achievements" VALUES (22,15,'md_achievements_name_22','md_achievements_short_name_22','md_achievements_desc_22','cleard_message_22',8,0,0);
INSERT INTO "achievements" VALUES (23,15,'md_achievements_name_23','md_achievements_short_name_23','md_achievements_desc_23','cleard_message_23',9,0,0);
INSERT INTO "achievements" VALUES (24,15,'md_achievements_name_24','md_achievements_short_name_24','md_achievements_desc_24','cleard_message_24',10,0,0);
INSERT INTO "achievements" VALUES (25,15,'md_achievements_name_25','md_achievements_short_name_25','md_achievements_desc_25','cleard_message_25',11,0,0);
INSERT INTO "achievements" VALUES (26,15,'md_achievements_name_26','md_achievements_short_name_26','md_achievements_desc_26','cleard_message_26',12,0,0);
INSERT INTO "achievements" VALUES (27,15,'md_achievements_name_27','md_achievements_short_name_27','md_achievements_desc_27','cleard_message_27',13,0,0);
INSERT INTO "achievements" VALUES (28,15,'md_achievements_name_28','md_achievements_short_name_28','md_achievements_desc_28','cleard_message_28',14,0,0);
INSERT INTO "achievements" VALUES (29,15,'md_achievements_name_29','md_achievements_short_name_29','md_achievements_desc_29','cleard_message_29',15,0,0);
INSERT INTO "achievements" VALUES (30,15,'md_achievements_name_30','md_achievements_short_name_30','md_achievements_desc_30','cleard_message_30',16,0,0);
INSERT INTO "achievements" VALUES (31,15,'md_achievements_name_31','md_achievements_short_name_31','md_achievements_desc_31','cleard_message_31',17,0,0);
INSERT INTO "achievements" VALUES (32,15,'md_achievements_name_32','md_achievements_short_name_32','md_achievements_desc_32','cleard_message_32',18,0,0);
INSERT INTO "achievements" VALUES (33,16,'md_achievements_name_33','md_achievements_short_name_33','md_achievements_desc_33','cleard_message_33',1,0,0);
INSERT INTO "achievements" VALUES (34,16,'md_achievements_name_34','md_achievements_short_name_34','md_achievements_desc_34','cleard_message_34',2,0,0);
INSERT INTO "achievements" VALUES (35,16,'md_achievements_name_35','md_achievements_short_name_35','md_achievements_desc_35','cleard_message_35',3,0,0);
INSERT INTO "achievements" VALUES (36,16,'md_achievements_name_36','md_achievements_short_name_36','md_achievements_desc_36','cleard_message_36',4,0,0);
INSERT INTO "achievement_conditions" VALUES (1,'md_achievement_conditions_desc_1',1,1,10,1,1,100,0,0,0);
INSERT INTO "achievement_conditions" VALUES (2,'md_achievement_conditions_desc_2',1,2,50,1,1,400,0,0,0);
INSERT INTO "achievement_conditions" VALUES (3,'md_achievement_conditions_desc_3',1,3,110,1,1,900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (4,'md_achievement_conditions_desc_4',1,4,210,1,1,2200,0,0,0);
INSERT INTO "achievement_conditions" VALUES (5,'md_achievement_conditions_desc_5',1,5,340,1,1,3900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (6,'md_achievement_conditions_desc_6',1,6,490,1,1,6900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (7,'md_achievement_conditions_desc_7',1,7,680,1,1,12000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (8,'md_achievement_conditions_desc_8',1,8,900,1,1,21000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (9,'md_achievement_conditions_desc_9',1,9,1200,1,1,37000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (10,'md_achievement_conditions_desc_10',1,10,1500,1,1,63000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (11,'md_achievement_conditions_desc_11',2,1,160,1,1,100,0,0,0);
INSERT INTO "achievement_conditions" VALUES (12,'md_achievement_conditions_desc_12',2,2,800,1,1,400,0,0,0);
INSERT INTO "achievement_conditions" VALUES (13,'md_achievement_conditions_desc_13',2,3,1400,1,1,900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (14,'md_achievement_conditions_desc_14',2,4,2300,1,1,2200,0,0,0);
INSERT INTO "achievement_conditions" VALUES (15,'md_achievement_conditions_desc_15',2,5,3300,1,1,3900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (16,'md_achievement_conditions_desc_16',2,6,4500,1,1,6900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (17,'md_achievement_conditions_desc_17',2,7,5800,1,1,12000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (18,'md_achievement_conditions_desc_18',2,8,7200,1,1,21000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (19,'md_achievement_conditions_desc_19',2,9,8700,1,1,37000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (20,'md_achievement_conditions_desc_20',2,10,10300,1,1,63000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (21,'md_achievement_conditions_desc_21',3,1,20,1,1,100,0,0,0);
INSERT INTO "achievement_conditions" VALUES (22,'md_achievement_conditions_desc_22',3,2,100,1,1,400,0,0,0);
INSERT INTO "achievement_conditions" VALUES (23,'md_achievement_conditions_desc_23',3,3,220,1,1,900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (24,'md_achievement_conditions_desc_24',3,4,410,1,1,2200,0,0,0);
INSERT INTO "achievement_conditions" VALUES (25,'md_achievement_conditions_desc_25',3,5,630,1,1,3900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (26,'md_achievement_conditions_desc_26',3,6,900,1,1,6900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (27,'md_achievement_conditions_desc_27',3,7,1200,1,1,12000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (28,'md_achievement_conditions_desc_28',3,8,1600,1,1,21000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (29,'md_achievement_conditions_desc_29',3,9,2100,1,1,37000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (30,'md_achievement_conditions_desc_30',3,10,2600,1,1,63000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (31,'md_achievement_conditions_desc_31',4,1,30,5,3,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (32,'md_achievement_conditions_desc_32',4,2,290,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (33,'md_achievement_conditions_desc_33',4,3,660,5,3,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (34,'md_achievement_conditions_desc_34',4,4,1280,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (35,'md_achievement_conditions_desc_35',4,5,2030,5,3,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (36,'md_achievement_conditions_desc_36',4,6,2960,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (37,'md_achievement_conditions_desc_37',4,7,4100,5,3,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (38,'md_achievement_conditions_desc_38',4,8,5500,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (39,'md_achievement_conditions_desc_39',4,9,7000,5,3,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (40,'md_achievement_conditions_desc_40',4,10,9000,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (41,'md_achievement_conditions_desc_41',5,1,160,17,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (42,'md_achievement_conditions_desc_42',5,2,1030,17,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (43,'md_achievement_conditions_desc_43',5,3,2310,17,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (44,'md_achievement_conditions_desc_44',5,4,4600,17,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (45,'md_achievement_conditions_desc_45',5,5,7500,17,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (46,'md_achievement_conditions_desc_46',5,6,11000,17,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (47,'md_achievement_conditions_desc_47',5,7,15000,17,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (48,'md_achievement_conditions_desc_48',5,8,21000,17,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (49,'md_achievement_conditions_desc_49',5,9,27000,17,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (50,'md_achievement_conditions_desc_50',5,10,34000,17,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (51,'md_achievement_conditions_desc_51',6,1,3,1,1,100,0,0,0);
INSERT INTO "achievement_conditions" VALUES (52,'md_achievement_conditions_desc_52',6,2,21,1,1,400,0,0,0);
INSERT INTO "achievement_conditions" VALUES (53,'md_achievement_conditions_desc_53',6,3,46,1,1,900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (54,'md_achievement_conditions_desc_54',6,4,90,1,1,2200,0,0,0);
INSERT INTO "achievement_conditions" VALUES (55,'md_achievement_conditions_desc_55',6,5,150,1,1,3900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (56,'md_achievement_conditions_desc_56',6,6,220,1,1,6900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (57,'md_achievement_conditions_desc_57',6,7,300,1,1,12000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (58,'md_achievement_conditions_desc_58',6,8,420,1,1,21000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (59,'md_achievement_conditions_desc_59',6,9,540,1,1,37000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (60,'md_achievement_conditions_desc_60',6,10,680,1,1,63000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (61,'md_achievement_conditions_desc_61',7,1,6,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (62,'md_achievement_conditions_desc_62',7,2,30,23,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (63,'md_achievement_conditions_desc_63',7,3,70,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (64,'md_achievement_conditions_desc_64',7,4,140,28,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (65,'md_achievement_conditions_desc_65',7,5,210,23,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (66,'md_achievement_conditions_desc_66',7,6,300,25,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (67,'md_achievement_conditions_desc_67',7,7,410,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (68,'md_achievement_conditions_desc_68',7,8,540,25,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (69,'md_achievement_conditions_desc_69',7,9,690,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (70,'md_achievement_conditions_desc_70',7,10,850,26,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (71,'md_achievement_conditions_desc_71',8,1,5,1,1,100,0,0,0);
INSERT INTO "achievement_conditions" VALUES (72,'md_achievement_conditions_desc_72',8,2,29,1,1,400,0,0,0);
INSERT INTO "achievement_conditions" VALUES (73,'md_achievement_conditions_desc_73',8,3,60,1,1,900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (74,'md_achievement_conditions_desc_74',8,4,120,1,1,2200,0,0,0);
INSERT INTO "achievement_conditions" VALUES (75,'md_achievement_conditions_desc_75',8,5,180,1,1,3900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (76,'md_achievement_conditions_desc_76',8,6,260,1,1,6900,0,0,0);
INSERT INTO "achievement_conditions" VALUES (77,'md_achievement_conditions_desc_77',8,7,350,1,1,12000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (78,'md_achievement_conditions_desc_78',8,8,460,1,1,21000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (79,'md_achievement_conditions_desc_79',8,9,580,1,1,37000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (80,'md_achievement_conditions_desc_80',8,10,720,1,1,63000,0,0,0);
INSERT INTO "achievement_conditions" VALUES (81,'md_achievement_conditions_desc_81',9,1,200000,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (82,'md_achievement_conditions_desc_82',9,2,900000,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (83,'md_achievement_conditions_desc_83',9,3,1900000,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (84,'md_achievement_conditions_desc_84',9,4,3700000,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (85,'md_achievement_conditions_desc_85',9,5,5700000,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (86,'md_achievement_conditions_desc_86',9,6,8100000,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (87,'md_achievement_conditions_desc_87',9,7,11100000,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (88,'md_achievement_conditions_desc_88',9,8,14600000,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (89,'md_achievement_conditions_desc_89',9,9,18500000,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (90,'md_achievement_conditions_desc_90',9,10,23000000,2,1,25,0,0,0);
INSERT INTO "achievement_conditions" VALUES (91,'md_achievement_conditions_desc_91',10,1,6,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (92,'md_achievement_conditions_desc_92',10,2,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (93,'md_achievement_conditions_desc_93',10,3,60,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (94,'md_achievement_conditions_desc_94',10,4,120,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (95,'md_achievement_conditions_desc_95',10,5,180,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (96,'md_achievement_conditions_desc_96',10,6,260,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (97,'md_achievement_conditions_desc_97',10,7,350,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (98,'md_achievement_conditions_desc_98',10,8,460,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (99,'md_achievement_conditions_desc_99',10,9,580,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (100,'md_achievement_conditions_desc_100',10,10,720,2,1,25,0,0,0);
INSERT INTO "achievement_conditions" VALUES (101,'md_achievement_conditions_desc_101',11,1,6,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (102,'md_achievement_conditions_desc_102',11,2,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (103,'md_achievement_conditions_desc_103',11,3,50,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (104,'md_achievement_conditions_desc_104',11,4,100,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (105,'md_achievement_conditions_desc_105',11,5,160,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (106,'md_achievement_conditions_desc_106',11,6,230,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (107,'md_achievement_conditions_desc_107',11,7,310,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (108,'md_achievement_conditions_desc_108',11,8,400,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (109,'md_achievement_conditions_desc_109',11,9,510,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (110,'md_achievement_conditions_desc_110',11,10,640,2,1,25,0,0,0);
INSERT INTO "achievement_conditions" VALUES (111,'md_achievement_conditions_desc_111',12,1,6,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (112,'md_achievement_conditions_desc_112',12,2,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (113,'md_achievement_conditions_desc_113',12,3,50,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (114,'md_achievement_conditions_desc_114',12,4,100,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (115,'md_achievement_conditions_desc_115',12,5,160,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (116,'md_achievement_conditions_desc_116',12,6,230,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (117,'md_achievement_conditions_desc_117',12,7,310,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (118,'md_achievement_conditions_desc_118',12,8,400,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (119,'md_achievement_conditions_desc_119',12,9,510,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (120,'md_achievement_conditions_desc_120',12,10,640,2,1,25,0,0,0);
INSERT INTO "achievement_conditions" VALUES (121,'md_achievement_conditions_desc_121',13,1,10,28,6,1,5,0,0);
INSERT INTO "achievement_conditions" VALUES (122,'md_achievement_conditions_desc_122',13,2,10,26,1,1,10,0,0);
INSERT INTO "achievement_conditions" VALUES (123,'md_achievement_conditions_desc_123',13,3,10,28,1,1,15,0,0);
INSERT INTO "achievement_conditions" VALUES (124,'md_achievement_conditions_desc_124',13,4,10,10,2,1,20,0,0);
INSERT INTO "achievement_conditions" VALUES (125,'md_achievement_conditions_desc_125',13,5,10,28,2,1,25,0,0);
INSERT INTO "achievement_conditions" VALUES (126,'md_achievement_conditions_desc_126',13,6,10,26,1,1,30,0,0);
INSERT INTO "achievement_conditions" VALUES (127,'md_achievement_conditions_desc_127',13,7,10,28,3,1,35,0,0);
INSERT INTO "achievement_conditions" VALUES (128,'md_achievement_conditions_desc_128',13,8,10,10,2,1,40,0,0);
INSERT INTO "achievement_conditions" VALUES (129,'md_achievement_conditions_desc_129',13,9,10,28,4,1,45,0,0);
INSERT INTO "achievement_conditions" VALUES (130,'md_achievement_conditions_desc_130',13,10,10,26,1,1,50,0,0);
INSERT INTO "achievement_conditions" VALUES (131,'md_achievement_conditions_desc_131',14,1,1900,28,5,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (132,'md_achievement_conditions_desc_132',14,2,3200,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (133,'md_achievement_conditions_desc_133',14,3,4700,28,7,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (134,'md_achievement_conditions_desc_134',14,4,7500,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (135,'md_achievement_conditions_desc_135',14,5,11400,28,8,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (136,'md_achievement_conditions_desc_136',14,6,17000,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (137,'md_achievement_conditions_desc_137',14,7,25000,28,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (138,'md_achievement_conditions_desc_138',14,8,34000,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (139,'md_achievement_conditions_desc_139',14,9,46000,28,11,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (140,'md_achievement_conditions_desc_140',14,10,63000,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (141,'md_achievement_conditions_desc_141',15,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (142,'md_achievement_conditions_desc_142',15,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (143,'md_achievement_conditions_desc_143',15,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (144,'md_achievement_conditions_desc_144',15,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (145,'md_achievement_conditions_desc_145',15,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (146,'md_achievement_conditions_desc_146',15,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (147,'md_achievement_conditions_desc_147',15,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (148,'md_achievement_conditions_desc_148',15,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (149,'md_achievement_conditions_desc_149',15,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (150,'md_achievement_conditions_desc_150',15,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (151,'md_achievement_conditions_desc_151',16,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (152,'md_achievement_conditions_desc_152',16,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (153,'md_achievement_conditions_desc_153',16,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (154,'md_achievement_conditions_desc_154',16,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (155,'md_achievement_conditions_desc_155',16,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (156,'md_achievement_conditions_desc_156',16,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (157,'md_achievement_conditions_desc_157',16,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (158,'md_achievement_conditions_desc_158',16,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (159,'md_achievement_conditions_desc_159',16,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (160,'md_achievement_conditions_desc_160',16,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (161,'md_achievement_conditions_desc_161',17,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (162,'md_achievement_conditions_desc_162',17,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (163,'md_achievement_conditions_desc_163',17,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (164,'md_achievement_conditions_desc_164',17,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (165,'md_achievement_conditions_desc_165',17,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (166,'md_achievement_conditions_desc_166',17,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (167,'md_achievement_conditions_desc_167',17,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (168,'md_achievement_conditions_desc_168',17,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (169,'md_achievement_conditions_desc_169',17,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (170,'md_achievement_conditions_desc_170',17,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (171,'md_achievement_conditions_desc_171',18,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (172,'md_achievement_conditions_desc_172',18,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (173,'md_achievement_conditions_desc_173',18,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (174,'md_achievement_conditions_desc_174',18,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (175,'md_achievement_conditions_desc_175',18,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (176,'md_achievement_conditions_desc_176',18,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (177,'md_achievement_conditions_desc_177',18,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (178,'md_achievement_conditions_desc_178',18,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (179,'md_achievement_conditions_desc_179',18,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (180,'md_achievement_conditions_desc_180',18,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (181,'md_achievement_conditions_desc_181',19,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (182,'md_achievement_conditions_desc_182',19,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (183,'md_achievement_conditions_desc_183',19,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (184,'md_achievement_conditions_desc_184',19,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (185,'md_achievement_conditions_desc_185',19,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (186,'md_achievement_conditions_desc_186',19,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (187,'md_achievement_conditions_desc_187',19,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (188,'md_achievement_conditions_desc_188',19,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (189,'md_achievement_conditions_desc_189',19,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (190,'md_achievement_conditions_desc_190',19,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (191,'md_achievement_conditions_desc_191',20,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (192,'md_achievement_conditions_desc_192',20,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (193,'md_achievement_conditions_desc_193',20,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (194,'md_achievement_conditions_desc_194',20,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (195,'md_achievement_conditions_desc_195',20,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (196,'md_achievement_conditions_desc_196',20,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (197,'md_achievement_conditions_desc_197',20,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (198,'md_achievement_conditions_desc_198',20,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (199,'md_achievement_conditions_desc_199',20,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (200,'md_achievement_conditions_desc_200',20,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (201,'md_achievement_conditions_desc_201',21,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (202,'md_achievement_conditions_desc_202',21,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (203,'md_achievement_conditions_desc_203',21,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (204,'md_achievement_conditions_desc_204',21,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (205,'md_achievement_conditions_desc_205',21,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (206,'md_achievement_conditions_desc_206',21,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (207,'md_achievement_conditions_desc_207',21,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (208,'md_achievement_conditions_desc_208',21,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (209,'md_achievement_conditions_desc_209',21,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (210,'md_achievement_conditions_desc_210',21,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (211,'md_achievement_conditions_desc_211',22,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (212,'md_achievement_conditions_desc_212',22,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (213,'md_achievement_conditions_desc_213',22,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (214,'md_achievement_conditions_desc_214',22,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (215,'md_achievement_conditions_desc_215',22,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (216,'md_achievement_conditions_desc_216',22,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (217,'md_achievement_conditions_desc_217',22,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (218,'md_achievement_conditions_desc_218',22,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (219,'md_achievement_conditions_desc_219',22,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (220,'md_achievement_conditions_desc_220',22,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (221,'md_achievement_conditions_desc_221',23,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (222,'md_achievement_conditions_desc_222',23,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (223,'md_achievement_conditions_desc_223',23,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (224,'md_achievement_conditions_desc_224',23,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (225,'md_achievement_conditions_desc_225',23,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (226,'md_achievement_conditions_desc_226',23,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (227,'md_achievement_conditions_desc_227',23,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (228,'md_achievement_conditions_desc_228',23,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (229,'md_achievement_conditions_desc_229',23,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (230,'md_achievement_conditions_desc_230',23,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (231,'md_achievement_conditions_desc_231',24,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (232,'md_achievement_conditions_desc_232',24,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (233,'md_achievement_conditions_desc_233',24,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (234,'md_achievement_conditions_desc_234',24,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (235,'md_achievement_conditions_desc_235',24,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (236,'md_achievement_conditions_desc_236',24,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (237,'md_achievement_conditions_desc_237',24,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (238,'md_achievement_conditions_desc_238',24,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (239,'md_achievement_conditions_desc_239',24,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (240,'md_achievement_conditions_desc_240',24,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (241,'md_achievement_conditions_desc_241',25,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (242,'md_achievement_conditions_desc_242',25,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (243,'md_achievement_conditions_desc_243',25,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (244,'md_achievement_conditions_desc_244',25,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (245,'md_achievement_conditions_desc_245',25,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (246,'md_achievement_conditions_desc_246',25,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (247,'md_achievement_conditions_desc_247',25,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (248,'md_achievement_conditions_desc_248',25,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (249,'md_achievement_conditions_desc_249',25,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (250,'md_achievement_conditions_desc_250',25,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (251,'md_achievement_conditions_desc_251',26,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (252,'md_achievement_conditions_desc_252',26,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (253,'md_achievement_conditions_desc_253',26,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (254,'md_achievement_conditions_desc_254',26,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (255,'md_achievement_conditions_desc_255',26,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (256,'md_achievement_conditions_desc_256',26,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (257,'md_achievement_conditions_desc_257',26,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (258,'md_achievement_conditions_desc_258',26,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (259,'md_achievement_conditions_desc_259',26,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (260,'md_achievement_conditions_desc_260',26,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (261,'md_achievement_conditions_desc_261',27,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (262,'md_achievement_conditions_desc_262',27,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (263,'md_achievement_conditions_desc_263',27,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (264,'md_achievement_conditions_desc_264',27,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (265,'md_achievement_conditions_desc_265',27,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (266,'md_achievement_conditions_desc_266',27,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (267,'md_achievement_conditions_desc_267',27,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (268,'md_achievement_conditions_desc_268',27,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (269,'md_achievement_conditions_desc_269',27,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (270,'md_achievement_conditions_desc_270',27,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (271,'md_achievement_conditions_desc_271',28,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (272,'md_achievement_conditions_desc_272',28,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (273,'md_achievement_conditions_desc_273',28,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (274,'md_achievement_conditions_desc_274',28,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (275,'md_achievement_conditions_desc_275',28,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (276,'md_achievement_conditions_desc_276',28,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (277,'md_achievement_conditions_desc_277',28,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (278,'md_achievement_conditions_desc_278',28,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (279,'md_achievement_conditions_desc_279',28,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (280,'md_achievement_conditions_desc_280',28,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (281,'md_achievement_conditions_desc_281',29,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (282,'md_achievement_conditions_desc_282',29,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (283,'md_achievement_conditions_desc_283',29,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (284,'md_achievement_conditions_desc_284',29,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (285,'md_achievement_conditions_desc_285',29,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (286,'md_achievement_conditions_desc_286',29,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (287,'md_achievement_conditions_desc_287',29,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (288,'md_achievement_conditions_desc_288',29,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (289,'md_achievement_conditions_desc_289',29,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (290,'md_achievement_conditions_desc_290',29,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (291,'md_achievement_conditions_desc_291',30,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (292,'md_achievement_conditions_desc_292',30,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (293,'md_achievement_conditions_desc_293',30,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (294,'md_achievement_conditions_desc_294',30,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (295,'md_achievement_conditions_desc_295',30,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (296,'md_achievement_conditions_desc_296',30,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (297,'md_achievement_conditions_desc_297',30,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (298,'md_achievement_conditions_desc_298',30,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (299,'md_achievement_conditions_desc_299',30,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (300,'md_achievement_conditions_desc_300',30,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (301,'md_achievement_conditions_desc_301',31,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (302,'md_achievement_conditions_desc_302',31,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (303,'md_achievement_conditions_desc_303',31,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (304,'md_achievement_conditions_desc_304',31,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (305,'md_achievement_conditions_desc_305',31,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (306,'md_achievement_conditions_desc_306',31,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (307,'md_achievement_conditions_desc_307',31,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (308,'md_achievement_conditions_desc_308',31,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (309,'md_achievement_conditions_desc_309',31,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (310,'md_achievement_conditions_desc_310',31,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (311,'md_achievement_conditions_desc_311',32,1,5,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (312,'md_achievement_conditions_desc_312',32,2,15,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (313,'md_achievement_conditions_desc_313',32,3,30,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (314,'md_achievement_conditions_desc_314',32,4,50,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (315,'md_achievement_conditions_desc_315',32,5,70,2,1,15,0,0,0);
INSERT INTO "achievement_conditions" VALUES (316,'md_achievement_conditions_desc_316',32,6,100,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (317,'md_achievement_conditions_desc_317',32,7,140,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (318,'md_achievement_conditions_desc_318',32,8,180,22,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (319,'md_achievement_conditions_desc_319',32,9,240,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (320,'md_achievement_conditions_desc_320',32,10,300,10,2,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (321,'md_achievement_conditions_desc_321',33,1,3,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (322,'md_achievement_conditions_desc_322',33,2,6,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (323,'md_achievement_conditions_desc_323',33,3,9,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (324,'md_achievement_conditions_desc_324',33,4,11,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (325,'md_achievement_conditions_desc_325',33,5,14,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (326,'md_achievement_conditions_desc_326',33,6,16,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (327,'md_achievement_conditions_desc_327',33,7,20,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (328,'md_achievement_conditions_desc_328',33,8,25,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (329,'md_achievement_conditions_desc_329',33,9,30,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (330,'md_achievement_conditions_desc_330',33,10,35,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (331,'md_achievement_conditions_desc_331',34,1,3,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (332,'md_achievement_conditions_desc_332',34,2,6,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (333,'md_achievement_conditions_desc_333',34,3,9,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (334,'md_achievement_conditions_desc_334',34,4,11,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (335,'md_achievement_conditions_desc_335',34,5,14,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (336,'md_achievement_conditions_desc_336',34,6,16,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (337,'md_achievement_conditions_desc_337',34,7,20,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (338,'md_achievement_conditions_desc_338',34,8,25,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (339,'md_achievement_conditions_desc_339',34,9,30,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (340,'md_achievement_conditions_desc_340',34,10,35,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (341,'md_achievement_conditions_desc_341',35,1,3,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (342,'md_achievement_conditions_desc_342',35,2,6,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (343,'md_achievement_conditions_desc_343',35,3,9,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (344,'md_achievement_conditions_desc_344',35,4,11,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (345,'md_achievement_conditions_desc_345',35,5,14,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (346,'md_achievement_conditions_desc_346',35,6,16,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (347,'md_achievement_conditions_desc_347',35,7,20,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (348,'md_achievement_conditions_desc_348',35,8,25,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (349,'md_achievement_conditions_desc_349',35,9,30,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (350,'md_achievement_conditions_desc_350',35,10,35,27,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (351,'md_achievement_conditions_desc_351',36,1,3,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (352,'md_achievement_conditions_desc_352',36,2,6,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (353,'md_achievement_conditions_desc_353',36,3,9,25,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (354,'md_achievement_conditions_desc_354',36,4,11,10,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (355,'md_achievement_conditions_desc_355',36,5,14,9,1,1,0,0,0);
INSERT INTO "achievement_conditions" VALUES (356,'md_achievement_conditions_desc_356',36,6,16,2,1,10,0,0,0);
INSERT INTO "achievement_conditions" VALUES (357,'md_achievement_conditions_desc_357',36,7,20,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (358,'md_achievement_conditions_desc_358',36,8,25,2,1,20,0,0,0);
INSERT INTO "achievement_conditions" VALUES (359,'md_achievement_conditions_desc_359',36,9,30,10,1,2,0,0,0);
INSERT INTO "achievement_conditions" VALUES (360,'md_achievement_conditions_desc_360',36,10,35,27,1,1,0,0,0);
INSERT INTO "country_codes" VALUES (1,1,1,100,1);
INSERT INTO "country_codes" VALUES (2,1,1,101,2);
INSERT INTO "country_codes" VALUES (3,1,1,102,4);
INSERT INTO "country_codes" VALUES (4,1,1,103,3);
INSERT INTO "country_codes" VALUES (5,1,1,104,5);
INSERT INTO "country_codes" VALUES (7,2,2,200,1);
INSERT INTO "country_codes" VALUES (8,2,2,201,11);
INSERT INTO "country_codes" VALUES (9,2,2,202,4);
INSERT INTO "country_codes" VALUES (10,2,2,203,8);
INSERT INTO "country_codes" VALUES (11,2,2,204,2);
INSERT INTO "country_codes" VALUES (12,2,2,205,7);
INSERT INTO "country_codes" VALUES (13,2,2,206,6);
INSERT INTO "country_codes" VALUES (14,2,2,207,5);
INSERT INTO "country_codes" VALUES (15,2,2,208,9);
INSERT INTO "country_codes" VALUES (16,2,2,209,3);
INSERT INTO "country_codes" VALUES (17,2,2,210,12);
INSERT INTO "country_codes" VALUES (18,2,2,211,10);
INSERT INTO "country_codes" VALUES (20,3,3,300,1);
INSERT INTO "country_codes" VALUES (21,3,3,301,5);
INSERT INTO "country_codes" VALUES (22,3,3,302,6);
INSERT INTO "country_codes" VALUES (23,3,3,303,2);
INSERT INTO "country_codes" VALUES (24,3,3,304,14);
INSERT INTO "country_codes" VALUES (25,3,3,305,17);
INSERT INTO "country_codes" VALUES (26,3,3,306,11);
INSERT INTO "country_codes" VALUES (27,3,3,307,12);
INSERT INTO "country_codes" VALUES (28,3,3,308,13);
INSERT INTO "country_codes" VALUES (29,3,3,309,3);
INSERT INTO "country_codes" VALUES (30,3,3,310,10);
INSERT INTO "country_codes" VALUES (31,3,3,311,15);
INSERT INTO "country_codes" VALUES (32,3,3,312,9);
INSERT INTO "country_codes" VALUES (33,3,3,313,4);
INSERT INTO "country_codes" VALUES (34,3,3,314,16);
INSERT INTO "country_codes" VALUES (35,3,3,315,7);
INSERT INTO "country_codes" VALUES (37,4,4,400,1);
INSERT INTO "country_codes" VALUES (38,4,4,401,16);
INSERT INTO "country_codes" VALUES (39,4,4,402,17);
INSERT INTO "country_codes" VALUES (40,4,4,403,36);
INSERT INTO "country_codes" VALUES (41,4,4,404,18);
INSERT INTO "country_codes" VALUES (42,4,4,405,35);
INSERT INTO "country_codes" VALUES (43,4,4,406,10);
INSERT INTO "country_codes" VALUES (44,4,4,407,2);
INSERT INTO "country_codes" VALUES (45,4,4,408,23);
INSERT INTO "country_codes" VALUES (46,3,3,409,8);
INSERT INTO "country_codes" VALUES (47,4,4,410,14);
INSERT INTO "country_codes" VALUES (48,4,4,411,6);
INSERT INTO "country_codes" VALUES (49,4,4,412,34);
INSERT INTO "country_codes" VALUES (50,4,4,413,33);
INSERT INTO "country_codes" VALUES (51,4,4,414,32);
INSERT INTO "country_codes" VALUES (52,4,4,415,30);
INSERT INTO "country_codes" VALUES (53,4,4,416,31);
INSERT INTO "country_codes" VALUES (54,4,4,417,29);
INSERT INTO "country_codes" VALUES (55,4,4,418,8);
INSERT INTO "country_codes" VALUES (56,4,4,419,9);
INSERT INTO "country_codes" VALUES (57,4,4,420,13);
INSERT INTO "country_codes" VALUES (58,3,3,421,18);
INSERT INTO "country_codes" VALUES (59,4,4,422,24);
INSERT INTO "country_codes" VALUES (60,4,4,423,15);
INSERT INTO "country_codes" VALUES (61,4,4,424,11);
INSERT INTO "country_codes" VALUES (62,4,4,425,12);
INSERT INTO "country_codes" VALUES (63,4,4,426,5);
INSERT INTO "country_codes" VALUES (64,4,4,427,3);
INSERT INTO "country_codes" VALUES (65,4,4,428,4);
INSERT INTO "country_codes" VALUES (66,4,4,429,25);
INSERT INTO "country_codes" VALUES (67,4,4,430,26);
INSERT INTO "country_codes" VALUES (68,4,4,431,22);
INSERT INTO "country_codes" VALUES (69,4,4,432,19);
INSERT INTO "country_codes" VALUES (70,4,4,433,20);
INSERT INTO "country_codes" VALUES (71,4,4,434,27);
INSERT INTO "country_codes" VALUES (72,4,4,435,21);
INSERT INTO "country_codes" VALUES (73,4,4,436,28);
INSERT INTO "country_codes" VALUES (75,5,5,500,1);
INSERT INTO "country_codes" VALUES (76,5,5,501,8);
INSERT INTO "country_codes" VALUES (77,5,5,502,2);
INSERT INTO "country_codes" VALUES (78,5,5,503,4);
INSERT INTO "country_codes" VALUES (79,5,5,504,5);
INSERT INTO "country_codes" VALUES (80,4,4,505,7);
INSERT INTO "country_codes" VALUES (81,5,5,506,3);
INSERT INTO "country_codes" VALUES (82,5,5,507,6);
INSERT INTO "country_codes" VALUES (83,5,5,508,7);
INSERT INTO "friendship_rewards" VALUES (1,10,1,1);
INSERT INTO "friendship_rewards" VALUES (2,17,1,1);
INSERT INTO "friendship_rewards" VALUES (3,28,1,1);
INSERT INTO "friendship_rewards" VALUES (4,17,1,2);
INSERT INTO "friendship_rewards" VALUES (5,10,1,2);
INSERT INTO "profile_icons" VALUES (1,'c_1',0,1);
INSERT INTO "profile_icons" VALUES (2,'p_25',1,2500);
INSERT INTO "profile_icons" VALUES (3,'p_133',2,13300);
INSERT INTO "profile_icons" VALUES (4,'p_19',3,1900);
INSERT INTO "profile_icons" VALUES (5,'p_52',4,5200);
INSERT INTO "profile_icons" VALUES (6,'p_172',5,17200);
INSERT INTO "profile_icons" VALUES (7,'p_1',6,100);
INSERT INTO "profile_icons" VALUES (8,'p_2',7,200);
INSERT INTO "profile_icons" VALUES (9,'p_10',8,1000);
INSERT INTO "profile_icons" VALUES (10,'p_11',9,1100);
INSERT INTO "profile_icons" VALUES (11,'p_12',10,1200);
INSERT INTO "profile_icons" VALUES (12,'p_39',11,3900);
INSERT INTO "profile_icons" VALUES (13,'p_7',12,700);
INSERT INTO "profile_icons" VALUES (14,'p_8',13,800);
INSERT INTO "profile_icons" VALUES (15,'p_4',14,400);
INSERT INTO "profile_icons" VALUES (16,'p_5',15,500);
INSERT INTO "profile_icons" VALUES (17,'p_79',16,7900);
INSERT INTO "profile_icons" VALUES (18,'p_158',17,15800);
INSERT INTO "profile_icons" VALUES (19,'p_159',18,15900);
INSERT INTO "profile_icons" VALUES (20,'p_50',19,5000);
INSERT INTO "profile_icons" VALUES (21,'p_51',20,5100);
INSERT INTO "profile_icons" VALUES (22,'p_40',21,4000);
INSERT INTO "profile_icons" VALUES (23,'p_3',22,300);
INSERT INTO "profile_icons" VALUES (24,'p_175',23,17500);
INSERT INTO "profile_icons" VALUES (25,'p_74',24,7400);
INSERT INTO "profile_icons" VALUES (26,'p_75',25,7500);
INSERT INTO "profile_icons" VALUES (27,'p_23',26,2300);
INSERT INTO "profile_icons" VALUES (28,'p_24',27,2400);
INSERT INTO "profile_icons" VALUES (29,'p_104',28,10400);
INSERT INTO "profile_icons" VALUES (30,'p_155',29,15500);
INSERT INTO "profile_icons" VALUES (31,'p_156',30,15600);
INSERT INTO "profile_icons" VALUES (32,'p_9',31,900);
INSERT INTO "profile_icons" VALUES (33,'p_58',32,5800);
INSERT INTO "profile_icons" VALUES (34,'p_6',33,600);
INSERT INTO "profile_icons" VALUES (35,'p_20',34,2000);
INSERT INTO "profile_icons" VALUES (36,'p_56',35,5600);
INSERT INTO "profile_icons" VALUES (37,'p_69',36,6900);
INSERT INTO "profile_icons" VALUES (38,'p_70',37,7000);
INSERT INTO "profile_icons" VALUES (39,'p_174',38,17400);
INSERT INTO "profile_icons" VALUES (40,'p_179',39,17900);
INSERT INTO "profile_icons" VALUES (41,'p_185',40,18500);
INSERT INTO "profile_icons" VALUES (42,'p_54',41,5400);
INSERT INTO "profile_icons" VALUES (43,'p_80',42,8000);
INSERT INTO "profile_icons" VALUES (44,'p_84',43,8400);
INSERT INTO "profile_icons" VALUES (45,'p_92',44,9200);
INSERT INTO "profile_icons" VALUES (46,'p_93',45,9300);
INSERT INTO "profile_icons" VALUES (47,'p_105',46,10500);
INSERT INTO "profile_icons" VALUES (48,'p_152',47,15200);
INSERT INTO "profile_icons" VALUES (49,'p_153',48,15300);
INSERT INTO "profile_icons" VALUES (50,'p_180',49,18000);
INSERT INTO "profile_icons" VALUES (51,'p_202',50,20200);
INSERT INTO "profile_icons" VALUES (52,'p_316',51,31600);
INSERT INTO "profile_icons" VALUES (53,'p_317',52,31700);
INSERT INTO "profile_icons" VALUES (54,'p_333',53,33300);
INSERT INTO "profile_icons" VALUES (55,'p_360',54,36000);
INSERT INTO "profile_icons" VALUES (56,'p_438',55,43800);
INSERT INTO "profile_icons" VALUES (57,'p_453',56,45300);
INSERT INTO "profile_icons" VALUES (58,'p_454',57,45400);
INSERT INTO "profile_icons" VALUES (59,'p_26',58,2600);
INSERT INTO "profile_icons" VALUES (60,'p_53',59,5300);
INSERT INTO "profile_icons" VALUES (61,'p_55',60,5500);
INSERT INTO "profile_icons" VALUES (62,'p_57',61,5700);
INSERT INTO "profile_icons" VALUES (63,'p_59',62,5900);
INSERT INTO "profile_icons" VALUES (64,'p_71',63,7100);
INSERT INTO "profile_icons" VALUES (65,'p_76',64,7600);
INSERT INTO "profile_icons" VALUES (66,'p_81',65,8100);
INSERT INTO "profile_icons" VALUES (67,'p_82',66,8200);
INSERT INTO "profile_icons" VALUES (68,'p_85',67,8500);
INSERT INTO "profile_icons" VALUES (69,'p_94',68,9400);
INSERT INTO "profile_icons" VALUES (70,'p_115',69,11500);
INSERT INTO "profile_icons" VALUES (71,'p_127',70,12700);
INSERT INTO "profile_icons" VALUES (72,'p_132',71,13200);
INSERT INTO "profile_icons" VALUES (73,'p_134',72,13400);
INSERT INTO "profile_icons" VALUES (74,'p_135',73,13500);
INSERT INTO "profile_icons" VALUES (75,'p_136',74,13600);
INSERT INTO "profile_icons" VALUES (79,'p_154',78,15400);
INSERT INTO "profile_icons" VALUES (80,'p_157',79,15700);
INSERT INTO "profile_icons" VALUES (81,'p_160',80,16000);
INSERT INTO "profile_icons" VALUES (82,'p_176',81,17600);
INSERT INTO "profile_icons" VALUES (83,'p_181',82,18100);
INSERT INTO "profile_icons" VALUES (84,'p_196',83,19600);
INSERT INTO "profile_icons" VALUES (85,'p_197',84,19700);
INSERT INTO "profile_icons" VALUES (86,'p_199',85,19900);
INSERT INTO "profile_icons" VALUES (87,'p_214',86,21400);
INSERT INTO "profile_icons" VALUES (88,'p_246',87,24600);
INSERT INTO "profile_icons" VALUES (89,'p_247',88,24700);
INSERT INTO "profile_icons" VALUES (90,'p_248',89,24800);
INSERT INTO "profile_icons" VALUES (91,'p_470',90,47000);
INSERT INTO "profile_icons" VALUES (92,'p_359',91,35900);
INSERT INTO "profile_icons" VALUES (93,'p_700',92,70000);
INSERT INTO "profile_icons" VALUES (94,'p_468',93,46800);
INSERT INTO "profile_icons" VALUES (95,'p_287',94,28700);
INSERT INTO "profile_icons" VALUES (96,'p_288',95,28800);
INSERT INTO "profile_icons" VALUES (97,'p_289',96,28900);
INSERT INTO "profile_icons" VALUES (98,'p_462',97,46200);
INSERT INTO "profile_icons" VALUES (99,'p_471',98,47100);
INSERT INTO "profile_icons" VALUES (100,'p_334',99,33400);
INSERT INTO "profile_icons" VALUES (101,'p_447',100,44700);
INSERT INTO "profile_icons" VALUES (102,'p_448',101,44800);
INSERT INTO "profile_icons" VALUES (103,'p_363',102,36300);
INSERT INTO "profile_icons" VALUES (104,'p_364',103,36400);
INSERT INTO "profile_icons" VALUES (105,'p_365',104,36500);
INSERT INTO "profile_icons" VALUES (106,'p_228',105,22800);
INSERT INTO "profile_icons" VALUES (107,'p_229',106,22900);
INSERT INTO "profile_icons" VALUES (108,'p_302',107,30200);
INSERT INTO "profile_icons" VALUES (109,'p_439',109,43900);
INSERT INTO "profile_icons" VALUES (110,'p_122',110,12200);
INSERT INTO "profile_icons" VALUES (111,'p_173',111,17300);
INSERT INTO "profile_icons" VALUES (112,'p_35',112,3500);
INSERT INTO "profile_icons" VALUES (113,'p_36',113,3600);
INSERT INTO "profile_icons" VALUES (9001,'p_9001',9001,2501);
INSERT INTO "profile_icons" VALUES (114,'p_353',114,35300);
INSERT INTO "profile_icons" VALUES (115,'p_354',115,35400);
INSERT INTO "profile_icons" VALUES (116,'p_95',116,9500);
INSERT INTO "profile_icons" VALUES (117,'p_208',117,20800);
INSERT INTO "snorlax_rank_unlock_sleeping_faces" VALUES (1,1,'7,13,22,55,67,70,76,82,103,106,112,115,127,130,157,160,163,166,193,304','10,16,34,40,46,49,85,94,121,139,151,280,313,436','1,118,298,10001','4,31,148,259,440','8,14,23,56,68,71,77,83,104,107,113,116,128,131,158,161,164,167,194,305','11,17,25,35,41,47,50,86,95,122,140,152,281,314,337,340,342,352,356,359,364,367,388,389,390,392,412,415,416,419,422,437,448','2,109,119,136,145,154,169,196,299,328,331,334,348,350,354,379,382,385,401,410,10002','5,32,73,149,260,283,344,420,441','19,37,43,79,100,133,181,241,346,372,403','26,58,199,211,449','110,124,137,146,155,170,175,195,197,338,362,395,399,406,439,443','74,205,208,256,271,284,357,368,393,411,423','20,38,44,80,101,134,182,242,360,407','59,200,212,329,332,335,341,343,353,391','28,125,176,322,365,371,451','206,209,257,272,349,363','61,187,198,369,370,400,414','274,444','29,172,452','64,91,97,213,217,268,339,454','62,188,277','275,286,289,347,358,445','173,427,447','65,92,98,218,345','30,278,330,333,336,374','287,290,424',408,276,0,219,279,291,0,0,0,0,0);
INSERT INTO "snorlax_rank_unlock_sleeping_faces" VALUES (2,2,'1,4,7,22,31,34,46,49,55,76,94,103,106,112,118,121,139,151,163,166,304,428,436,440','8,23,56,77,104,107,113,164,167,305','35,47,50,95,122,140,152,429,437','2,109,119,169','5,32,432,441','37,52,79,100,181,334,337,340,342,344,346,350,352,354,356,372,379,385,389,410,416,419,422','178,211','9,24,57,78,105,108,110,114,124,165,168,170,306','36,48,51,96,123,141,153,205,208,256,357,423,430,433,438','3,38,53,80,101,120,182','6,33,179,212,335,341,343,353,362,386,395,431,439,442,443','125,323,351,371','206,209,257,363','61,111,171,370,400','434,444','39,54,81,102,183,369,435','91,180,213,214,238,253','62,126','207,210,258,347,445','0','92,215,239,254,447','336,373,387,398','0','63','446','0','93,216,240,255',0,0,0,0,0,0,0,0,0,0);
INSERT INTO "snorlax_rank_unlock_sleeping_faces" VALUES (3,3,'4,7,8,31,40,55,56,67,68,70,71,76,77,82,83,85,94,112,113,130,131,148,151,160,161,166,167,259,298,313,436,440','41,86,95,152,314,437,448','136,154,169,299','5,32,73,149,260,441','43,79,100,133','58,211,262,331,340,342,346,354,359,367,372,382,389,390,401,403,410,415,420,422,449','9,57,69,72,78,84,114,132,137,155,162,168,170,319,455','42,74,87,96,153,315,368,423,438','44,80,101,134,300','6,33,59,150,212,261,263,332,341,442','320,324,343,360,371,399,404,411,439,443,451,456','409,450','61,138,156,171','75,444','45,81,102,135,190,202,452','60,97,220,247,250,264,454','62,321,457,458','347,445','191,203','98,248,251,361,366','265,333,396,397,447,453,459','0','63','446','192,204,266','99,249,252,405',460,0,0,0,267,0,0,0,0,0,0);
INSERT INTO "snorlax_rank_unlock_sleeping_faces" VALUES (4,4,'4,7,8,31,46,47,67,68,70,71,82,83,103,104,106,107,115,116,121,122,130,131,148,151,152,157,158,160,161,166,167,280,281,298,304,305,436,437,440','136,145,154,169,299,307','5,32,149,283,441','100,133,181,241','211','9,69,72,84,105,108,117,124,132,137,146,155,159,162,168,170,306,308,340,346,350,352,356,359,367,372,390,392,410,412,415,416,420,422','48,123,153,271,282,284,295,368,393,423,438','101,134,182,242,300','6,33,150,212,341,391,442','125,325,371','272,296,353,362,363,399,406,407,411,417,439,443','138,147,156,171,244,301,309,310,413,414','285,444','102,135,183,243','292','126,245,302,311','273,286,297,394,418,421,445','0','293','426','287,447','246,303,312,408','446','0','294','0',288,0,0,0,0,0,0,0,0,0,0);
INSERT INTO "tutorial_stories" VALUES (1,1,1,'md_tutorial_stories_message_1_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (2,1,2,'md_tutorial_stories_message_1_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (3,1,3,'md_tutorial_stories_message_1_3',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (4,1,4,'md_tutorial_stories_message_1_4',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (5,1,5,'md_tutorial_stories_message_1_5',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (6,1,6,'md_tutorial_stories_message_1_6',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (7,1,7,'md_tutorial_stories_message_1_7',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (8,1,8,'md_tutorial_stories_message_1_8',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (9,1,9,'md_tutorial_stories_message_1_9',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (10,1,10,'md_tutorial_stories_message_1_10',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (11,1,11,'md_tutorial_stories_message_1_11',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (12,1,12,'md_tutorial_stories_message_1_12',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (13,1,13,'md_tutorial_stories_message_1_13',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (14,2,1,'md_tutorial_stories_message_2_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (15,2,2,'md_tutorial_stories_message_2_2',1,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (16,2,3,'md_tutorial_stories_message_2_3',1,1,0,0,1);
INSERT INTO "tutorial_stories" VALUES (17,2,4,'md_tutorial_stories_message_2_4',1,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (18,3,1,'md_tutorial_stories_message_3_1',2,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (19,3,2,'md_tutorial_stories_message_3_2',2,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (20,3,3,'md_tutorial_stories_message_3_3',3,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (21,3,4,'md_tutorial_stories_message_3_4',3,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (22,4,1,'md_tutorial_stories_message_4_1',4,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (23,4,2,'md_tutorial_stories_message_4_2',4,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (24,4,3,'md_tutorial_stories_message_4_3',4,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (25,4,4,'md_tutorial_stories_message_4_4',4,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (26,4,5,'md_tutorial_stories_message_4_5',4,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (27,5,1,'md_tutorial_stories_message_5_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (28,5,2,'md_tutorial_stories_message_5_2',5,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (29,5,3,'md_tutorial_stories_message_5_3',5,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (30,5,4,'md_tutorial_stories_message_5_4',5,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (31,5,5,'md_tutorial_stories_message_5_5',5,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (32,5,6,'md_tutorial_stories_message_5_6',5,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (33,5,7,'md_tutorial_stories_message_5_7',5,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (34,6,1,'md_tutorial_stories_message_6_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (35,7,1,'md_tutorial_stories_message_7_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (36,8,1,'md_tutorial_stories_message_8_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (37,9,1,'md_tutorial_stories_message_9_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (38,9,2,'md_tutorial_stories_message_9_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (39,9,3,'md_tutorial_stories_message_9_3',6,1,1,0,0);
INSERT INTO "tutorial_stories" VALUES (40,9,4,'md_tutorial_stories_message_9_4',6,1,1,0,0);
INSERT INTO "tutorial_stories" VALUES (41,9,5,'md_tutorial_stories_message_9_5',6,1,0,1,0);
INSERT INTO "tutorial_stories" VALUES (42,9,6,'md_tutorial_stories_message_9_6',6,1,0,2,0);
INSERT INTO "tutorial_stories" VALUES (43,9,7,'md_tutorial_stories_message_9_7',6,1,0,3,0);
INSERT INTO "tutorial_stories" VALUES (44,9,8,'md_tutorial_stories_message_9_8',6,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (45,10,1,'md_tutorial_stories_message_10_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (46,10,2,'md_tutorial_stories_message_10_2',7,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (47,10,3,'md_tutorial_stories_message_10_3',7,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (48,11,1,'md_tutorial_stories_message_11_1',8,1,2,0,0);
INSERT INTO "tutorial_stories" VALUES (49,11,2,'md_tutorial_stories_message_11_2',8,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (50,11,3,'md_tutorial_stories_message_11_3',8,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (51,12,1,'md_tutorial_stories_message_12_1',9,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (52,12,2,'md_tutorial_stories_message_12_2',9,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (53,12,3,'md_tutorial_stories_message_12_3',9,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (54,12,4,'md_tutorial_stories_message_12_4',9,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (55,13,1,'md_tutorial_stories_message_13_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (56,13,2,'md_tutorial_stories_message_13_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (57,14,1,'md_tutorial_stories_message_14_1',0,2,0,0,0);
INSERT INTO "tutorial_stories" VALUES (58,15,1,'md_tutorial_stories_message_15_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (59,15,2,'md_tutorial_stories_message_15_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (60,15,3,'md_tutorial_stories_message_15_3',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (61,15,4,'md_tutorial_stories_message_15_4',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (62,16,1,'md_tutorial_stories_message_16_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (63,16,2,'md_tutorial_stories_message_16_2',10,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (64,16,3,'md_tutorial_stories_message_16_3',10,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (65,16,4,'md_tutorial_stories_message_16_4',10,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (66,16,5,'md_tutorial_stories_message_16_5',10,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (67,16,6,'md_tutorial_stories_message_16_6',10,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (68,16,7,'md_tutorial_stories_message_16_7',10,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (69,17,1,'md_tutorial_stories_message_17_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (70,17,2,'md_tutorial_stories_message_17_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (71,18,1,'md_tutorial_stories_message_18_1',11,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (72,18,2,'md_tutorial_stories_message_18_2',11,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (73,18,3,'md_tutorial_stories_message_18_3',11,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (74,18,4,'md_tutorial_stories_message_18_4',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (75,18,5,'md_tutorial_stories_message_18_5',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (76,18,6,'md_tutorial_stories_message_18_6',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (77,19,1,'md_tutorial_stories_message_19_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (78,19,2,'md_tutorial_stories_message_19_2',12,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (79,19,3,'md_tutorial_stories_message_19_3',12,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (80,19,4,'md_tutorial_stories_message_19_4',12,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (81,19,5,'md_tutorial_stories_message_19_5',12,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (82,20,1,'md_tutorial_stories_message_20_1',13,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (83,20,2,'md_tutorial_stories_message_20_2',14,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (84,20,3,'md_tutorial_stories_message_20_3',14,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (85,21,1,'md_tutorial_stories_message_21_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (86,21,2,'md_tutorial_stories_message_21_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (87,22,1,'md_tutorial_stories_message_22_1',15,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (88,22,2,'md_tutorial_stories_message_22_2',15,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (89,23,1,'md_tutorial_stories_message_23_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (90,23,2,'md_tutorial_stories_message_23_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (91,23,3,'md_tutorial_stories_message_23_3',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (92,24,1,'md_tutorial_stories_message_24_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (93,24,2,'md_tutorial_stories_message_24_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (94,24,3,'md_tutorial_stories_message_24_3',16,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (95,24,4,'md_tutorial_stories_message_24_4',16,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (96,24,5,'md_tutorial_stories_message_24_5',16,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (97,25,1,'md_tutorial_stories_message_25_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (98,25,2,'md_tutorial_stories_message_25_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (99,26,1,'md_tutorial_stories_message_26_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (100,27,1,'md_tutorial_stories_message_27_1',0,1,2,0,0);
INSERT INTO "tutorial_stories" VALUES (101,27,2,'md_tutorial_stories_message_27_2',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (102,27,3,'md_tutorial_stories_message_27_3',0,1,2,0,0);
INSERT INTO "tutorial_stories" VALUES (103,28,1,'md_tutorial_stories_message_28_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (104,28,2,'md_tutorial_stories_message_28_2',17,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (105,28,3,'md_tutorial_stories_message_28_3',17,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (106,28,4,'md_tutorial_stories_message_28_4',17,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (107,29,1,'md_tutorial_stories_message_29_1',0,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (108,29,2,'md_tutorial_stories_message_29_2',18,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (109,29,3,'md_tutorial_stories_message_29_3',18,1,0,0,0);
INSERT INTO "tutorial_stories" VALUES (110,29,4,'md_tutorial_stories_message_29_4',18,1,0,0,0);
INSERT INTO "item_name_data" VALUES (1,5,4,'item_name_1','item_desc_1','item_desc_short_1');
INSERT INTO "item_name_data" VALUES (2,5,2,'item_name_2','item_desc_2','item_desc_short_2');
INSERT INTO "item_name_data" VALUES (3,5,1,'item_name_3','item_desc_3','item_desc_short_3');
INSERT INTO "item_name_data" VALUES (4,5,3,'item_name_4','item_desc_4','item_desc_short_4');
INSERT INTO "item_name_data" VALUES (5,22,1,'item_name_5','item_desc_5','item_desc_short_5');
INSERT INTO "item_name_data" VALUES (6,23,1,'item_name_6','item_desc_6','item_desc_short_6');
INSERT INTO "item_name_data" VALUES (7,20,1,'item_name_7','item_desc_7','item_desc_short_7');
INSERT INTO "item_name_data" VALUES (8,21,1,'item_name_8','item_desc_8','item_desc_short_8');
INSERT INTO "item_name_data" VALUES (9,9,1,'item_name_9','item_desc_9','item_desc_short_9');
INSERT INTO "item_name_data" VALUES (10,9,3,'item_name_10','item_desc_10','item_desc_short_10');
INSERT INTO "item_name_data" VALUES (11,9,2,'item_name_11','item_desc_11','item_desc_short_11');
INSERT INTO "item_name_data" VALUES (12,10,1,'item_name_12','item_desc_12','item_desc_short_12');
INSERT INTO "item_name_data" VALUES (13,10,2,'item_name_13','item_desc_13','item_desc_short_13');
INSERT INTO "item_name_data" VALUES (14,10,3,'item_name_14','item_desc_14','item_desc_short_14');
INSERT INTO "item_name_data" VALUES (15,17,1,'item_name_15','item_desc_15','item_desc_short_15');
INSERT INTO "item_name_data" VALUES (16,17,2,'item_name_16','item_desc_16','item_desc_short_16');
INSERT INTO "item_name_data" VALUES (17,17,3,'item_name_17','item_desc_17','item_desc_short_17');
INSERT INTO "item_name_data" VALUES (18,25,1,'item_name_18','item_desc_18','item_desc_short_18');
INSERT INTO "item_name_data" VALUES (19,25,2,'item_name_19','item_desc_19','item_desc_short_19');
INSERT INTO "item_name_data" VALUES (20,25,3,'item_name_20','item_desc_20','item_desc_short_20');
INSERT INTO "item_name_data" VALUES (21,28,1,'item_name_21','item_desc_21','item_desc_short_21');
INSERT INTO "item_name_data" VALUES (22,28,2,'item_name_22','item_desc_22','item_desc_short_22');
INSERT INTO "item_name_data" VALUES (23,28,3,'item_name_23','item_desc_23','item_desc_short_23');
INSERT INTO "item_name_data" VALUES (24,28,4,'item_name_24','item_desc_24','item_desc_short_24');
INSERT INTO "item_name_data" VALUES (25,28,5,'item_name_25','item_desc_25','item_desc_short_25');
INSERT INTO "item_name_data" VALUES (26,28,6,'item_name_26','item_desc_26','item_desc_short_26');
INSERT INTO "item_name_data" VALUES (27,28,7,'item_name_27','item_desc_27','item_desc_short_27');
INSERT INTO "item_name_data" VALUES (28,28,8,'item_name_28','item_desc_28','item_desc_short_28');
INSERT INTO "item_name_data" VALUES (29,28,9,'item_name_29','item_desc_29','item_desc_short_29');
INSERT INTO "item_name_data" VALUES (30,28,10,'item_name_30','item_desc_30','item_desc_short_30');
INSERT INTO "item_name_data" VALUES (31,28,11,'item_name_31','item_desc_31','item_desc_short_31');
INSERT INTO "item_name_data" VALUES (32,26,1,'item_name_32','item_desc_32','item_desc_short_32');
INSERT INTO "item_name_data" VALUES (33,27,1,'item_name_33','item_desc_33','item_desc_short_33');
INSERT INTO "item_name_data" VALUES (34,5,5,'item_name_34','item_desc_34','item_desc_short_34');
INSERT INTO "item_name_data" VALUES (9999,20,0,'item_name_7','item_desc_7','item_desc_short_7');
INSERT INTO "item_sort_data" VALUES (1,5,4,17,100,70,80,100,80,120,290,200);
INSERT INTO "item_sort_data" VALUES (2,5,2,18,70,230,110,150,100,140,330,130);
INSERT INTO "item_sort_data" VALUES (3,5,1,19,150,110,90,110,50,130,190,120);
INSERT INTO "item_sort_data" VALUES (4,5,3,20,40,300,100,310,60,150,340,100);
INSERT INTO "item_sort_data" VALUES (5,5,5,1,180,80,70,10,90,110,270,20);
INSERT INTO "item_sort_data" VALUES (6,22,1,2,60,40,160,120,40,100,20,150);
INSERT INTO "item_sort_data" VALUES (7,23,1,3,30,150,280,140,120,330,70,310);
INSERT INTO "item_sort_data" VALUES (8,20,1,13,230,50,340,60,220,10,320,320);
INSERT INTO "item_sort_data" VALUES (9,21,1,14,10,90,300,20,210,60,280,110);
INSERT INTO "item_sort_data" VALUES (10,9,1,15,240,290,260,300,200,280,310,340);
INSERT INTO "item_sort_data" VALUES (11,9,3,16,140,100,290,200,230,340,200,220);
INSERT INTO "item_sort_data" VALUES (12,9,2,7,260,250,150,190,150,160,100,10);
INSERT INTO "item_sort_data" VALUES (13,10,1,8,210,140,60,180,290,190,130,250);
INSERT INTO "item_sort_data" VALUES (14,10,2,9,200,130,50,170,280,180,120,240);
INSERT INTO "item_sort_data" VALUES (15,10,3,4,190,120,40,160,270,170,110,230);
INSERT INTO "item_sort_data" VALUES (16,17,1,5,130,190,330,50,340,90,230,180);
INSERT INTO "item_sort_data" VALUES (17,17,2,6,120,180,320,40,330,80,220,170);
INSERT INTO "item_sort_data" VALUES (18,17,3,10,110,170,310,30,320,70,210,160);
INSERT INTO "item_sort_data" VALUES (19,25,1,11,330,30,30,90,260,50,50,300);
INSERT INTO "item_sort_data" VALUES (20,25,2,12,320,20,20,80,250,40,40,290);
INSERT INTO "item_sort_data" VALUES (21,25,3,21,310,10,10,70,240,30,30,280);
INSERT INTO "item_sort_data" VALUES (22,28,1,22,170,220,120,130,300,20,250,330);
INSERT INTO "item_sort_data" VALUES (23,28,2,23,250,60,200,230,70,220,160,50);
INSERT INTO "item_sort_data" VALUES (24,28,3,24,280,340,180,260,310,200,150,40);
INSERT INTO "item_sort_data" VALUES (25,28,4,25,50,330,210,290,20,270,300,270);
INSERT INTO "item_sort_data" VALUES (26,28,5,26,340,210,250,240,10,240,90,260);
INSERT INTO "item_sort_data" VALUES (27,28,6,27,80,160,220,250,30,230,240,90);
INSERT INTO "item_sort_data" VALUES (28,28,7,28,160,270,230,270,170,250,60,30);
INSERT INTO "item_sort_data" VALUES (29,28,8,29,220,310,190,220,140,210,170,80);
INSERT INTO "item_sort_data" VALUES (30,28,9,30,300,260,170,210,160,290,10,140);
INSERT INTO "item_sort_data" VALUES (31,28,10,31,270,280,240,280,190,260,80,210);
INSERT INTO "item_sort_data" VALUES (32,28,11,32,20,200,270,320,130,300,260,60);
INSERT INTO "item_sort_data" VALUES (33,26,1,33,290,240,130,330,110,310,140,70);
INSERT INTO "item_sort_data" VALUES (34,27,1,34,90,320,140,340,180,320,180,190);
INSERT INTO "item_sort_data" VALUES (9999,20,0,9999,0,0,0,0,0,0,0,0);
INSERT INTO "pokemon_interaction_data" VALUES (1,'md_pokemon_interaction_data_message_1',10);
INSERT INTO "pokemon_interaction_data" VALUES (2,'md_pokemon_interaction_data_message_2',10);
INSERT INTO "event_sleep_power_multiplier" VALUES (1,999,200);
INSERT INTO "event_sleep_power_multiplier" VALUES (2,29,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (3,30,200);
INSERT INTO "event_sleep_power_multiplier" VALUES (4,31,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (5,33,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (6,34,200);
INSERT INTO "event_sleep_power_multiplier" VALUES (7,35,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (8,46,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (9,47,200);
INSERT INTO "event_sleep_power_multiplier" VALUES (10,48,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (11,66,150);
INSERT INTO "event_sleep_power_multiplier" VALUES (12,67,400);
INSERT INTO "event_sleep_power_multiplier" VALUES (13,68,150);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (4,41,40);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (5,42,0);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (6,43,40);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (7,44,0);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (8,59,40);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (9,60,0);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (10,61,40);
INSERT INTO "event_sleep_type_lottery_ratio" VALUES (11,62,0);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (1,999,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (2,29,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (3,30,300);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (4,31,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (5,33,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (6,34,300);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (7,35,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (8,46,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (9,47,300);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (10,48,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (11,66,200);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (12,67,300);
INSERT INTO "event_pokemon_sleep_exp_multiplier" VALUES (13,68,200);
INSERT INTO "event_sleep_point_multiplier" VALUES (1,999,200);
INSERT INTO "event_shiny_freq_denominator" VALUES (1,999,'1,2,3,4,5,6,7,8,9,10',80);
INSERT INTO "event_shiny_freq_denominator" VALUES (2,59,'2',40);
INSERT INTO "event_shiny_freq_denominator" VALUES (3,60,'2',40);
INSERT INTO "event_shiny_freq_denominator" VALUES (4,61,'2',40);
INSERT INTO "event_shiny_freq_denominator" VALUES (5,62,'2',40);
INSERT INTO "event_sleeping_face_params" VALUES (1,999,'1,2,3,4,5,6,7,8,9,10','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (2,33,'436,437,438,439,440,441,442,443,444,445,446,447','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (3,34,'436,437,438,439,440,441,442,443,444,445,446,447','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (4,35,'436,437,438,439,440,441,442,443,444,445,446,447','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (5,38,'436,437,438,439,440,441,442,443,444,445,446,447','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (6,46,'436,437,438,439,440,441,442,443,444,445,446,447','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (7,47,'436,437,438,439,440,441,442,443,444,445,446,447','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (8,48,'436,437,438,439,440,441,442,443,444,445,446,447','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (9,50,'10001,10002,448,449,450,451,452,453,454','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (10,41,'130,131,132,133,134,135,202,203,204,10001,10002','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (11,41,'10,11,12,82,83,84','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (12,41,'448,449,450,451,452,453,454','md_event_sleeping_face_params_1');
INSERT INTO "event_sleeping_face_params" VALUES (13,42,'130,131,132,133,134,135,202,203,204,10001,10002','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (14,42,'10,11,12,82,83,84','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (15,42,'448,449,450,451,452,453,454','md_event_sleeping_face_params_1');
INSERT INTO "event_sleeping_face_params" VALUES (16,43,'130,131,132,133,134,135,202,203,204,10001,10002','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (17,43,'10,11,12,82,83,84','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (18,43,'448,449,450,451,452,453,454','md_event_sleeping_face_params_1');
INSERT INTO "event_sleeping_face_params" VALUES (19,44,'130,131,132,133,134,135,202,203,204,10001,10002','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (20,44,'10,11,12,82,83,84','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (21,44,'448,449,450,451,452,453,454','md_event_sleeping_face_params_1');
INSERT INTO "event_sleeping_face_params" VALUES (22,51,'10001,10002','dummy');
INSERT INTO "event_sleeping_face_params" VALUES (23,59,'4,5,6','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (24,59,'214,215,216,217,218,219,220,221,222,247,248,249,250,251,252,268,269,270,274,275,276,292,293,294','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (25,60,'4,5,6','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (26,60,'214,215,216,217,218,219,220,221,222,247,248,249,250,251,252,268,269,270,274,275,276,292,293,294','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (27,61,'4,5,6','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (28,61,'214,215,216,217,218,219,220,221,222,247,248,249,250,251,252,268,269,270,274,275,276,292,293,294','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (29,62,'4,5,6','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (30,62,'214,215,216,217,218,219,220,221,222,247,248,249,250,251,252,268,269,270,274,275,276,292,293,294','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (31,66,'436,437,438,439,440,441,442,443,444,445,446,447','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (32,67,'436,437,438,439,440,441,442,443,444,445,446,447','md_event_sleeping_face_params_3');
INSERT INTO "event_sleeping_face_params" VALUES (33,68,'436,437,438,439,440,441,442,443,444,445,446,447','md_event_sleeping_face_params_2');
INSERT INTO "event_sleeping_face_params" VALUES (90001,90001,'455,456,457,458,459,460','dummy');
INSERT INTO "event_pickup_buff_multiplier" VALUES (1,59,150);
INSERT INTO "event_pickup_buff_multiplier" VALUES (2,60,150);
INSERT INTO "event_pickup_buff_multiplier" VALUES (3,61,150);
INSERT INTO "event_pickup_buff_multiplier" VALUES (4,62,150);
INSERT INTO "event_pokemon_candy_exp_multiplier" VALUES (1,999,200);
INSERT INTO "event_energy_multiplier" VALUES (1,999,150,200,250);
INSERT INTO "event_research_candy_multiplier" VALUES (4,41,200);
INSERT INTO "event_research_candy_multiplier" VALUES (5,42,300);
INSERT INTO "event_research_candy_multiplier" VALUES (6,43,200);
INSERT INTO "event_research_candy_multiplier" VALUES (7,44,300);
INSERT INTO "pokemon_food_sp_correction" VALUES (1,1,1000);
INSERT INTO "pokemon_food_sp_correction" VALUES (2,2,1003);
INSERT INTO "pokemon_food_sp_correction" VALUES (3,3,1007);
INSERT INTO "pokemon_food_sp_correction" VALUES (4,4,1011);
INSERT INTO "pokemon_food_sp_correction" VALUES (5,5,1016);
INSERT INTO "pokemon_food_sp_correction" VALUES (6,6,1021);
INSERT INTO "pokemon_food_sp_correction" VALUES (7,7,1027);
INSERT INTO "pokemon_food_sp_correction" VALUES (8,8,1033);
INSERT INTO "pokemon_food_sp_correction" VALUES (9,9,1039);
INSERT INTO "pokemon_food_sp_correction" VALUES (10,10,1046);
INSERT INTO "pokemon_food_sp_correction" VALUES (11,11,1053);
INSERT INTO "pokemon_food_sp_correction" VALUES (12,12,1061);
INSERT INTO "pokemon_food_sp_correction" VALUES (13,13,1069);
INSERT INTO "pokemon_food_sp_correction" VALUES (14,14,1077);
INSERT INTO "pokemon_food_sp_correction" VALUES (15,15,1085);
INSERT INTO "pokemon_food_sp_correction" VALUES (16,16,1094);
INSERT INTO "pokemon_food_sp_correction" VALUES (17,17,1104);
INSERT INTO "pokemon_food_sp_correction" VALUES (18,18,1114);
INSERT INTO "pokemon_food_sp_correction" VALUES (19,19,1124);
INSERT INTO "pokemon_food_sp_correction" VALUES (20,20,1134);
INSERT INTO "pokemon_food_sp_correction" VALUES (21,21,1145);
INSERT INTO "pokemon_food_sp_correction" VALUES (22,22,1156);
INSERT INTO "pokemon_food_sp_correction" VALUES (23,23,1168);
INSERT INTO "pokemon_food_sp_correction" VALUES (24,24,1180);
INSERT INTO "pokemon_food_sp_correction" VALUES (25,25,1192);
INSERT INTO "pokemon_food_sp_correction" VALUES (26,26,1205);
INSERT INTO "pokemon_food_sp_correction" VALUES (27,27,1218);
INSERT INTO "pokemon_food_sp_correction" VALUES (28,28,1231);
INSERT INTO "pokemon_food_sp_correction" VALUES (29,29,1245);
INSERT INTO "pokemon_food_sp_correction" VALUES (30,30,1259);
INSERT INTO "pokemon_food_sp_correction" VALUES (31,31,1274);
INSERT INTO "pokemon_food_sp_correction" VALUES (32,32,1288);
INSERT INTO "pokemon_food_sp_correction" VALUES (33,33,1303);
INSERT INTO "pokemon_food_sp_correction" VALUES (34,34,1319);
INSERT INTO "pokemon_food_sp_correction" VALUES (35,35,1335);
INSERT INTO "pokemon_food_sp_correction" VALUES (36,36,1351);
INSERT INTO "pokemon_food_sp_correction" VALUES (37,37,1368);
INSERT INTO "pokemon_food_sp_correction" VALUES (38,38,1385);
INSERT INTO "pokemon_food_sp_correction" VALUES (39,39,1402);
INSERT INTO "pokemon_food_sp_correction" VALUES (40,40,1420);
INSERT INTO "pokemon_food_sp_correction" VALUES (41,41,1439);
INSERT INTO "pokemon_food_sp_correction" VALUES (42,42,1457);
INSERT INTO "pokemon_food_sp_correction" VALUES (43,43,1477);
INSERT INTO "pokemon_food_sp_correction" VALUES (44,44,1496);
INSERT INTO "pokemon_food_sp_correction" VALUES (45,45,1517);
INSERT INTO "pokemon_food_sp_correction" VALUES (46,46,1537);
INSERT INTO "pokemon_food_sp_correction" VALUES (47,47,1558);
INSERT INTO "pokemon_food_sp_correction" VALUES (48,48,1580);
INSERT INTO "pokemon_food_sp_correction" VALUES (49,49,1602);
INSERT INTO "pokemon_food_sp_correction" VALUES (50,50,1625);
INSERT INTO "kpi_event_token_list" VALUES (1,'in_premium_pokemonsleep.subscribe_1','6ww1dp');
INSERT INTO "kpi_event_token_list" VALUES (2,'out_premium_pokemonsleep.subscribe_1','fsfyit');
INSERT INTO "kpi_event_token_list" VALUES (3,'keep_premium_pokemonsleep.subscribe_1','eqys0l');
INSERT INTO "kpi_event_token_list" VALUES (4,'in_premium_pokemonsleep.subscribe_6','gji2ee');
INSERT INTO "kpi_event_token_list" VALUES (5,'out_premium_pokemonsleep.subscribe_6','lm2qcv');
INSERT INTO "kpi_event_token_list" VALUES (6,'keep_premium_pokemonsleep.subscribe_6','p1nj9d');
INSERT INTO "kpi_event_token_list" VALUES (7,'ipa_pokemonsleep.dia001','jc2s2p');
INSERT INTO "kpi_event_token_list" VALUES (8,'ipa_pokemonsleep.dia002','e0pjxt');
INSERT INTO "kpi_event_token_list" VALUES (9,'ipa_pokemonsleep.dia003','nvhuho');
INSERT INTO "kpi_event_token_list" VALUES (10,'ipa_pokemonsleep.dia004','v38m2m');
INSERT INTO "kpi_event_token_list" VALUES (11,'ipa_pokemonsleep.dia005','fssl5w');
INSERT INTO "kpi_event_token_list" VALUES (12,'ipa_pokemonsleep.dia006','1nx3pg');
INSERT INTO "kpi_event_token_list" VALUES (13,'use_dia_shop_1','bapeu0');
INSERT INTO "kpi_event_token_list" VALUES (14,'use_dia_shop_2','drbkev');
INSERT INTO "kpi_event_token_list" VALUES (15,'use_dia_shop_3','aasysh');
INSERT INTO "kpi_event_token_list" VALUES (16,'use_dia_shop_12','lfo8f0');
INSERT INTO "kpi_event_token_list" VALUES (17,'use_dia_shop_4','cj4y30');
INSERT INTO "kpi_event_token_list" VALUES (18,'use_dia_shop_5','xw8q52');
INSERT INTO "kpi_event_token_list" VALUES (19,'use_dia_shop_6','87phkn');
INSERT INTO "kpi_event_token_list" VALUES (20,'use_dia_shop_7','6pf463');
INSERT INTO "kpi_event_token_list" VALUES (21,'use_dia_shop_8','mywp9r');
INSERT INTO "kpi_event_token_list" VALUES (22,'use_dia_shop_9','qv180b');
INSERT INTO "kpi_event_token_list" VALUES (23,'use_dia_poke_box_expand_1','biqq69');
INSERT INTO "kpi_event_token_list" VALUES (24,'use_dia_poke_box_expand_5','p3qk91');
INSERT INTO "kpi_event_token_list" VALUES (25,'use_dia_poke_box_expand_10','xqdobe');
INSERT INTO "kpi_event_token_list" VALUES (26,'use_dia_poke_box_expand_15','dzihnh');
INSERT INTO "kpi_event_token_list" VALUES (27,'use_dia_poke_box_expand_20','s0adse');
INSERT INTO "kpi_event_token_list" VALUES (28,'use_dia_poke_box_expand_30','4dri6y');
INSERT INTO "kpi_event_token_list" VALUES (29,'use_dia_poke_box_expand_40','lxn65c');
INSERT INTO "kpi_event_token_list" VALUES (30,'use_dia_poke_box_expand_50','mjayk8');
INSERT INTO "kpi_event_token_list" VALUES (31,'use_dia_poke_box_expand_60','klxas7');
INSERT INTO "kpi_event_token_list" VALUES (32,'use_dia_poke_box_expand_70','row7za');
INSERT INTO "kpi_event_token_list" VALUES (33,'use_dia_poke_box_expand_80','jaazhm');
INSERT INTO "kpi_event_token_list" VALUES (34,'use_dia_poke_box_expand_95','6nuwxx');
INSERT INTO "kpi_event_token_list" VALUES (35,'use_dia_food_bag_expand_1','qpvsoo');
INSERT INTO "kpi_event_token_list" VALUES (36,'use_dia_food_bag_expand_5','uvwx7k');
INSERT INTO "kpi_event_token_list" VALUES (37,'use_dia_food_bag_expand_10','cjca1z');
INSERT INTO "kpi_event_token_list" VALUES (38,'use_dia_food_bag_expand_15','4a5mip');
INSERT INTO "kpi_event_token_list" VALUES (39,'use_dia_food_bag_expand_20','t1dk4j');
INSERT INTO "kpi_event_token_list" VALUES (40,'use_dia_food_bag_expand_30','tr45si');
INSERT INTO "kpi_event_token_list" VALUES (41,'use_dia_food_bag_expand_44','w0b71b');
INSERT INTO "kpi_event_token_list" VALUES (42,'use_dia_item_bag_expand_1','ons8xf');
INSERT INTO "kpi_event_token_list" VALUES (43,'use_dia_item_bag_expand_5','aztkeg');
INSERT INTO "kpi_event_token_list" VALUES (44,'use_dia_item_bag_expand_10','m3ynbh');
INSERT INTO "kpi_event_token_list" VALUES (45,'use_dia_item_bag_expand_15','jorzxb');
INSERT INTO "kpi_event_token_list" VALUES (46,'use_dia_item_bag_expand_20','ncnr5o');
INSERT INTO "kpi_event_token_list" VALUES (47,'use_dia_item_bag_expand_30','lom6t3');
INSERT INTO "kpi_event_token_list" VALUES (48,'use_dia_item_bag_expand_44','rdur4v');
INSERT INTO "kpi_event_token_list" VALUES (49,'use_dia_shop_10','sq7bp9');
INSERT INTO "kpi_event_token_list" VALUES (50,'use_dia_shop_11','uq7pe7');
INSERT INTO "kpi_event_token_list" VALUES (51,'sleep_point_1','elnpzq');
INSERT INTO "kpi_event_token_list" VALUES (52,'sleep_point_2','h4rsli');
INSERT INTO "kpi_event_token_list" VALUES (53,'sleep_point_3','k8opqr');
INSERT INTO "kpi_event_token_list" VALUES (54,'sleep_point_4','2jamqy');
INSERT INTO "kpi_event_token_list" VALUES (55,'sleep_point_5','bp4x51');
INSERT INTO "kpi_event_token_list" VALUES (56,'sleep_point_6','d9gn4f');
INSERT INTO "kpi_event_token_list" VALUES (57,'sleep_point_7','hfsoyn');
INSERT INTO "kpi_event_token_list" VALUES (58,'sleep_point_8','7aquki');
INSERT INTO "kpi_event_token_list" VALUES (59,'sleep_point_9','yzdsfv');
INSERT INTO "kpi_event_token_list" VALUES (60,'sleep_point_10','fqgcef');
INSERT INTO "kpi_event_token_list" VALUES (61,'premium_sleep_point_1','q8wkv2');
INSERT INTO "kpi_event_token_list" VALUES (62,'premium_sleep_point_2','ygbpl3');
INSERT INTO "kpi_event_token_list" VALUES (63,'premium_sleep_point_3','emnzk9');
INSERT INTO "kpi_event_token_list" VALUES (64,'premium_sleep_point_4','o88vo1');
INSERT INTO "kpi_event_token_list" VALUES (65,'premium_sleep_point_5','oyk53i');
INSERT INTO "kpi_event_token_list" VALUES (66,'premium_sleep_point_6','fqm35e');
INSERT INTO "kpi_event_token_list" VALUES (67,'premium_sleep_point_7','qqf8nq');
INSERT INTO "kpi_event_token_list" VALUES (68,'premium_sleep_point_8','ouq4yf');
INSERT INTO "kpi_event_token_list" VALUES (69,'premium_sleep_point_9','4pmh4j');
INSERT INTO "kpi_event_token_list" VALUES (70,'premium_sleep_point_10','rmzg5d');
INSERT INTO "kpi_event_token_list" VALUES (71,'day0_tutorial_1','8uyk80');
INSERT INTO "kpi_event_token_list" VALUES (72,'day0_tutorial_2','bybb57');
INSERT INTO "kpi_event_token_list" VALUES (73,'day0_tutorial_3','bkl7wn');
INSERT INTO "kpi_event_token_list" VALUES (74,'day0_tutorial_4','e4fkad');
INSERT INTO "kpi_event_token_list" VALUES (75,'day1_tutorial_1','9c8lld');
INSERT INTO "kpi_event_token_list" VALUES (76,'day1_tutorial_2','l43cke');
INSERT INTO "kpi_event_token_list" VALUES (77,'day1_tutorial_3','tqxcef');
INSERT INTO "kpi_event_token_list" VALUES (78,'day1_tutorial_4','a0qz87');
INSERT INTO "kpi_event_token_list" VALUES (79,'day1_tutorial_5','5xr1zc');
INSERT INTO "kpi_event_token_list" VALUES (80,'research_rank_2','2t0dmz');
INSERT INTO "kpi_event_token_list" VALUES (81,'research_rank_5','lf83d7');
INSERT INTO "kpi_event_token_list" VALUES (82,'research_rank_10','a2ymmd');
INSERT INTO "kpi_event_token_list" VALUES (83,'research_rank_15','s0dkze');
INSERT INTO "kpi_event_token_list" VALUES (84,'research_rank_20','2ukvn7');
INSERT INTO "kpi_event_token_list" VALUES (85,'research_rank_25','exh2p0');
INSERT INTO "kpi_event_token_list" VALUES (86,'research_rank_30','jdbayo');
INSERT INTO "kpi_event_token_list" VALUES (87,'research_rank_35','9usgxh');
INSERT INTO "kpi_event_token_list" VALUES (88,'research_rank_40','se335e');
INSERT INTO "kpi_event_token_list" VALUES (89,'research_rank_45','ltfja4');
INSERT INTO "kpi_event_token_list" VALUES (90,'research_rank_50','eebc40');
INSERT INTO "kpi_event_token_list" VALUES (91,'research_rank_55','y7yko5');
INSERT INTO "kpi_event_token_list" VALUES (92,'research_rank_60','dgx9b7');
INSERT INTO "kpi_event_token_list" VALUES (93,'use_dia_shop_13','5b5ro8');
INSERT INTO "kpi_event_token_list" VALUES (94,'use_dia_shop_14','oh5kx0');
INSERT INTO "kpi_event_token_list" VALUES (95,'sleep_point_11','jbxqch');
INSERT INTO "kpi_event_token_list" VALUES (96,'sleep_point_12','65hmm1');
INSERT INTO "kpi_event_token_list" VALUES (97,'sleep_point_13','4blpif');
INSERT INTO "kpi_event_token_list" VALUES (98,'sleep_point_14','b24src');
INSERT INTO "kpi_event_token_list" VALUES (99,'sleep_point_15','s19x2v');
INSERT INTO "kpi_event_token_list" VALUES (100,'sleep_point_16','sq6tcc');
INSERT INTO "kpi_event_token_list" VALUES (101,'sleep_point_17','egymyv');
INSERT INTO "kpi_event_token_list" VALUES (102,'sleep_point_18','513hiw');
INSERT INTO "kpi_event_token_list" VALUES (103,'sleep_point_19','lnjiqt');
INSERT INTO "kpi_event_token_list" VALUES (104,'use_dia_shop_15','l462ch');
INSERT INTO "kpi_event_token_list" VALUES (105,'use_dia_shop_16','jtvqys');
INSERT INTO "kpi_event_token_list" VALUES (106,'use_dia_shop_17','mngi9l');
INSERT INTO "kpi_event_token_list" VALUES (107,'use_dia_shop_18','6oxukc');
INSERT INTO "kpi_event_token_list" VALUES (108,'use_dia_shop_19','yfbej5');
INSERT INTO "kpi_event_token_list" VALUES (109,'use_dia_shop_20','dgbwnc');
INSERT INTO "kpi_event_token_list" VALUES (110,'use_dia_shop_21','7nmxbi');
INSERT INTO "kpi_event_token_list" VALUES (111,'use_dia_shop_22','rjq2es');
INSERT INTO "kpi_event_token_list" VALUES (112,'use_dia_shop_23','epn8uk');
INSERT INTO "event_sleep_point_bonus" VALUES (1,999,200);
INSERT INTO "event_sleep_point_bonus" VALUES (2,29,500);
INSERT INTO "event_sleep_point_bonus" VALUES (3,30,1000);
INSERT INTO "event_sleep_point_bonus" VALUES (4,31,500);
INSERT INTO "event_sleep_point_bonus" VALUES (5,33,500);
INSERT INTO "event_sleep_point_bonus" VALUES (6,34,1000);
INSERT INTO "event_sleep_point_bonus" VALUES (7,35,500);
INSERT INTO "event_sleep_point_bonus" VALUES (8,46,500);
INSERT INTO "event_sleep_point_bonus" VALUES (9,47,1000);
INSERT INTO "event_sleep_point_bonus" VALUES (10,48,500);
INSERT INTO "event_sleep_point_bonus" VALUES (11,60,1121);
INSERT INTO "event_sleep_point_bonus" VALUES (12,66,500);
INSERT INTO "event_sleep_point_bonus" VALUES (13,67,1000);
INSERT INTO "event_sleep_point_bonus" VALUES (14,68,500);
INSERT INTO "fields_event_pokemons" VALUES (1,1,'10001,10002','41,42,43,44');
INSERT INTO "cooking_recovery_power" VALUES (1,0,209,50);
INSERT INTO "cooking_recovery_power" VALUES (2,210,409,40);
INSERT INTO "cooking_recovery_power" VALUES (3,410,609,30);
INSERT INTO "cooking_recovery_power" VALUES (4,610,809,20);
INSERT INTO "cooking_recovery_power" VALUES (5,810,999,10);
INSERT INTO "buff_type" VALUES (0,'md_buff_type_name_0');
INSERT INTO "buff_type" VALUES (1,'md_buff_type_name_1');
INSERT INTO "buff_type" VALUES (2,'md_buff_type_name_2');
INSERT INTO "buff_type" VALUES (3,'md_buff_type_name_3');
INSERT INTO "buff_type" VALUES (4,'md_buff_type_name_4');
INSERT INTO "buff_type" VALUES (5,'md_buff_type_name_5');
INSERT INTO "buff_type" VALUES (6,'md_buff_type_name_6');
INSERT INTO "buff_type" VALUES (7,'md_buff_type_name_7');
INSERT INTO "buff_type" VALUES (8,'md_buff_type_name_8');
INSERT INTO "buff_type" VALUES (9,'md_buff_type_name_9');
INSERT INTO "buff_type" VALUES (10,'md_buff_type_name_10');
INSERT INTO "buff_type" VALUES (11,'md_buff_type_name_11');
INSERT INTO "buff_type" VALUES (12,'md_buff_type_name_12');
INSERT INTO "buff_type" VALUES (13,'md_buff_type_name_13');
INSERT INTO "buff_type" VALUES (14,'md_buff_type_name_14');
INSERT INTO "buff_type" VALUES (15,'md_buff_type_name_15');
INSERT INTO "buff_type" VALUES (16,'md_buff_type_name_16');
INSERT INTO "buff_type" VALUES (17,'md_buff_type_name_17');
INSERT INTO "buff_type" VALUES (18,'md_buff_type_name_18');
INSERT INTO "buff_type" VALUES (19,'md_buff_type_name_19');
INSERT INTO "buff_type" VALUES (20,'md_buff_type_name_20');
INSERT INTO "buff_type" VALUES (21,'md_buff_type_name_21');
INSERT INTO "buff_type" VALUES (22,'md_buff_type_name_22');
INSERT INTO "buff_type" VALUES (23,'md_buff_type_name_23');
INSERT INTO "buff_type" VALUES (24,'md_buff_type_name_24');
INSERT INTO "sleep_sounds" VALUES (1,'md_sleep_sounds_name_alarm_1',1,'se_wake_up_alarm',1);
INSERT INTO "sleep_sounds" VALUES (2,'md_sleep_sounds_name_alarm_2',2,'se_wake_up_pikachu',1);
INSERT INTO "sleep_sounds" VALUES (3,'md_sleep_sounds_name_bgm_1',1001,'bgm_before_sleep02',2);
INSERT INTO "sleep_sounds" VALUES (4,'md_sleep_sounds_name_bgm_2',1002,'bgm_before_sleep_pikachu01',2);
COMMIT;
