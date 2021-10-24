# report-editorの値のところに入れる文字列を作成
# 第一引数　先頭に入れたい文字列
# 第二引数　0-9を何回分結合させたいか

str2 = ""
for num in 0..9 do #0~9まで
    str = num.to_s #数字を文字列に変換
    str2 = str2 + str.tr("0-9","０-９") #半角を全角に変換
end

i = ARGV[0].to_s.length #文字列の長さを数える
k = str2.length
str3 = str2 * ARGV[1].to_i
l = str3.length
str4 = str3[i, l] #文字列の長さ分、全角数字を削る （例：氏名３４５６７８９０１２３・・・のようにしたい）
puts ARGV[0].to_s + str4 #コンソール出力する
