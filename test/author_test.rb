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

    assert_equal "Charlotte", charlotte_bronte.first_name

  end

  def test_can_add_books_to_array
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "Jane Eyre", publication_date: "10/16/1847"})
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.add_book("Jane Eyre", "10/16, 1847")

    assert_equal charlotte_bronte.books, charlotte_bronte.books
  end

  def test_can_add_different_book
    book = Book.new({title: "Villette", publication_date: "1853"})
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Villette", book.title
  end
end
