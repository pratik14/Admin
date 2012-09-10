ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        h3 "Welcome to Dhanlaxmi Admin."
      end
    end

    # Here is an example of a simple dashboard with columns and panels.

    columns do
      column do
        panel "Recent tiles added" do
          ul do
            Tile.all.map do |tile|
              li link_to(tile.name, admin_tile_path(tile))
            end
          end
        end
      end

      column do
        panel "Recent Orders" do
          ul do
            Order.all.map do |order|
              li link_to(order.tile.name, admin_order_path(order))
            end
          end
        end
      end
      
      column do
        panel "Recent Plumber added" do
          ul do
            Plumber.all.map do |plumber|
              li link_to(plumber.first_name, admin_plumber_path(plumber))
            end
          end
        end
      end

    end
  end 
end
