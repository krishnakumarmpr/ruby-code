class DataFile < ActiveRecord::Base
  # attr_accessible :title, :body
def self.save(upload)
name=upload['datafile'].original_filename
directory="/home/krishna/"
path=File.join(directory,name)
File.open(path, "wp") { |f| f.write(upload['datafile'].read)}
  end
end
