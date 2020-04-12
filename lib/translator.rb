require 'yaml'
require 'pry'

def load_library (path)
  library = YAML.load_file(path)
  new_hash = {}
  library.each do |key, value|
      new_hash[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
    new_hash
  end

def get_english_meaning (path, emoticon)
  library = YAML.load_file(path)
  library.each do |key, value|
    binding.pry
    if emoticon == value[1]
      return key[0]
    else
      return "Apology"
    end
  end
end
