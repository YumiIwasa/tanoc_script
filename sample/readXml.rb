require 'rexml/document'

doc = REXML::Document.new(File.new('sample.xml'));
puts doc