# Desc   : configuration functions 
# Author : snaiper

require 'yaml'

def configuration
    { 
      "version" => "1.0",
      "old_built_version" => $old_built_version 
    }
end

def read_configuration 
   begin
      userinfo_yml = YAML.load_file 'userconf.yml'

      $old_built_version = userinfo_yml['old_built_version'].strip.chomp
   rescue => e
      $old_built_version = "HEAD" 
   end
end

def write_configuration
    begin 
      File.open('userconf.yml', 'w') { |f| f.write(configuration().to_yaml) }
    rescue => e
        puts e
    end
end

