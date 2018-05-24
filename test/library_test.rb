require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/library'
require './lib/author'
require './lib/book'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new
    assert_instance_of Library, dpl
  end

  def test_library_has_no_book_at_first
    dpl = Library.new
    assert_equal [], dpl.books
  end

  def test_can_add_book_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    dpl.add_to_collection(jane_eyre)

    assert_equal 1, dpl.books.length
    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_can_add_different_book_to_collection
    dpl = Library.new
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    villette  = charlotte_bronte.add_book("Villette", "1853")
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)
    assert_equal 3, dpl.books.length
    assert_equal "To Kill a Mockingbird", mockingbird.title
    assert_equal "Villette", villette.title
  end

end
