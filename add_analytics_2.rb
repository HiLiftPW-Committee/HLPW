#! /usr/bin/env ruby

Dir["**/*.html"].each do |html_file|
 contents = File.read(html_file)
 contents.gsub!('</HEAD>', '<script async type="text/javascript" src="https://dap.digitalgov.gov/Universal-Federated-Analytics-Min.js?agency=NASA&amp;subagency=LARC" id="_fed_an_ua_tag"></script>
</HEAD>')
 File.open(html_file,'w'){ |f| f.puts contents }
end
