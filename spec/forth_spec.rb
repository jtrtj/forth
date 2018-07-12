require './forth.rb'

describe Forth do
  it 'addition' do
    forth = Forth.new

    expect(forth.interpret("1")).to eq([1])
    expect(forth.interpret("1 2")).to eq([1, 2])
    expect(forth.interpret("1 2 + 4")).to eq([3, 4])
    expect(forth.interpret("1 1 +")).to eq([2])
    expect(forth.interpret("1 1 2 +")).to eq([1, 3])
    expect(forth.interpret("1 1 2 + +")).to eq([4])
    expect(forth.interpret("1 1 + 2 +")).to eq([4])
  end
end