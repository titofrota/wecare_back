# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Position.create!(title: 'Change Maker')
Position.create!(title: 'CEO')
Position.create!(title: 'Developer')

Pronoun.create!(title: 'Ela')
Pronoun.create!(title: 'Ele')
Pronoun.create!(title: 'Elu')

Value.create!(title: 'Ser parceir@')
Value.create!(title: 'Ser protagonista')
Value.create!(title: 'Ser ousad@')

User.create!(name: 'Ítalo Frota', email: 'italo@gmail.com', position_id: '1', pronoun_id: '2')
User.create!(name: 'Caroline Oliveira', email: 'caroline@gmail.com', position_id: '1', pronoun_id: '1')
User.create!(name: 'Rafael Fernandes', email: 'rafael@gmail.com', position_id: '1', pronoun_id: '2')

Recognition.create!(sender_id: '1', receiver_id: '3', message: 'Rafa, muito obrigado por me considerar para a vaga de dev na WeCare! É muito bom sempre poder contar com você!', value_id: '1')
Recognition.create!(sender_id: '3', receiver_id: '2', message: 'Carol, você está trazendo muitas inovações no design da nossa solução!! Estou cada vez mais apaixonado por esse produto!', value_id: '2')
Recognition.create!(sender_id: '3', receiver_id: '1', message: 'Ítalo, parabéns! :)', value_id: '3')