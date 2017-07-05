
class Registry
  # basically like BinaryTreeAccount but with binarytreeaccounts
  # initializes with loop that pairs letters with numbers
  # can search
  # can use functions in lower classes
  attr_reader :movie_list, :operating_account
  def initialize
    @movie_list = []
    @account_list = []
    @operating_account = nil
  end

  def add_new_account(username, password, registry_name)
    @operating_account = BinaryAccount.new(username, password, registry_name)
    @account_list << @operating_account
  end

  def add_to_movie_list(title, genre)
    @movie_list << [title.capitalize, genre.capitalize]
  end
  #adds a new movie to the total registry

  def insert(array, object, operating_value)
    if array.size != 0


    else

  module global_var
    def alpha_num
      {"A" => 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5, "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J" => 10, "K" => 11, "L" => 12, "M" => 13, "N" => 14, "O" => 15, "P" => 16, "Q" => 17, "R" => 18, "S" => 19, "T" => 20, "U" => 21, "V" => 22, "W" => 23, "X" => 24, "Y" => 25, "Z" => 26}
    end

    def alpha_num_lower
      {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26}
    end
  end


  module search
    def search()

    end
  end
end

class BinaryAccount
  # Hold data - Username: private
  # Hold data - Password: private
  # Hold data - RatingTree
  # Hold data - GenreRepository
  attr_reader :parent_registry
  def initialize(username, password, parent_registry)
    @username = username
    @password = password
    @rating_tree = RatingTree.new(parent_registry.operating_account)
    @genre_repository = GenreRepository.new(parent_registry.operating_account)
    @parent_registry = parent_registry
  end
end

class RatingTree
  # Insert sorts array
  # Find compares ratings in while loop,
  # Find_like is basically find
  attr_reader :parent_account
  def initialize(parent_account)
    @parent_account = parent_account
    @movie_tree = []
    @treetop = NodeMovie.new(nil, nil, @parent_account.rating_tree, 50)
  end

  def add_movie(title, genre, parent, rating)
    operating_node = @treetop
    node_to_add = NodeMovie.new(title, genre, rating)
    continue == true
    inst = nil
    until continue == false
      if node_to_add.rating > operating_node.rating
        if operating_node.right_side.empty?
          operating_node.right_side << node_to_add
          node_to_add.parent = operating_node
          continue = false
        else
          operating_node = operating_node.right_side[0]
        end
      elsif node_to_add.rating < operating_node.rating
        if node2.left_side.empty?
          operating_node.left_side << node_to_add
          node_to_add.parent = operating_node
          continue = false
        else
          operating_node = operating_node.left_side[0]
        end
      else
        node_to_add.right_side = operating_node.right_side
        node_to_add.left_side = operating_node.left_side
        node_to_add.parent = operating_node.parent
        continue = false
      end

  def add_to_rating_tree

  end

  def add_by_name



end

class NodeMovie
  #stores the information of a single movie in a node, with a link to a higher rated and lower rated movie, and genre
  # Hold data - Title: cannot be edited
  # Hold data - Rating: can be edited
  # Hold data - Genre: cannot be edited
  # Hold parent node in initialize
  # Hold right Node
  # Homld left Node
  attr_reader :title, :genre, :parent, :rating
  def initialize(title, genre, rating, parent=nil)
    @title = title.capitalize
    @rating = rating
    @genre = genre.capitalize
    @parent = parent
    @right_side = []
    @left_side = []

  end
end

class GenreRepository
  # Hold data - array of genres
  # can sort genres by first letter
  def initialize(parent_account)

class Genre


# Hold data - array of nodes
def initialize(name)
  @name = name
  @node_array = []
