class MediumSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :is_movie, :image, :release_date, :network, :description, :starring, :seasons, :platform_id
end
