require 'spec_helper'
require_relative '../../1/02'

describe 'each_join' do
  it 'パタトクカシーー' do
    expect(each_join("パトカー", "タクシー")).to eq('パタトクカシーー')
  end
  it 'パタトクカシーーabc' do
    expect(each_join("パトカー", "タクシーabc")).to eq('パタトクカシーーabc')
  end
  it 'パタaクbシcートカー' do
    expect(each_join("パabcトカー", "タクシー")).to eq('パタaクbシcートカー')
  end
  it 'タクシー' do
    expect(each_join("", "タクシー")).to eq('タクシー')
  end
end
