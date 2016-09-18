require 'spec_helper'
require_relative '../../1/01'

describe "1,3,5,7文字目を取り出す" do
  it "is パトカー" do
    expect(joinEvenChars("パタトクカシーー")).to eq("パトカー")
  end
  it "aceg" do
    expect(joinEvenChars("abcdefgh")).to eq("aceg")
  end
end
