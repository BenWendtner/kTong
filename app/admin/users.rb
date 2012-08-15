ActiveAdmin.register User do
  index do
    column 'Email-Adresse', :email
    column 'Registriert seit', :created_at
    
    column 'Anzahl der Bestellungen', :orders.size
    
  end
  
  filter :email, :label => 'Email Adresse'
end
