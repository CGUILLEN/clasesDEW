# == Schema Information
#
# Table name: places
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Place < ActiveRecord::Base

  has_attached_file :image, 
                styles: { medium: "280x160" }, 
                default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/    
    
end
