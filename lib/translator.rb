require 'yaml'
require 'pry'

def load_library (path)
  yaml = YAML.load_file(path)
  new_hash = {
    key: => {english: =>},
    key2: => {japanese: =>}
}
end
