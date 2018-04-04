# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180404062544) do

  create_table "biographies", force: :cascade do |t|
    t.string "biography_street"
    t.string "biography_number"
    t.string "biography_colony"
    t.string "biography_municipality"
    t.string "biography_city"
    t.integer "biography_postal"
    t.string "biography_state"
    t.string "biography_country"
    t.string "civil_status"
    t.date "marriage_date"
    t.string "language"
    t.string "dialect"
    t.string "children_biological"
    t.string "children_adopted"
    t.string "dependants"
    t.string "education"
    t.string "education_field"
    t.string "religion"
    t.boolean "activist"
    t.boolean "journalist"
    t.boolean "migrant"
    t.boolean "criminal_affiliation"
    t.boolean "state_affiliation"
    t.string "range"
    t.string "occupation"
    t.string "position"
    t.string "occupation_street"
    t.string "occupation_number"
    t.string "occupation_colony"
    t.string "occupation_municipality"
    t.string "occupation_city"
    t.string "occupation_postal"
    t.string "occupation_state"
    t.string "occupation_country"
    t.boolean "drugs"
    t.boolean "alcohol"
    t.boolean "smoker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "identity_id"
  end

  create_table "events", force: :cascade do |t|
    t.date "event_date"
    t.time "event_time"
    t.string "event_street"
    t.string "event_street_number"
    t.string "event_colony"
    t.string "event_municipality"
    t.string "event_city"
    t.integer "event_postal"
    t.string "event_state"
    t.string "event_country"
    t.boolean "com_device"
    t.string "device_sn"
    t.string "device_IMEI"
    t.boolean "vehicule"
    t.string "vehicule_plate"
    t.string "vehicule_color"
    t.integer "vehicule_year"
    t.boolean "vehicule_found"
    t.string "possible_cause"
    t.string "context"
    t.string "act"
    t.string "abductor"
    t.boolean "violence"
    t.boolean "abduct_atribution"
    t.boolean "physical_consecuences"
    t.string "place_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "identity_id"
  end

  create_table "genetics", force: :cascade do |t|
    t.boolean "DNA_subject"
    t.string "DNA_s_b"
    t.date "DNA_s_b_date"
    t.string "DNA_s_b_ref"
    t.boolean "DNA_s_b_code"
    t.boolean "DNA_s_b_inst"
    t.boolean "DNA_s_s"
    t.boolean "DNA_s_s_date"
    t.boolean "DNA_s_s_ref"
    t.boolean "DNA_s_s_code"
    t.boolean "DNA_family"
    t.boolean "DNA_f_b"
    t.boolean "DNA_f_number_b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities", force: :cascade do |t|
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "second_name"
    t.string "first_last_name"
    t.string "first_second_name"
    t.date "birth_date"
    t.string "birth_country"
    t.string "birth_state"
    t.string "nationatily"
    t.string "alias"
    t.string "sex"
    t.string "gender"
    t.string "sexual_orientation"
    t.boolean "sexchange_surgery"
    t.boolean "amputation"
    t.boolean "chronic_disease"
    t.boolean "prosthesis"
    t.boolean "glasses"
    t.boolean "contact_lens"
    t.boolean "diopters"
    t.float "weight"
    t.float "height"
    t.string "skin_type"
    t.string "eye_color"
    t.string "hair_type"
    t.string "hair_color"
    t.string "facial_hair"
    t.boolean "body_hair"
    t.boolean "tattoos"
    t.boolean "piercings"
    t.boolean "facial_moles"
    t.boolean "facial_birth_marks"
    t.boolean "facial_scars"
    t.boolean "hands_moles"
    t.boolean "hands_birth_marks"
    t.boolean "hands_scars"
    t.boolean "physical_disabilities"
    t.boolean "mental_disabilities"
    t.boolean "mental_illness"
    t.boolean "sight_disabilities"
    t.boolean "ear_disabilities"
    t.boolean "ethnicity"
  end

  create_table "last_seens", force: :cascade do |t|
    t.date "ls_date"
    t.time "ls_time"
    t.string "ls_number"
    t.string "ls_colony"
    t.string "ls_municipality"
    t.string "ls_city"
    t.integer "ls_postal"
    t.string "ls_state"
    t.string "ls_country"
    t.boolean "clothes"
    t.string "clothes_top"
    t.string "clothes_top_color"
    t.string "clothes_bottom"
    t.string "clothes_bottom_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "identity_id"
  end

  create_table "meta_data", force: :cascade do |t|
    t.string "dataset_name"
    t.string "dataset_owner"
    t.string "dataset_owner_contact"
    t.string "dataset_url"
    t.datetime "dataset_date_imported"
    t.boolean "dataset_update_continously"
    t.datetime "dataset_last_update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "migrations", force: :cascade do |t|
    t.string "migration_status"
    t.string "migration_destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "identity_id"
  end

  create_table "perpetrators", force: :cascade do |t|
    t.boolean "attribution"
    t.boolean "legal_attribution"
    t.boolean "legal_figure"
    t.boolean "legal_order"
    t.string "criminal_attribution"
    t.string "criminal_figure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "identity_id"
  end

  create_table "reports", force: :cascade do |t|
    t.date "report_date"
    t.boolean "report_institution"
    t.string "report_media_url"
    t.string "report_media_reach"
    t.string "report_institution_name"
    t.string "report_institution_street"
    t.string "report_institution_number"
    t.string "report_institution_colony"
    t.string "report_institution_municipality"
    t.string "report_institution_state"
    t.string "report_institution_country"
    t.string "report_institution_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "editor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
