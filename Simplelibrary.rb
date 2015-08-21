class Book
    def initialize(title, author)
        @title = title
        @author = author
    end
    
    def logBook()
        puts "Title: #{@title}  ||  Author:  #{@author}"
    end
end

class Shelf
    def initialize()
        @books = Array.new
    end
    
    def get(bookNum)
        @books[bookNum].logBook()
    end
    
    def getAll()
        @books.each do |book|
            book.logBook()
        end
    end
    
    def addBook(book)
        @books.push(book)
    end
    
    def removeBook(bookNum)
        @books.delete_at(bookNum)
    end
end

class Library
    def initialize()
        @shelves = Array.new
    end
    
    def addShelf(shelf)
        @shelves.push(shelf)
    end
    
    def getShelf(shelfNum)
        @shelves[shelfNum]
    end
    
    def getAll()
        @shelves.each do |shelf|
            shelf.getAll()
        end
    end
end


class Test
    
    library = Library.new
    shelf = Shelf.new
    book = Book.new "Leviathan Wakes", "James S. A. Corey"
    shelf.addBook(book)
    book = Book.new "The Long Earth", "Stephen Baxter and Terry Pratchett"
    shelf.addBook(book)
    book = Book.new "The Martian", "Andy Weir"
    shelf.addBook(book)
    library.addShelf(shelf)
    
    shelf = Shelf.new
    book = Book.new "Harry Potter and the Goblet of Fire", "J.K. Rowling"
    shelf.addBook(book)
    library.addShelf(shelf)
    
    shelf = Shelf.new
    book = Book.new "The Lord of the Rings: The Fellowship of the Ring", "J.R.R. Tolken"
    shelf.addBook(book)
    book = Book.new "A Game of Thrones:  A Clash of Kings", " George R. R. Martin"
    shelf.addBook(book)
    book = Book.new "Do Androids Dream of Electric Sheep", "Phillip K. Dick"
    shelf.addBook(book)
    book = Book.new "Othello", "William Shakespear"
    shelf.addBook(book)
    library.addShelf(shelf)
    
    library.getShelf(2).get(0)
    library.getShelf(0).get(1)
    library.getShelf(2).removeBook(2)

    library.getAll()
    
end