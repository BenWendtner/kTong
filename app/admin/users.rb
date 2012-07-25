ActiveAdmin.register User do
  index do
    column 'Email-Adresse', :email
  end
  
  filter :email, :label => 'Email Adresse'
end
