require 'spec_helper'
require_relative '../../1/00'

describe 'reverse' do
  it 'is desserts' do
    expect(reverse("stressed")).to eq('desserts')
  end
  it 'is cba' do
    expect(reverse("abc")).to eq('cba')
  end
end
