class Platform < ApplicationRecord
    has_many :media, dependent: :destroy
    has_many :user_platforms, dependent: :destroy
end
