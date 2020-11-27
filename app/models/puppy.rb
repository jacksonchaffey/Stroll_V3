class Puppy < ApplicationRecord
    belongs_to :user
    has_one_attached :dogphoto
    validates :dogphoto, :presence => true
end
