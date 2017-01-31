require "pry"
require "pry-nav"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    languages[style].each do |language_name, value_hash|
      if new_hash[language_name] == nil
        new_hash[language_name] = value_hash
        new_hash[language_name][:style] = [style]
      else
        new_hash[language_name][:style] << style
      end
    end
  end
  new_hash
end

#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }
