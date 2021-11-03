require 'rexml/document'

doc = REXML::Document.new(File.new('sample.xml'))

doc.elements.each('root/a/b') do |element| # 要素を取得する
    puts element.text
end

doc.elements.each('root/a') do |element| # 属性を取得する
    puts element.attributes
end