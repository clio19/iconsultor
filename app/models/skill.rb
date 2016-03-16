class Skill < ActiveRecord::Base

     belongs_to :user

 has_many :skills,        :dependent => :destroy

 validates :name,:email, :presence => true

end
