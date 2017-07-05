require 'pry'
class Encryptor
upletters = [:A, :B, :C, :D, :E, :F, :G, :H, :I, :J, :K, :L, :M, :N, :O, :P, :Q, :R, :S, :T, :U, :V, :W, :X, :Y, :Z]
binding.pry
downletters = [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z]
digits = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
symbols = [:`, :~, :!, :@, "#", :$, :%, :^, :&, :*, "(", ")", :_, :-, :+, :=, :{, :}, :[, :], :|, :\, ":", ";", :", :', :<, :,, :>, :., :?, :/, " "]
all = upletters + downletters + digits + symbols
def initialize(text)
  @original = text
  @key = create_values
  @result = encrypt(text)
end

def create_values
  numbers = [1..10000]
  all.each do |char|
    marker = rand(numbers)
    numbers.delete(marker)
    @key.store(char, marker)
  end
end

def encrypt(text)
  for i in 0..(text.length - 1)

def gen_symbols
  w = upletters.shuffle[rand(0..25)]
  x = downletters.shuffle[rand(0..25)]
  y = digits.shuffle[rand(0..9)]
  z = symbols.shuffle[rand(0..33)]


end
