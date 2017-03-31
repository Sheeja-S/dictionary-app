require('rspec')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end

describe("#description") do
  it("returns the description of the definition") do
    test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious")
    expect(test_definition.description()).to(eq("showing a strong desire and determination to succeed."))
  end
end

  describe("#usage") do
    it("returns an example on how the word described can be    used") do
    test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious")
    expect(test_definition.usage()).to(eq("People consider Leno ambitious"))
    end
  end


  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a definition to the array of saved definitions") do
      test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved definitions") do
      test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious").save()
      test_definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

describe("#id") do
  it("returns the id of the dictionary") do
    test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious")
    test_definition.save()
    expect(test_definition.id()).to(eq(1))
  end
end

describe(".find") do
  it("returns a definition by the id number") do
      test_definition = Definition.new("showing a strong desire and determination to succeed" , "People consider Leno ambitious")
    test_definition.save()
    test_definition2 = Definition.new("Ambitious means wanting to succeed." , "the ambitious but unevenly executed show")
    test_definition2.save()
    expect(Definition.find(test_definition.id())).to(eq(test_definition))
  end
 end
end
