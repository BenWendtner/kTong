# encoding: utf-8

# Delete all items from the database
User.delete_all
Product.delete_all
Category.delete_all
Picture.delete_all

# Create users
User.create(id: 1, email: 'test1@test.com', password: '123test', password_confirmation: '123test', firstname: 'sebi', lastname: 'pöll', address: 'hinsenkampplatz 1', location: 'linz', postalcode: '4040')
User.create(id: 2, email: 'test2@test.com', password: '123test', password_confirmation: '123test', firstname: 'sebi', lastname: 'pöll', address: 'hinsenkampplatz 1', location: 'linz', postalcode: '4040')

# Create Categories
Category.create(id: 1, name: 'Kartonmöbel')

Category.create(id: 2, name: 'Universalkarton', parent_id: 1)
Category.create(id: 3, name: 'Bücherkarton', parent_id: 1)

Category.create(id: 4, name: 'Regalelement', parent_id: 2)
Category.create(id: 5, name: 'Fächer', parent_id: 2)
Category.create(id: 6, name: 'Deckel', parent_id: 2)
Category.create(id: 7, name: 'Sockel', parent_id: 2)

Category.create(id: 8, name: 'Regalelement', parent_id: 3)
Category.create(id: 9, name: 'Fächer', parent_id: 3)
Category.create(id: 10, name: 'Deckel', parent_id: 3)
Category.create(id: 11, name: 'Sockel', parent_id: 3)

# Create Products
Product.create(id: 1, name: 'Regalelement', color: 'Naturweiß', category_id: 4)
Product.create(id: 2, name: 'Regalelement', color: 'Möbelbraun', category_id: 4)
Product.create(id: 3, name: 'Fächer', color: 'Naturweiß', category_id: 5)
Product.create(id: 4, name: 'Fächer', color: 'Möbelbraun', category_id: 5)
Product.create(id: 5, name: 'Deckel', color: 'Naturweiß', category_id: 6)
Product.create(id: 6, name: 'Sockel', color: 'Naturweiß', category_id: 7)

Product.create(id: 7, name: 'Regalelement', color: 'Naturweiß', category_id: 8)
Product.create(id: 8, name: 'Regalelement', color: 'Möbelbraun', category_id: 8)
Product.create(id: 9, name: 'Fächer', color: 'Naturweiß', category_id: 9)
Product.create(id: 10, name: 'Fächer', color: 'Möbelbraun', category_id: 9)
Product.create(id: 11, name: 'Deckel', color: 'Naturweiß', category_id: 10)
Product.create(id: 12, name: 'Sockel', color: 'Naturweiß', category_id: 11)

# Create Pictures
picture = Picture.new(id: 1, position: 1, product_id: 1)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Unv.jpg'))
picture.save!

picture = Picture.new(id: 2, position: 1, product_id: 2)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Unv.jpg'))
picture.save!

picture = Picture.new(id: 3, position: 1, product_id: 3)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Faecher.jpg'))
picture.save!

picture = Picture.new(id: 4, position: 1, product_id: 4)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Faecher.jpg'))
picture.save!

picture = Picture.new(id: 5, position: 1, product_id: 5)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Deckel.jpg'))
picture.save!

picture = Picture.new(id: 6, position: 1, product_id: 6)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Sockel.jpg'))
picture.save!

picture = Picture.new(id: 7, position: 1, product_id: 7)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Bue_120630_Ansicht_Bild_Bue.jpg'))
picture.save!

picture = Picture.new(id: 8, position: 1, product_id: 8)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Bue_120630_Ansicht_Bild_Bue.jpg'))
picture.save!

picture = Picture.new(id: 9, position: 1, product_id: 9)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Bue_120630_Ansicht_Bild_Fach.jpg'))
picture.save!

picture = Picture.new(id: 10, position: 1, product_id: 10)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Bue_120630_Ansicht_Bild_Fach.jpg'))
picture.save!

picture = Picture.new(id: 11, position: 1, product_id: 11)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Bue_120630_Ansicht_Deckel.jpg'))
picture.save!

picture = Picture.new(id: 12, position: 1, product_id: 12)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Bue_120630_Ansicht_Sockel.jpg'))
picture.save!

# Multipictures
picture = Picture.new(id: 13, position: 2, product_id: 1)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Faecher.jpg'))
picture.save!

picture = Picture.new(id: 14, position: 3, product_id: 1)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Deckel.jpg'))
picture.save!

picture = Picture.new(id: 15, position: 4, product_id: 1)
picture.image = File.open(File.join(Rails.root, '/app/assets/images/products/Unv_120630_Ansicht_Bild_Sockel.jpg'))
picture.save!