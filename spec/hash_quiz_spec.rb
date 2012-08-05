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
  
  context '1. when "heteml" exists' do
    describe 'Hash#has_key?' do
      it { hash.has_key?('heteml').should be_true }
    end

    describe 'Hash#key?' do
      it { hash.key?('heteml').should be_true }
    end

    describe 'Hash#include?' do
      it { hash.include?('heteml').should be_true }
    end

    describe 'Hash#member?' do
      it { hash.member?('heteml').should be_true }
    end

    describe 'Hash["heteml"]' do
      it { hash["heteml"].should be_true }
    end
  end

  context '2. when "kaba" exists' do
    describe 'Hash#has_value?' do
      it { hash.has_value?('kaba').should be_true }
    end

    describe 'Hash#value?' do
      it { hash.value?('kaba').should be_true }
    end
  end

  context '3. delete "heteml" in hash' do
    describe 'Hash#delete' do
      it 'delete heteml' do hash.delete('heteml')
        hash == {"muumuu" => "kuma", "lolipop" => "ozisan"}      
      end
    end
  end

  context '4. return the "unknwon" when access a nonexistent key' do
  
  end
end
