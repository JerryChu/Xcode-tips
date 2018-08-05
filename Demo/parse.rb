require 'rexml/document'
include REXML  

file = File.new('cpd-output.xml')
doc = Document.new(file)
root = doc.root

root.each_element('duplication') { |item| 
	duplicatedFiles = []
	item.each_element('file') { |file|
		duplicatedFiles.push(file)
	}
	
	item.each_element('file') { |file|
		duplicatedString = duplicatedFiles.select{|e| e != file}.map {|e| "#{e.attributes['path'].split('/').last}:#{e.attributes['line']}"}.join(', ')
		puts "#{file.attributes['path']}:#{file.attributes['line']}:1: warning: #{item.attributes['lines']} copy-pasted lines from: #{duplicatedString}"
	}	
}
