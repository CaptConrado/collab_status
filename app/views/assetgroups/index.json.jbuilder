json.array!(@assetgroups) do |assetgroup|
  json.extract! assetgroup, :id, :guid, :recipient_id, :custom_id
  json.url assetgroup_url(assetgroup, format: :json)
end
