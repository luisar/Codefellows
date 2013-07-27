=begin
(1) Use object-oriented Ruby to model a public library (w/ three classes: Library, Shelf, & Book). 
The library should be aware of a number of shelves. Each shelf should know what books it contains. Make the book object have "enshelf" and "unshelf" 
methods that control what shelf the book is sitting on. The library should have a method to report all books it contains.
=end

#public library

class publicLibrary
  def lib(name, shelves, books,)
    @name = name
    @shelves = 100
    @books = []
  end
end

class Library < publicLibrary
  def shelves
    put "number of shelves is " << count[@shelves]
  end

  def howManyBooks
    put "The library currently has " << count[@books] << " books in it."
  end
end 

class Shelf < Library
  def whichBooks
    put "the books in the shelves are " << @shelves.to_s
  end
end

class Book < Shelf
  def enshelf
    put "book in shelf #" << @shelves[5]
  end

  def unshelf
    put "book taken from shelf #" << @shelves[80]
  end
end