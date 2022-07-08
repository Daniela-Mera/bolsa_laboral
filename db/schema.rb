# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_08_024352) do
  create_table "asignacions", force: :cascade do |t|
    t.integer "oportunidad_id", null: false
    t.integer "postulante_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oportunidad_id"], name: "index_asignacions_on_oportunidad_id"
    t.index ["postulante_id"], name: "index_asignacions_on_postulante_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "rut", default: "", null: false
    t.string "razon_social", default: "", null: false
    t.string "rep_legal", default: "", null: false
    t.integer "telefono", null: false
    t.string "calle", default: "", null: false
    t.integer "numero", null: false
    t.string "ciudad", default: "", null: false
    t.integer "regionch_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_empresas_on_email", unique: true
    t.index ["regionch_id"], name: "index_empresas_on_regionch_id"
    t.index ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true
    t.index ["rut"], name: "index_empresas_on_rut", unique: true
  end

  create_table "oportunidads", force: :cascade do |t|
    t.string "cargo", default: "", null: false
    t.string "descripcion", default: "", null: false
    t.string "vacantes", default: "", null: false
    t.integer "sueldo", null: false
    t.date "fecha_inicio", null: false
    t.integer "tipo_id", null: false
    t.integer "regionch_id", null: false
    t.integer "empresa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_oportunidads_on_empresa_id"
    t.index ["regionch_id"], name: "index_oportunidads_on_regionch_id"
    t.index ["tipo_id"], name: "index_oportunidads_on_tipo_id"
  end

  create_table "postulantes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "rut", default: "", null: false
    t.string "nombre", default: "", null: false
    t.string "ap_paterno", default: "", null: false
    t.string "ap_materno", default: "", null: false
    t.date "nacimiento", null: false
    t.integer "genero_id", null: false
    t.integer "telefono", null: false
    t.string "cv", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_postulantes_on_email", unique: true
    t.index ["genero_id"], name: "index_postulantes_on_genero_id"
    t.index ["reset_password_token"], name: "index_postulantes_on_reset_password_token", unique: true
    t.index ["rut"], name: "index_postulantes_on_rut", unique: true
  end

  add_foreign_key "asignacions", "oportunidads"
  add_foreign_key "asignacions", "postulantes"
  add_foreign_key "empresas", "regionches"
  add_foreign_key "oportunidads", "empresas"
  add_foreign_key "oportunidads", "regionches"
  add_foreign_key "oportunidads", "tipos"
  add_foreign_key "postulantes", "generos"
end
