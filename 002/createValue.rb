# report-editorの値のところに入れる文字列を作成
# 第一引数　先頭に入れたい文字列
# 第二引数　0-9を何回分結合させたいか
# 
# ruby createValue.rb 住所又は居所 3
# ↑のように引数付きで実行する

tmpOutputValue = ""
for num in 0..9 do #0~9まで
    strValue = num.to_s #数字を文字列に変換
    tmpOutputValue = tmpOutputValue + strValue.tr("0-9","０-９") #半角を全角に変換
end

countArgsLength = ARGV[0].to_s.length #文字列の長さを数える
multiArgs = tmpOutputValue * ARGV[1].to_i
multiArgsLength = multiArgs.length
outputValue = multiArgs[countArgsLength, multiArgsLength] #文字列の長さ分、全角数字を削る （例：氏名３４５６７８９０１２３・・・のようにしたい）
puts ARGV[0].to_s + outputValue #コンソール出力する
