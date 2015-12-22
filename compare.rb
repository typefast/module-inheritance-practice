class Person
  include Comparable
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def to_s
    "#{@name}"
  end
  
  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Mats")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

if p1 > p2
  puts "#{p1.name}'s > #{p2.name}'s name"
end

puts "Sorted List"

puts [p1, p2, p3].sort

class Human
  include Comparable
  attr_reader :type
  
  def initialize(type)
    @type = type
  end
  
  def to_s
    "#{@type}"
  end
  
  def <=>(other)
    self.type <=> other.type
  end
end

h1 = Human.new("Big")

s1 = Human.new("Small")


puts [h1, s1].sort