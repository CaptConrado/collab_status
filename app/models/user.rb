class User < ActiveRecord::Base
  enum status: [ :paypal, :other ]
  has_many :channels
end
