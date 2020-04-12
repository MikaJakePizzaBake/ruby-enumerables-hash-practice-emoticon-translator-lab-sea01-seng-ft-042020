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
  library = load_library(path)
  library.each do |key, value|
    if emoticon == value[:japanese]
      return key
    end
    if !library.include?(emoticon)
          return "Sorry, that emoticon was not found"
        end
    end
  end
