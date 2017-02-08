class User < ActiveRecord::Base
  has_many :todos

  validates :username, { presence: true, uniqueness: true }
end
