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

ActiveRecord::Schema.define(version: 2019_05_29_181748) do

  create_table "animals", force: :cascade do |t|
    t.string "nome"
    t.integer "cliente_id"
    t.string "especie"
    t.string "raca"
    t.date "nascimento"
    t.string "criador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_animals_on_cliente_id"
  end

  create_table "atendimentos", force: :cascade do |t|
    t.integer "animal_id"
    t.string "observacao"
    t.date "data"
    t.string "criador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_atendimentos_on_animal_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.string "criador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
