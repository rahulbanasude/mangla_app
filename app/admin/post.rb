ActiveAdmin.register Post do

permit_params :title, :body, :image

form multipart: true do |f|

	f.inputs 'post' do
    f.input :image, as: :file
    f.input :title, as: :string
    f.input :body,  as: :ckeditor, :input_html => { :ckeditor => {:toolbar => 'Full'} }

    
  end
  f.actions
  end


end
