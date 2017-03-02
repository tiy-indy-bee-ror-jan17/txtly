class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :caption
  has_one :user
end
