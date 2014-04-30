class Assetgroup < ActiveRecord::Base
  has_many :payments, as: :payable
end
