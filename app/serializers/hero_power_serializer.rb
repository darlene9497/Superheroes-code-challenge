class HeroPowerSerializer < ActiveModel::Serializer
  has_one :power
  attributes :id, :strength, :hero_id, :power_id
end
