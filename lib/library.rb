class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
    return book
  end

  def include?(title_book)
    @books.any? do |book|
      book.title == title_book
    end
  end
end
