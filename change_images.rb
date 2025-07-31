#! /usr/bin/env ruby

Dir["**/*.html"].each do |html_file|
 contents = File.read(html_file)
 contents.gsub!('../Images', 'Images')
 File.open(html_file,'w'){ |f| f.puts contents }
end
