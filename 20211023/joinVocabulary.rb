# vocabularyの数だけif文を作成するスクリプト

textReadfile = "vocabulary.txt"
textWritefile = "writeVocabulary.txt"

textread = File.read(textReadfile)

File.open(textWritefile, "w") do |f|
    textread.each_line do |line|
        f.puts 'if vocabulary.include?("' + line.chomp + '")'
        f.puts '    puts name + ' + "'" + ': ' + "'" + ' + vocabulary'
        f.puts 'end'
        f.puts ''
    end
end