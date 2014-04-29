class VineImporter 
  def self.import_talent

		file = "db/signed_vine.csv"

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      User.create(
        name: row[0]
      )
    end
  end
end



  # def self.import file 

  #   CSV.foreach(file.path, :headers => true, :encoding => 'utf-8') do |row|
      
  #     vid_id  = Video.find_by(uid: row[0]).nil? ? 0 : Video.find_by(uid: row[0]).id
  #     prod_id = Asset.find_by(auid: row[2]).nil? ? 0 : Asset.find_by(auid: row[2]).producer_id

  #     Claim.create(
  #       uid:         row[0],
  #       cuid:        row[1],
  #       auid:        row[2],
  #       video_id:    vid_id,
  #       producer_id: prod_id
  #     )
  #   end
  # end


# def self.import(file)
#     CSV.foreach(file.path, :headers => true, :encoding => 'utf-8') do |row|
#       money = row[2].gsub(/\,/,"").gsub(/\$/,"").gsub(/ /,"").to_f
     
#       Video.create(
#         title:           row[0],
#         uid:             row[1],
#         likes:           row[29],
#         dislikes:        row[32],
#         duration:        row[7],
#         revenue:         money,
#       )
#     end
#     dedupe
#   end

#   def self.dedupe
#     # find all models and group them on keys which should be common
#     grouped = all.group_by{|model| [model.uid] }
#     grouped.values.each do |duplicates|
#       first_one = duplicates.pop # pop for last one
#       duplicates.each{|double| double.destroy} # duplicates can now be destroyed
#     end
#   end
