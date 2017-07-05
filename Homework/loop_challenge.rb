class Group
  def initialize(members)
    count = members.to_i
    @name_array = []
    while count > 0
      @name_array.push(nil)
      count -= 1
    end
  end
#initializes empty array of a certain number of members
  def total_members
    @name_array.size
  end
#outputs group size
  def init_group
    count = 1
    @name_array.each do |naame|
      if naame == nil
        puts "Name for person in position #{count}?"
        naame = gets.chomp.to_s
        @name_array[count - 1] = naame
        count += 1
      else
        count += 1
      end
    end
  end
#prompts user to initialize every empty spot in group
  def app_to_group(name)
    @name_array.push(name)
  end
#adds member to end position of group
  def add_to_group(position, name)
    @name_array.insert(position, name)
  end
#puts member into a specific position
  def remove_from_group(name)
    @name_array.each do |naame|
      if naame = name
        @name_array.delete(naame)
      end
    end
  end
#removes all members of the group with a certain name
  def print_member_inpos(number)
    @name_array[number - 1]
  end
#outputs a member by their position in the group
  def check_if(name)
    @name_array.include?(name)
  end
#boolean check if a person is in the group
  def greet_member(name)
    if @name_array.include?(name)
      puts "Hello #{name}! Nice to meet you!"
    end
  end
#greets a single member of the Group
  def greet_all_members
    @name_array.each do |naame|
      if !(naame.nil?)
        puts "Hello #{naame}! Nice to meet you!"
      end
    end
  end
#greets all members of the Group
end
