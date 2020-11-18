class Puppy < ApplicationRecord
    belongs_to :user
    has_one_attached :dogphoto
end
