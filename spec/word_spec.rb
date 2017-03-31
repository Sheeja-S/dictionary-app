require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

describe('#term') do
  it("returns the term") do
    test_word = Word.new("ambitious")
    expect(test_word.term()).to(eq("ambitious"))
  end
end

describe('#contents') do
  it("it initially returns an empty array of contents for the word") do
    test_word = Word.new("ambitious")
    expect(test_word.terms()).to(eq([]))
  end
end

describe('#id') do
  it("returns the id of the word") do
    test_word = Word.new("ambitious")
    expect(test_word.id()).to(eq(1))
  end
end

describe('#save') do
  it("adds a word to the aaray of saved words") do
    test_word = Word.new("ambitious")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

describe(".all") do
  it("is empty at first") do
    expect(Word.all()).to(eq([]))
  end
end

describe(".clear") do
  it("empties out all of the saved words") do
    Word.new("ambitious").save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
  end

describe(".find") do
  it("returns a word by its id number") do
    test_word = Word.new("ambitious")
    test_word.save()
    test_word2 = Word.new("hope")
    test_word2.save()
    expect(Word.find(test_word.id())).to(eq(test_word))
  end
end

describe('#add_definition') do
  it("adds a new definition to a word") do
    test_word = Word.new("ambitious")
    test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious")
   end  
  end
end
