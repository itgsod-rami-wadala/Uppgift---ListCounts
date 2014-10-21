require 'rspec'
require_relative '../lib/listcounts'


describe 'average' do

  it 'should take a list as argument' do
    expect { average() }.to raise_error ArgumentError
    expect { average(numbers: [1,2,3])}.not_to raise_error
  end

  it 'should return 5 if numbers is [3,5,7]' do
   expect( average(numbers: [3,5,7]) ).to eq 5
  end

  it 'should return 5.25 if numbers is [3,7,5,6]' do
    expect( average(numbers: [3,7,5,6]) ).to eq 5.25
  end

  it  'should return if numbers is [3,5]' do
    expect( average(numbers: [3,5]) ).to eq 4
  end

  it 'should return 3 if numbers is [3]' do
    expect( average(numbers: [3]) ).to eq 3
  end

  it 'should return 3.3333333333333335 if numbers is [3,3,4]' do
    expect( average(numbers: [3,3,4]) ).to eq 3.3333333333333335
  end

  it 'should return nil if numbers is empty' do
    expect( average(numbers: []) ).to be_nil
  end

  it 'should use the sum function' do
    expect(self).to receive(:sum).with(numbers: [3,5,2]).and_return 10
    average(numbers: [3,5,2])
  end

end