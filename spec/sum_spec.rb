require 'rspec'
require_relative '../lib/listcounts'


describe 'sum' do

  it 'should take a list as argument' do
    expect { sum() }.to raise_error ArgumentError
    expect { sum(numbers:[1,2,3])}.not_to raise_error
  end

  it "should return 4 if numbers is [4]" do
    expect( sum(numbers:[4]) ).to eq 4
  end

  it "should return 0 if numbers is empty" do
    expect( sum(numbers:[]) ).to eq 0
  end

  it "should return 6 if numbers is [1,2,3]" do
    expect( sum(numbers:[1,2,3]) ).to eq 6
  end

end