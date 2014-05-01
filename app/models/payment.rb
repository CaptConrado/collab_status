class Payment < ActiveRecord::Base
  belongs_to :payable, polymorphic: true
  # belongs_to :channel
  # belongs_to :assetgroup
end
