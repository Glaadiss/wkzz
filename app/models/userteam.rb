class Userteam < ActiveRecord::Base
  belongs_to :player
  belongs_to :team

end
