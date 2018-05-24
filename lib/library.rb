class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    # require 'pry' ; binding.pry
    @books << book
    return book
  end
end
