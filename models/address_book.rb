require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # #9
    index = 0
    entries.each do |entry|
    # #10
      if name < entry.name
        break
      end
      index+= 1
    end
    # #11
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    i = entries.index("Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}")
    entries.delete_at(i)
  end
end
