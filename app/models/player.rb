class Player < ActiveRecord::Base
  has_many :userteams
  has_many :teams, through: :userteams

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "http://forum-kulturystyka.pl/public/style_images/FK/profile/default_large.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :name, :surname,  :age, :country,  city:   "- Dopisz"


end
