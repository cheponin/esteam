# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

groups = Group.create([{ name: 'UWT Coders', description: 'A group of girl coders from UWT.' },
{ name: 'UX Ladies', description: 'We care about the user experience!' }, 
{ name: 'Java Drinkers', description: 'Java developers.' }])

users = User.create([{ firstname: 'Hilary', lastname: 'Clinton'}])
