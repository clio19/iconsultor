class Skill < ActiveRecord::Base

     belongs_to :user


validates :scale, :inclusion => { :in => 0..5 ,  :message => " must be within 0-5"}, :presence => { :message => " Insert please" }

end
