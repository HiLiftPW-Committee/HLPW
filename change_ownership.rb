#! /usr/bin/env ruby

Dir["**/*.html"].each do |html_file|
 contents = File.read(html_file)
 contents.gsub!('<a href="mailto:c.l.rumsey@nasa.gov">Christopher Rumsey</a>', '<a href="mailto:li.wang@nasa.gov">Li Wang</a>')
 File.open(html_file,'w'){ |f| f.puts contents }
end
