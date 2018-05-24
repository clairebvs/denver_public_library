require 'Date'

class Author
  attr_reader :first_name,
              :last_name,
              :books

  def initialize(author)
    @first_name = author[:first_name]
    @last_name  = author[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    publication_year = publication_date.split.last
    book = Book.new({author_first_name: first_name, author_last_name: last_name, title: title, publication_date: publication_year})
    @books << book
    return book
  end

  Date.strptime("12/22/2011", "%m/%d/%Y")
end
