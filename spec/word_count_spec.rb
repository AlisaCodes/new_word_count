require('rspec')
require('word_count')

describe("String#word_count") do
#   it('divides the string into an array') do
#     expect(('hello hello').word_count('hello')).to(eq(['hello', 'hello']))
#   end
#
#   it('downcases everything and takes out punctuations') do
#     expect(('hello, Hello').word_count('hello')).to(eq(['hello', 'hello']))
#   end

  it('counts how many times a word appears in the text') do
    expect(('make it work').word_count('work')).to(eq(1))
  end
end
