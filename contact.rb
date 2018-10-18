




class Contact

  @@contacts = []
  @@id1= 1
  # This method should initialize the contact's attributes
    def initialize(first_name, last_name, email, notes)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
    @id = @@id1
    @@id1 += 1
  end

  def first_name
    return @first_name
  end
  def last_name
    return @last_name
  end
  def id
    return @id
  end

  def email
    return @email
  end

  def notes
    return @notes

  end

  def email=(email)
    @email = email

  end

  def notes=(notes)
      @notes = notes

  end
  # This method should call the initializer,
  # store the newly created contact, and then return it

    def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = self.new(first_name, last_name, email, notes)

    @@contacts << new_contact
    return new_contact
    end

  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find (id)
    @@contacts.each do |info|
         if (id == info.id)
         return info
         end
       end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, value )

      # puts("which of the contact's attributes update ? : ")
      # puts("<1>: first_name, <2>: last_name, <3>: email, <4>: notes ")
      #
      # m = gets
      #
      #
      m = attribute
      if m.to_i == 1
        self.first_name = value
      elsif m.to_i == 2
        self.last_name = value
      elsif m.to_i == 3
        self.email = value
      elsif m.to_i == 4
        self.notes = value
      end


  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(new_attribute)

# ...........
  # puts "#attribute type is :#{new_attribute.class}"
  # puts "#{@@contacts }"


  case new_attribute.to_i

  when 1 then   puts "Input first_name: "
                first_name = gets.chomp
                @@contacts.each do |info|
                   if(first_name == info.first_name)
                     p "The searched person is #{info.full_name}"

                   end
                end
  when 2 then
                puts "Input second_name: "
                last_name = gets.chomp
                @@contacts.each do |info|
                   if(last_name == info.last_name)
                     p "The searched person is #{info.full_name}"

                   end
                end

  when 3 then
                puts "Input email: "
                email = gets.chomp
                @@contacts.each do |info|
                   if(email == info.email)
                     p "The searched person is #{info.full_name}"

                   end
                end
  when 4 then
                puts "Input Id: "
                id = gets.chomp.to_i
                @@contacts.each do |info|
                   if(id == info.id)
                     p "The searched person is #{info.full_name}"

                   end
                end

        else
                puts "invalid choice !!!"

  end
# .............



  end

  # This method should delete all of the contacts
  def self.delete_all
      @@contacts.clear
      return @@contacts

  end

  def full_name
      display_name = "#{@first_name} #{@last_name}"
      # p display_name
      return display_name
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete


        @@contacts.delete(self)

  end

  # Feel free to add other methods here, if you need them.

end
