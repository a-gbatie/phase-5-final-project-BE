class User < ApplicationRecord
    has_many :accepted_media
    has_many :media, through: :accepted_media
    has_secure_password
end
