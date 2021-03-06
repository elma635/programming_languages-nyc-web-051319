require 'pry'


def reformat_languages(languages)
  new_hash = {} 
      languages.each do |oo_or_functional, language_hash|
        language_hash.each do |language, attr_value|   #:ruby, {:type => "interpreted"}
          attr_value.each do |attribute, str_value| # go into {:type => "interpreted"} & isolate type & "interpreter"
            if new_hash[language].nil? #see if new_hash with language is nil (which it is bc its a new hash)
              new_hash[language] = {} #then set it to an empty hash -- inside the block like you set it outside
                  end
                new_hash[language][:style] ||= [] #now call whatevers inside the hash, directly call :style key & use pipes as | | = double pipe = reps: “OR, to
                #set it equal to an empty array since it's not assigned a value in the new_hash like it is in the old
                new_hash[language][:style] <<  oo_or_functional #added oo key from first level of languages hash to this key
              if new_hash[language][attribute].nil?     #if :ruby language key doesn't have a :type key nested within it, bc attribute is parameter set to :type
              new_hash[language][attribute] = str_value #set that nil :type key to it's string value which is interpreter in one case
            end
          end
        end
      end
    new_hash
  end


#you have to iterate  through the old hash and reformat it to  a new hash
#-- build a new hash that keys = :languages values => {:type => and :style => }
