require 'YAML'

class Margaret
    
    def initialize
        @string_margaret = ARGV
    end

    # converting yaml data to hash
    # f is each line in file
    def write_to_file
        margaret_file = File.open("messages.yaml", "r+").each do |f|
            puts YAML::dump(@string_margaret)
        end
    end

    #Writing to file
    margaret_file.write(@string_margaret)
    def read_from_file
        puts YAML::load(margaret_file)
    end
end

margaret_object = Margaret.new
