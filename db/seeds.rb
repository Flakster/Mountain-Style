# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({name: 'User1', email: 'user1@mail.com', password: '123456'})
Category.create({name: 'Offgrid', priority: 1})
Category.create({name: 'Minimalist', priority: 2})
Category.create({name: 'Chalet', priority: 3})
Category.create({name: 'Landscape', priority: 4})
Category.create({name: 'Nature', priority: 5})
Article.create({title: 'Silence is a treasure', body: 'This is the text for the first article',image: 'default', author_id: 1})
Tag.create({article_id: 1, category_id: 5}) 
Vote.create({article_id: 1, user_id: 1})