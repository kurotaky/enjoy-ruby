# -*- coding: utf-8 -*-

# RSpecの書き方参考　
# http://tech.recompile.net/post/21340599029/rspec
# rspec -fd -c でドキュメンテーションフォーマット+色付を指定

describe Hash do
  let(:hash) do
    {
      "heteml"  => "kaba",
      "muumuu"  => "kuma",
      "lolipop" => "ozisan",
    }
  end
  
  context 'when "heteml" exists' do
    describe 'Hash#has_key?' do
      it 'returns true' do
        hash.has_key?('heteml').should be_true
      end
    end

    describe 'Hash#key?' do
      it 'returns true' do
        hash.key?('heteml').should be_true
      end
    end

    describe 'Hash#include?' do
      it 'returns true' do
        hash.include?('heteml').should be_true
      end
    end

    describe 'Hash#member?' do
      it 'returns true' do
        hash.member?('heteml').should be_true
      end
    end
    
    describe 'Hash["heteml"]' do
      it 'returns true' do
        hash["heteml"].should be_true
      end
    end
  end

  context 'when "kaba" exists' do
  end
end
