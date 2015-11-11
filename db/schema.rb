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

ActiveRecord::Schema.define(version: 20151104201001) do

  create_table "autors", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nacionalidad"
    t.integer  "genero_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "autors", ["genero_id"], name: "index_autors_on_genero_id"

  create_table "generos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectors", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "oficina"
    t.integer  "libro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lectors", ["libro_id"], name: "index_lectors_on_libro_id"

  create_table "libros", force: true do |t|
    t.string   "nombre"
    t.string   "idioma"
    t.integer  "genero_id"
    t.integer  "autor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "libros", ["autor_id"], name: "index_libros_on_autor_id"
  add_index "libros", ["genero_id"], name: "index_libros_on_genero_id"

  create_table "prestamos", force: true do |t|
    t.date     "fecha_de_prestamo"
    t.integer  "libro_id"
    t.integer  "lector_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prestamos", ["lector_id"], name: "index_prestamos_on_lector_id"
  add_index "prestamos", ["libro_id"], name: "index_prestamos_on_libro_id"

  create_table "usuarios", force: true do |t|
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
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
