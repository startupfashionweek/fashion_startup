class Subscriber < ActiveRecord::Base
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates_uniqueness_of :email
  validates_presence_of :email
end
