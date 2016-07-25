ActiveAdmin.register Gallery do

form multipart: true do |f|

	f.inputs 'gallery' do
    f.input :image, as: :file
    f.input :title, as: :string
    f.input :category

    
  end
  f.actions
  end

  show do |ad|
 	attributes_table do
    row :title
    row :category
   	row :thumbnail do
      image_tag(ad.image.url(:medium))
  	 end
    # Will display the image on show object page
 	 end


	end


	index as: :grid do |gallery|
	link_to	image_tag(gallery.image.url(:medium)),admin_gallery_path(gallery)
	end
	
  permit_params :image, :title, :category_id
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
