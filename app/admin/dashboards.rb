ActiveAdmin::Dashboards.build do

  section "Neue Bestellungen", :priority => 1 do
    table_for Order.complete.order('id desc').limit(10) do
      column("State") {|order| status_tag(order.state) }
      column("Customer"){|order| link_to(order.user.email, admin_customer_path(order.user)) }
      column("Total") {|order| number_to_currency order.total_price }
    end
  end
  
end
