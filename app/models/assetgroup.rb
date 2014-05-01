class Assetgroup < ActiveRecord::Base
  belongs_to :user
  has_many :payments, as: :payable
end
