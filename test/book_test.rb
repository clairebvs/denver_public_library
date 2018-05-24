require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'

class BookTest < Minitest::Test
  def test_it_exists
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_instance_of Book, book
  end

  def test_it_has_attributes
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_equal "Harper", book.author_first_name
    assert_equal "Lee", book.author_last_name
    assert_equal "To Kill a Mockingbird", book.title
    assert_equal "July 11, 1960", book.publication_date
  end

  def test_it_can_have_different_attributes
    book = Book.new({author_first_name: "Jacqueline", author_last_name: "Massabki", title: "La memoire des cedres", publication_date: "June 12, 1990"})

    assert_equal "Jacqueline", book.author_first_name
    assert_equal "Massabki", book.author_last_name
    assert_equal "La memoire des cedres", book.title
    assert_equal "June 12, 1990", book.publication_date
  end

end
