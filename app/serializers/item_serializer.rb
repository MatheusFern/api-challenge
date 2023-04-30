class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc, :is_active
end
