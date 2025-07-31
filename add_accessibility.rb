#! /usr/bin/env ruby

Dir["**/*.html"].each do |html_file|
 contents = File.read(html_file)
 contents.gsub!('<p style="font-family: helvetica,arial,sans-serif;"><a href="https://www.nasa.gov/about/highlights/HP_Privacy.html" target="_blank">Privacy Act Statement</a> </p>', '<p style="font-family: helvetica,arial,sans-serif;"><a href="https://www.nasa.gov/about/highlights/HP_Privacy.html" target="_blank">Privacy Act Statement</a> </p>
<p style="font-family: helvetica,arial,sans-serif;"><a href="https://www.nasa.gov/accessibility" target="_blank">Accessibility Statement</a> </p>')
 File.open(html_file,'w'){ |f| f.puts contents }
end
