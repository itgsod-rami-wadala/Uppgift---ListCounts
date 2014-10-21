require 'rspec'
require_relative '../lib/listcounts'


describe 'min' do

  it 'should take a list as argument' do
    expect { min() }.to raise_error ArgumentError
    expect { min(numbers:[1,2,3])}.not_to raise_error
  end

  it 'should return 3 if numbers is [3,5,7]' do
    expect( min(numbers:[3,5,7]) ).to eq 3
  end

  it 'should return 2 if numbers is [9,3,5,2]' do
    expect( min(numbers:[9,3,5,2]) ).to eq 2
  end

  it 'should return 3 if numbers is [3,5]' do
    expect( min(numbers:[3,5]) ).to eq 3
  end

  it 'should return 3 if numbers is [3]' do
    expect( min(numbers:[3]) ).to eq 3
  end

  it 'should return nil if list numbers is empty' do
    expect( min(numbers: []) ).to be_nil
  end

end