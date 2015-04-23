require('rspec')
require('pry')
require('anagram')

describe('String#anagram') do
  it('will determine whether the two words are anagrams of each other') do
    expect('silent'.anagram('listen')).to(eq("silent is an anagram of listen"))
  end
  it('will determine whether multiple words are an anagram of one word') do
    expect('cat'.anagram('keno act and fact pact')).to(eq("cat is an anagram of act"))
  end
end
