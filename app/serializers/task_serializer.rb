class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :is_completed
end
