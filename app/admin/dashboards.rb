ActiveAdmin::Dashboards.build do

  section "Neue Bestellungen", :priority => 1 do
    table_for Order.where('state = ?', 'submitted') do
      column("Customer"){|order| order.user.email }
    end
  end
  
end
