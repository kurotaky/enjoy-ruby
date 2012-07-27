#! /usr/bin/ruby
# -*- coding: utf-8 -*-

require 'benchmark'

a = (1..10000000).to_a
sum= 0
g = 0
h = 0

Benchmark.bm do |x|
  x.report("reduce:") { a.reduce(:+) }

  x.report("inject:")  { a.inject(0, :+) }
  x.report("shikakun:") do 
    a.length.times do
      g = g + a[h]
      h = h + 1
    end
  end
  x.report("popで足していく:")  { a.last.times { sum += a.pop } }
end
