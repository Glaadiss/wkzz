class Team < ActiveRecord::Base

  has_many :userteams
  has_many :players, through: :userteams


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "150x150>", :banner => "600x200" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :name, :avatar, info:   "- Dopisz"

end
