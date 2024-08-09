// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    struct Book {
        string title;
        string author;
        bool completed;
    }

    // create an array of book structs
    Book[] public books;

    function add(string memory _title, string memory _author) public {
        // Create a book object and add to the array of books
        books.push(Book(_title, _author, false));
    }

    function get(uint _index) public view returns(string memory title, string memory author, bool completed) {
        Book storage book = books[_index];
        return (book.title, book.author, book.completed);
    }

    // Update book to complete
    function completed(uint _index) {
        Book storage book = books[_index];
        book.completed = true;
    }
}
