class User < ActiveRecord::Base
  has_many :ratings
  has_many :campsites, through: :ratings
end
