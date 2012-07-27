#!/usr/bin/ruby
# -*- coding: utf-8 -*-

# 問題
# https://github.com/paperboy-sqale/sqale-app/wiki/Readingtechnicalbooks0x01.part3

# 1.配列の各要素を二倍した配列を返す
a = [1,2,3,4,5]
a.collect { |i| i * 2 }

# 2.配列の要素をすべて足し算した結果を返す
sum = 0
a = [1,2,3,4,5]
a.each {|i| sum += i }
sum

# 3.要素に連番を振る
# ヒント: この問題は irb で上記の実行例と同じように印字できれば良い。返り値は無視。

words = ['paperboy', 'lolipop', 'muumuu-domain', '30days album', 'sqale', 'osaipo', 'heteml']

words.each do |i|  puts num.to_s + ": " + i
  num += 1  
end


# 4.偶数の要素だけ返す

a = [1,2,3,4,5]

a.reject{ |i| i%2 == 1 }
a.delete_if{ |i| i%2 == 1 }


# 5.nil 以外の要素だけを返す (最低二通りの解を考えてみよう)
a = [1, nil, 2, 3, nil, 4, 5]

a.reject{ |i| i == nil}
a.delete_if{ |i| i == nil}


# 6.最初の偶数を返す (Array#[], Array#at などは禁止)

a = [1,2,3,4,5]

a.reject{ |i| i%2 == 1 }.first
a.delete_if{ |i| i%2 == 1 }.first


# 7.e を含む単語だけ返す

words = ['paperboy', 'lolipop', 'muumuu-domain', '30days album', 'sqale', 'osaipo', 'heteml']

words.reject{ |i| i !~ /e/}
words.delete_if{ |i| i !~ /e/}


# 8.配列の要素をすべて足し算した結果を返す (each 禁止)

a = [1,2,3,4,5]

num= 0
a.last.times { num += a.pop }
num

# 9.要素に連番を振る (二回目)
# => ["0: paperboy", "1: lolipop", "2: muumuu-domain", "3: 30days album", "4: sqale", "5: osaipo", "6: heteml"]
# ヒント: Enumerator

words = ['paperboy', 'lolipop', 'muumuu-domain', '30days album', 'sqale', 'osaipo', 'heteml']
words.map.with_index {|s, i| "#{ i }: #{ s }" }

# 応用形
# 整形されたマークダウンを出力する
# ヒント1: Enumerator
# ヒント2: イテレーターの中でイテレーターを呼ぶ
# ヒント3: この問題は irb で上記の実行例と同じように印字できれば良い。返り値は無視。

words = ["perl", "ruby", "python", "css", "js", "html", "c", "c++", "java" ]

words.each.with_index do |lang, index|
  puts "\n--\n" if index % 3 == 0  
  puts (index % 3 + 1).to_s + ". " + lang  
end


# 3で割り切れるものだけを足す
a = (1..30).to_a
a.each { |num| sum += num if num%3 == 0 }
sum
