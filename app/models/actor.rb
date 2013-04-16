class Actor < ActiveRecord::Base
  attr_accessible :avatar_url, :gravatar_id, :login, :url
end
