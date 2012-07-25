ActiveAdmin.register Product do
  index do
    column 'Kategorie', :category do |product|
     product.category.parent.parent.name + ' / ' + product.category.parent.name + ' / ' + product.name
    end
    column 'Farbe', :color
    column 'Preis', :price
    default_actions
  end
end
