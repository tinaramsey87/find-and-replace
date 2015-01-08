require('rspec')
require('find_and_replace.rb')
require('pry')
describe('String#find_and_replace') do
#  it("returns true if the given word is found in the argument string") do
#    expect(("Hello World").find_and_replace("Hello", "Hi")).to(eq("true"))
#  end
  it("replaces the found word with the another word in the arguments list") do
    expect(("I like coding because I am a nerd.").find_and_replace("coding","gaming")).to(eq("I like gaming because I am a nerd."))
  end
  it("does not replace partial matches") do
    expect(("I am walking my cat to the cathedral").find_and_replace("cat","dog")).to(eq("I am walking my dog to the cathedral"))
  end
end
