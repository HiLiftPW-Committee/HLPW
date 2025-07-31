#! /usr/bin/env ruby

Dir["**/*.html"].each do |html_file|
 contents = File.read(html_file)
 contents.gsub!('http://www.nasa.gov/centers/langley/home/privacy.html', 'https://www.nasa.gov/about/highlights/HP_Privacy.html')
 File.open(html_file,'w'){ |f| f.puts contents }
end
