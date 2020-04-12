require 'yaml'
require 'pry'

def load_library (path)
  library = YAML.load_file(path)
  new_hash = {}
  library.each do |key, value|
    if !library[key]
      library[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end
end
