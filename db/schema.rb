# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150722163627) do

  create_table "bars", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "cardapios", force: true do |t|
    t.float    "preco"
    t.string   "descricao"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "produto_id"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estabelecimentos_id"
  end

  add_index "cardapios", ["categoria_id"], name: "index_cardapios_on_categoria_id"
  add_index "cardapios", ["estabelecimentos_id"], name: "index_cardapios_on_estabelecimentos_id"
  add_index "cardapios", ["produto_id"], name: "index_cardapios_on_produto_id"

  create_table "categoria", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estabelecimentos", force: true do |t|
    t.integer  "cnpj"
    t.string   "razaosocial"
    t.string   "nomefantasia"
    t.string   "logradouro"
    t.integer  "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "fone1"
    t.string   "fone2"
    t.string   "fone3"
    t.time     "horaabertura"
    t.time     "horafechamento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "municipios_id"
    t.integer  "users_id"
    t.integer  "{:index=>true}_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "estabelecimentos", ["municipios_id"], name: "index_estabelecimentos_on_municipios_id"
  add_index "estabelecimentos", ["users_id"], name: "index_estabelecimentos_on_users_id"

  create_table "municipios", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ufs_id"
  end

  add_index "municipios", ["ufs_id"], name: "index_municipios_on_ufs_id"

  create_table "prato_tipicos", force: true do |t|
    t.integer  "produtos_id"
    t.integer  "municipios_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prato_tipicos", ["municipios_id"], name: "index_prato_tipicos_on_municipios_id"
  add_index "prato_tipicos", ["produtos_id"], name: "index_prato_tipicos_on_produtos_id"

  create_table "products", force: true do |t|
    t.string   "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categorias_id"
  end

  add_index "produtos", ["categorias_id"], name: "index_produtos_on_categorias_id"

  create_table "sales", force: true do |t|
    t.float    "price"
    t.integer  "product_id"
    t.integer  "bar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["bar_id"], name: "index_sales_on_bar_id"
  add_index "sales", ["product_id"], name: "index_sales_on_product_id"

  create_table "ufs", force: true do |t|
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role",                   default: 0
    t.integer  "user_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["user_id"], name: "index_users_on_user_id"

end
