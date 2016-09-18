require 'spec_helper'
require_relative '../../1/03'

describe 'count_word_size' do
  it "is Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics. result [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9]" do
    str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
    result = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9]
    expect(count_word_size(str)).to eq(result)
  end
end
    
