# encoding: utf-8

# Delete all items from the database
User.delete_all
Product.delete_all
CartItem.delete_all

# Create users
User.create(id: 1, email: 'test1@test.com', password: '123test', password_confirmation: '123test', firstname: 'sebi', lastname: 'pöll', address: 'hinsenkampplatz 1', location: 'linz', postalcode: '4040')
User.create(id: 2, email: 'test2@test.com', password: '123test', password_confirmation: '123test', firstname: 'sebi', lastname: 'pöll', address: 'hinsenkampplatz 1', location: 'linz', postalcode: '4040')

# Create Categories
Category.create(id: 1, name: 'Kartonmöbel')
Category.create(id: 2, name: 'Sonstiges')

Category.create(id: 3, name: 'Universalkarton', parent_id: 1)
Category.create(id: 4, name: 'Bücherkarton', parent_id: 1)

Category.create(id: 5, name: 'Regalelement', parent_id: 2)
Category.create(id: 6, name: 'Fächer', parent_id: 2)
Category.create(id: 7, name: 'Deckel', parent_id: 2)
Category.create(id: 8, name: 'Sockel', parent_id: 2)

Category.create(id: 9, name: 'Regalelement', parent_id: 3)
Category.create(id: 10, name: 'Fächer', parent_id: 3)
Category.create(id: 11, name: 'Deckel', parent_id: 3)
Category.create(id: 12, name: 'Sockel', parent_id: 3)

# Create Products
Product.create(id: 1, name: 'Regalelement', color: 'Naturweiß', category_id: 5)
Product.create(id: 2, name: 'Regalelement', color: 'Möbelbraun', category_id: 5)
Product.create(id: 3, name: 'Fächer', color: 'Naturweiß', category_id: 6)
Product.create(id: 4, name: 'Fächer', color: 'Möbelbraun', category_id: 6)
Product.create(id: 5, name: 'Deckel', color: 'Naturweiß', category_id: 7)
Product.create(id: 6, name: 'Sockel', color: 'Naturweiß', category_id: 8)

Product.create(id: 7, name: 'Regalelement', color: 'Naturweiß', category_id: 9)
Product.create(id: 8, name: 'Regalelement', color: 'Möbelbraun', category_id: 9)
Product.create(id: 9, name: 'Fächer', color: 'Naturweiß', category_id: 10)
Product.create(id: 10, name: 'Fächer', color: 'Möbelbraun', category_id: 10)
Product.create(id: 11, name: 'Deckel', color: 'Naturweiß', category_id: 11)
Product.create(id: 12, name: 'Sockel', color: 'Naturweiß', category_id: 12)
