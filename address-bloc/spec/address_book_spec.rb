require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as an array" do
       book = AddressBook.new
       expect(book.entries).to be_an(Array)
     end

     it "initializes entries as empty" do
       book = AddressBook.new
       expect(book.entries.size).to eq(0)
     end
  end

  describe "#remove_entry" do
    it "removes an entry using the name, phone_number, and email" do
      book = AddressBook.new
      book.add_entry('Ann Murray', '555.555.5555', 'ann@amurraypr.com')

      name = "Ada Lovelace"
      phone_number = "010.012.1815"
      email = "augusta.king@lovelace.com"
      book.add_entry(name, phone_number, email)

      expect(book.entries.size).to eq 2
      book.remove_entry(name, phone_number, email)
      expect(book.entries.size).to eq 1
expect(book.entries.first.name).to eq("Ann Murray")
      end
  end

# describe "#remove_entry" do
#   it "removes an entry using the name, phone_number, and email" do
#     book = AddressBook.new
#     book.add_entry('Ann Murray', '222.222.2222', 'ann@amurraypr.com')
#
#     name = 'Mickey Mouse'
#     phone_number = '666.666.6666'
#     email_address = 'mickey.mouse@disney.com'
#     book.add_entry(name, phone_number, email_address)
#
#     expect(book.entries.size).to eq(1)
#     book.remove_entry(name, phone_number, email_address)
#     expect(book.entries.size).to eq(1)
#     expect(book.entries.first.name).to eq('Ann Murray')
#
# end

  describe "#add_entry" do
     it "adds only one entry to the address book" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

       expect(book.entries.size).to eq(1)


     end

     it "adds the correct information to entries" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]

       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
   end
 end
