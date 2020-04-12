require 'yaml'
require 'pry'

def load_library (path)
  yaml = YAML.load_file(path)
end
