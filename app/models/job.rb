class Job < ActiveRecord::Base
    validates :title,:description, :presence => true
    belongs_to :company
     has_many :comments

     scope :most_recent, -> { where(:prime => true).order("created_at DESC") }
end