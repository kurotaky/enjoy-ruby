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

  let(:another_hash) do
    { 
      "hatena" => "cinnamon",
      "oracle" => "candy",
    }
  end

  let(:sqale) do
    {
      "production" => {
        "app" => [
                  "app001.sqale.jp",
                  "app002.sqale.jp",
                 ],
        "users" => [
                    "users001.sqale.jp",
                    "users002.sqale.jp",
                   ],
      }
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

  context  '6. hash key output iterator' do
    describe 'Hash#each_key' do
      it 'output iterator' do
        $stdout = StringIO.new
        hash.each_key { |key| puts "#{key}"}
        out = $stdout.string
        $stdout = STDOUT
        out.should == "heteml\nmuumuu\nlolipop\n"
      end
    end
  end

  context '7. returns an arrays with all value of the hash' do
    describe 'Hash#values' do
      it 'returns an arrays' do
        hash.values.should eq(["kaba", "kuma", "ozisan"])
      end
    end
  end

  context  '8. hash value output iterator' do
    describe 'Hash#each_value' do
      it 'output iterator' do
        $stdout = StringIO.new
        hash.each_value { |value| puts "#{value}"}
        out = $stdout.string
        $stdout = STDOUT
        out.should == "kaba\nkuma\nozisan\n"
      end
    end
  end

  context  '9. hash value & key output iterator' do
    describe 'Hash#each' do
      it 'output iterator' do
        $stdout = StringIO.new
        hash.each { |key, value| puts "#{key} #{value}"}
        out = $stdout.string
        $stdout = STDOUT
        out.should == "heteml kaba\nmuumuu kuma\nlolipop ozisan\n"
      end
    end

    describe 'Hash#each_pair' do
      it 'output iterator' do
        $stdout = StringIO.new
        hash.each_pair { |key, value| puts "#{key} #{value}"}
        out = $stdout.string
        $stdout = STDOUT
        out.should == "heteml kaba\nmuumuu kuma\nlolipop ozisan\n"
      end
    end
  end

  context  '10. combine hash with another_hash' do
    describe 'Hash#merge' do
      it 'combine hash & another_hash' do
        hash.merge(another_hash).should eq({"heteml"=>"kaba",
                                             "muumuu"=>"kuma",
                                             "lolipop"=>"ozisan",
                                             "hatena"=>"cinnamon",
                                             "oracle"=>"candy"})
      end
    end


    describe 'Hash#update' do
      it 'combine hash & another_hash' do
        hash.update(another_hash).should eq({"heteml"=>"kaba",
                                             "muumuu"=>"kuma",
                                             "lolipop"=>"ozisan",
                                             "hatena"=>"cinnamon",
                                             "oracle"=>"candy"})
      end
    end
  end

  pending '11. Access to complex structures' do
    describe 'Hash#merge' do
      it 'combine hash & another_hash' do
     
      end
    end
  end


end
