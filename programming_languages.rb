require 'pry'


def reformat_languages(languages)
  new_hash = {} #:language => {:type => , :style => }
    #new_hash[:language] = {type: " ", style:" "}
      languages.each do |language_style, language_hash|
        language_hash.each do |type_name, type_value|
          #binding.pry
          new_hash[type_name][:type] = []

            new_hash[type_name][:type] << language_style

          end
        end
    new_hash
  end


#you have to iterate  through the old hash and reformat it to  a new hash
#-- build a new hash that keys = :languages values => {:type => and :style => }
