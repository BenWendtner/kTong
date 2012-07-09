# encoding: utf-8

# Delete all items from the database
User.delete_all
Product.delete_all
CartItem.delete_all

# Create users
User.create(id: 1, email: 'test1@test.com', password: '123test', password_confirmation: '123test', firstname: 'sebi', lastname: 'pöll', address: 'hinsenkampplatz 1', location: 'linz', postalcode: '4040')
User.create(id: 2, email: 'test2@test.com', password: '123test', password_confirmation: '123test', firstname: 'sebi', lastname: 'pöll', address: 'hinsenkampplatz 1', location: 'linz', postalcode: '4040')

Product.create(id: 1, name: 'Universalkarton', color: 'rot')
Product.create(id: 2, name: 'Universalkarton', color: 'blau')
Product.create(id: 3, name: 'Bücherkarton', color: 'gelb')

CartItem.create(user_id: 1, product_id: 1, amount: 2)
CartItem.create(user_id: 1, product_id: 2, amount: 5)
CartItem.create(user_id: 1, product_id: 3, amount: 4)