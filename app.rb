require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/definition')
  require('./lib/word')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  term = params.fetch('term')
  Word.new(term).save()
  @words = Word.all()
  erb(:success)
end

get('/definitions/:id') do
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:definition)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_definitions_form)
end

post('/definitions') do
  description = params.fetch('description')
  usage = params.fetch('usage')
  @definition = Definition.new(description,usage)
  @definition.save()
  @word =
  Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  erb(:success)
end
