require 'rspec'
require_relative '../lib/listcounts'


describe 'median' do

  it 'should take a list as argument' do
    expect { median() }.to raise_error ArgumentError
    expect { median(numbers: [1,2,3])}.not_to raise_error
  end

  it 'should return 5 if numbers is [3,5,7]' do
    expect( median(numbers: [3,5,7]) ).to eq 5
  end

  it 'should return 5.5 if numbers is [3,7,5,6]' do
    expect( median(numbers: [3,7,5,6]) ).to eq 5.5
  end

  it 'should return 4 if numbers is [3,5]' do
    expect( median(numbers: [3,5]) ).to eq 4
  end

  it 'should return 3 if numbers is [3]' do
    expect( median(numbers: [3]) ).to eq 3
  end

  it 'should return nil if numbers is empty' do
    expect( median(numbers: []) ).to be_nil
  end


end