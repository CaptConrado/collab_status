class User < ActiveRecord::Base
  enum status: [ :paypal, :other ]
end
