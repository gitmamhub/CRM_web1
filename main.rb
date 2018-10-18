require_relative 'crm.rb'
require_relative 'contact.rb'




system('clear')
name_1 = Contact.create('mamun','rashid','netmamun@yahoo.com','Why !!!')
name_2 = Contact.create('Joel','hou','houj@gmail.com','Why not!!!')
name_3 = Contact.create('sonia','farhana','sonia@gmail.com','I am new here !!!')


# name_1.full_name


# p name_1
#
# p name_2
#
#
# Contact.all.each do |contact|
#   puts ("#{ contact.full_name } #{ contact.email } #{ contact.notes }id: #{ contact.id }")
#   p ' its going on '
# end
#
# name_2.delete(2)
#
# puts "after deletion \n\n\n"
#
# Contact.all.each do |contact|
#   puts ("#{ contact.full_name } #{ contact.email } #{ contact.notes }id: #{ contact.id }")
#   p ' its going on '
# end



# a_crm_app = CRM.new
# a_crm_app.main_menu



# name_1.update

# name_2.email=('joel@yahoo.com')
#
#
# p name_2.email
#
#
# name_2.update
#
#
# p name_2
#

# # name_2.delete()
#
# p name_1.id
# # p name_2
# #
# #
# #
# # p 'whats up'
