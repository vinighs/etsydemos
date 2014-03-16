class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "noImage.png"
validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'
end
