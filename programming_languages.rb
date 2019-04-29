require 'pry'


def reformat_languages(languages)
  new_hash = {} #:language => {:type => , :style => }
    #new_hash[:language] = {type: " ", style:" "}
      languages.each do |oo_or_functional, language_hash|
        language_hash.each do |language, attr_value|   #:ruby, {:type => "interpreted"}
          attr_value.each do |attribute, str_value| # go into {:type => "interpreted"} & isolate type & "interpreter"
            if new_hash[language].nil? #see if new_hash with language is nil (which it is bc its a new hash)
              new_hash[language] = {} #then set it to an empty hash -- inside the block like you set it outside
                  end
                new_hash[language][:style] ||= []
                new_hash[language][:style] <<  oo_or_functional
              if new_hash[language][attribute].nil?
              new_hash[language][attribute] = str_value
            end
          end
        end
      end
    new_hash
  end


#you have to iterate  through the old hash and reformat it to  a new hash
#-- build a new hash that keys = :languages values => {:type => and :style => }
