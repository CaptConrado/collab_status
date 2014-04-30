class Channel < ActiveRecord::Base
  belongs_to :user
  has_many :payments, as: :payable
  
  def self.import(file)
    CSV.foreach(file.path, :headers => true, :encoding => 'utf-8') do |row|
      # windows-1251:
      # if row[1]. 'INVALID'
      #   next
      # else
        cleaner = row[0].gsub(/^UC/,"")
          Channel.create(
          cuid:  cleaner,
          title: row[1],
          
        )
      # end
    end
  end
end
