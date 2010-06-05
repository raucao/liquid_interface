%w{fixes extensions}.each do |folder|

  Dir[File.join(Rails.root, 'lib', folder, '**/*.rb')].each do |file|
    require file
  end
  
end