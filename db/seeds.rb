# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
User.create(name: 'Simao', email: 'simaoneves@gmail.com', password: 'pass1')
User.create(name: 'Joao', email: 'joaorodigues@gmail.com', password: 'pass2')
User.create(name: 'Jorema', email: 'joremasilva@gmail.com', password: 'pass3')

#Add some punch not punched back
Punch.create(user_id: 1, user_punched: 2, punched_back: false)
Punch.create(user_id: 1, user_punched: 3, punched_back: true)
