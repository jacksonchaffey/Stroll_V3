class Puppy < ApplicationRecord
    belongs_to :user
    #Specifies that a puppy has a photo attached and must have one to exist.
    has_one_attached :dogphoto
    validates :dogphoto, :presence => true
end
