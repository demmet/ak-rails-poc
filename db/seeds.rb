# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'bcrypt'
salt = BCrypt::Engine.generate_salt
password = 'admin123'
encrypted_password = BCrypt::Engine.hash_secret(password, salt)

User.create(username: 'usuario', 
            email: 'usuario@akiyama.com.br',
            encrypted_password: encrypted_password,
            salt: salt)