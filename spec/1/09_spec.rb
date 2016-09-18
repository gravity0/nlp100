require 'spec_helper'
require_relative '../../1/09'

describe 'split_word' do
  it 'is not change head char'do
    str = "apple"
    result = random_word(str)
    expect(result.chars.first).to eq("a")
  end

  it 'is not change tail char'do
    str = "apple"
    result = random_word(str)
    expect(result.chars.last).to eq("e")
  end

  it %Q[is include? ["apple", "aplpe", "alppe"]] do
    #"ppl".chars.permutation(3).map{|a, b, c| [a, b, c].join}.uniq]})"
    str = "apple"
    result = ["apple", "aplpe", "alppe"].include?(random_word(str))
    expect(result).to be true
  end
end
