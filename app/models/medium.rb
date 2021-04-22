class Medium < ApplicationRecord
    belongs_to :platform
    has_many :accepted_media, dependent: :destroy
end
