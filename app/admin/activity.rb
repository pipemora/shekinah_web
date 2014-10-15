ActiveAdmin.register Activity do



permit_params [:name, :description,:mes,:dia] 

  form do |f|

      f.inputs "Activity" do
        f.input :name
        f.input :description
        f.input :mes
        f.input :dia

      end
      f.actions
    end

end



  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end



