class ActorSerializer < ActiveModel::Serializer
  attributes :id, :login, :avatar_url, :gravatar_id, :url
end
