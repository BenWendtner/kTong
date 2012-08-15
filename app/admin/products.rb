#encoding: utf-8

ActiveAdmin.register Product do
  index do
    column 'Kategorie und Name', :category do |product|
      product.category.parent.parent.name + ' / ' + product.category.parent.name + ' / ' + product.name
    end
    column 'Farbe', :color
    column 'Preis', :price
    default_actions
  end
  
  filter :category, :label => 'Hauptkategorie', :collection => proc { Category.where('parent_id IS NULL') }
  filter :category, :label => 'Unterkategorie', :collection => proc { Category.where('parent_id IS NOT NULL') }
  filter :name, :label => 'Produktname'
  filter :color, :as => :select, :label => 'Farbe', :collection => ['Naturweiß','Möbelbraun']
end
