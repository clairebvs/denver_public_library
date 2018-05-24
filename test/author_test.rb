require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end

  def test_it_has_no_book_at_first
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_author_add_book_to_collection
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book = Book.new({author_first_name: "Emilie", author_last_name: "Bronte", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_instance_of Book, charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal "Charlotte", charlotte_bronte.first_name
  end

  def test_can_add_books_to_array
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book = Book.new({title: "Jane Eyre", publication_date: "10/16/1847"})
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")

    assert_equal [book], charlotte_bronte.books
    # assert_equal "Charlotte", charlotte_bronte.first_name
  end
end
