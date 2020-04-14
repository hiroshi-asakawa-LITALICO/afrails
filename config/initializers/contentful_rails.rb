# spaceはこちらが読み込まれる
ContentfulRails.configure do |config|
  config.access_token         = ENV['CTF_CDA_ACCESS_TOKEN'] # Required
  config.preview_access_token = ENV['CTF_CPA_ACCESS_TOKEN'] # Optional - required if you want to use the preview API
  config.management_token     = ENV['CTF_CM_ACCESS_TOKEN'] # Optional - required if you want to update or create content
  config.space                = ENV['CTF_SPACE_ID'] # Required
end
