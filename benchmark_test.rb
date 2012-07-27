#! /usr/bin/ruby
# -*- coding: utf-8 -*-

require 'benchmark'

n = 1000000
Benchmark.bm do |x|
  x.report("each:")  { (1..n).each{String.new("a-newcomer")} }
  x.report("times:") { n.times{String.new("a-newcomer")}     }
  x.report("upto:")  { 1.upto(n){String.new("a-newcomer")}   }
end
