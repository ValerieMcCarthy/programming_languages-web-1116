require 'pry'

def reformat_languages(languages) 
  reformat_hash = {}
  languages.each do |style, style_hash|
  		style_hash.each do |lang, lang_hash|
  		
  			lang_hash.each do |type, type_result|
  				if reformat_hash[lang].nil?
  					reformat_hash[lang] = {}
  				end
  				reformat_hash[lang][:style] ||= []
  				reformat_hash[lang][:style] << style
  				reformat_hash[lang][:type] = type_result
  			end
  		end
  	end
  	reformat_hash
end
