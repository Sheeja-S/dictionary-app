class Word
  @@words = []

  define_method(:initialize) do |term|
    @term = term
    @contents = []
    @id = @@words.length().+(1)
  end

  define_method(:term) do
    @term
  end

  define_method(:contents) do
    @contents
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @contents.push(definition)
  end
end
