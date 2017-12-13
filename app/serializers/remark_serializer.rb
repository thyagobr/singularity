class RemarkSerializer < ActiveModel::Serializer
  attributes :id, :references, :text
  has_one :user
end
