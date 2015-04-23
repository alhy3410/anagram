require('rspec')
require('pry')
require('anagram')

describe('String#anagram') do
  it('will determine whether the two words are anagrams of each other') do
    expect('silent'.anagram('listen')).to(eq("listen is an anagram of silent"))
  end
  it('will determine whether multiple words are an anagram of one word') do
    expect('cat'.anagram('keno act and tac fact pact')).to(eq("act tac are anagrams of cat"))
  end

end
