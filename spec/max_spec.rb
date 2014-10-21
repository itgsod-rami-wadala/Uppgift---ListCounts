require 'rspec'
require_relative '../lib/listcounts'


describe 'max' do

  it 'should take a list as argument' do
    expect { max() }.to raise_error ArgumentError
    expect { max(numbers:[1,2,3])}.not_to raise_error
  end

  it 'should return 7 if numbers is [3,5,7]' do
    expect( max(numbers: [3,5,7]) ).to eq 7
  end

  it 'should return 9 if numbers is [9,3,5,6]' do
    expect( max(numbers: [9,3,5,6]) ).to eq 9
  end

  it 'should return 5 if numbers is [5,3]' do
    expect( max(numbers: [5, 3]) ).to eq 5
  end

  it 'should return 3 if numbers is [3' do
    expect( max(numbers: [3]) ).to eq 3
  end

  it 'should return nil if numbers is empty' do
    expect( max(numbers: []) ).to be_nil
  end

end