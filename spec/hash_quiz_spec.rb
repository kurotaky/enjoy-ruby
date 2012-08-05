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
    describe 'Hash#has_key?("heteml")' do
      it { hash.has_key?('heteml').should be_true }
    end

    describe 'Hash#key?("heteml")' do
      it { hash.key?('heteml').should be_true }
    end

    describe 'Hash#include?("heteml")' do
      it { hash.include?('heteml').should be_true }
    end

    describe 'Hash#member?("heteml")' do
      it { hash.member?('heteml').should be_true }
    end

    describe 'Hash["heteml"]' do
      it { hash["heteml"].should be_true }
    end
  end

  context '2. when "kaba" exists' do
    describe 'Hash#has_value?("kaba")' do
      it { hash.has_value?('kaba').should be_true }
    end

    describe 'Hash#value?("kaba")' do
      it { hash.value?('kaba').should be_true }
    end
  end

  context '3. delete "heteml" in hash' do
    describe 'Hash#delete?("heteml")' do
      it 'delete heteml' do
        hash.delete('heteml')
        hash.should eq({"muumuu" => "kuma", "lolipop" => "ozisan"})
      end
    end
  end

  context '4. return the "unknwon" when access a nonexistent key' do
    describe 'Hash#default="unknown"' do
      it 'returns "unknown"' do
        hash.default = 'unknown'
        hash['sqale'].should eq('unknown')
      end
    end
  end

  context '5. returns an arrays with all keys of the hash' do
    describe 'Hash#keys' do
      it 'returns an arrays' do
        hash.keys.should eq(["heteml", "muumuu", "lolipop"])
      end
    end
  end

  context '6. output iterator' do
    describe 'Hash#each' do
      it 'output iterator' do
        hash.each_key { |key| puts "#{key}"}
      end
    end
  end
end
