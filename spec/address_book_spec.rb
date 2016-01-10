require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

      it "should initialize entries as an array" do
        book = AddressBook.new
        expect(book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('A', 'B', 'C')
      expect(book.entries.size).to eq(1)
    end

    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('A','b','c')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('A')
      expect(new_entry.phone_number).to eq('b')
      expect(new_entry.email).to eq('c')
    end
   end
  end
