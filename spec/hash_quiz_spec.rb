# -*- coding: utf-8 -*-
describe Hash do
  let(:hash) do
    {
      "heteml"  => "kaba",
      "muumuu"  => "kuma",
      "lolipop" => "ozisan",
    }
  end

  it "キー heteml が存在するか確認する"do
    hash.has_key?("heteml").should == true
  end
end
