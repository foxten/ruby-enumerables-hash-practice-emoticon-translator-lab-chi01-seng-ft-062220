# require modules here
require 'pry'
require 'yaml'
def load_library(file)
emoticons = YAML.load_file(file)
dictionary ={}
emoticons.each do |key, second_level|
  dictionary[key] = {}
  dictionary[key][:english] = second_level[0]
  dictionary[key][:japanese] = second_level[1]
end
dictionary
end

def get_japanese_emoticon()
  # code goes here
  
end

def get_english_meaning(file, emoticon)
  # code goes here
  found = []
  dictionary = load_library(file)
    dictionary.each do |key, second_level|
      if second_level.find do |emoticon|
        emoticon == dictionary[key][:japanese]
          return key
        end
      end
    end
end