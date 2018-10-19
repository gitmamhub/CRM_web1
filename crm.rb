
require_relative 'contact'
require 'sinatra'



get '/' do
  @contacts = Contact.all
  redirect to ('/index')
end

get '/about' do
  erb :about
end

get '/index' do
    erb :index
end

get '/contacts' do #creating an instance variable of all contact in the list
  @contacts = Contact.all
  erb :contacts
end

get '/contacts/new' do
  erb :new
end

get '/contacts/:id'do # finding a contact
  @contact = Contact.find_by(id: params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinetra::NotFound
  end
end

post '/contacts' do # creates a new contact
  Contact.create(
    first_name: params[:first_name],
    last_name:  params[:last_name],
    email:      params[:email],
    note:       params[:note]
  )

  redirect to ('/contacts')
end

get '/contacts/:id/edit' do # update a contact
  @contact = Contact.find_by(id: params[:id].to_i)
  if @contact
    erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end


put '/contacts/:id' do #  update the contact put to server
  @contact = Contact.find_by(id: params[:id].to_i)
    if @contact
      @contact.update(
      first_name: params[:first_name],
      last_name:  params[:last_name],
      email:      params[:email],
      note:       params[:note]
      )
      redirect to('/contacts')
    else
      raise Sinatra::NotFound
    end
end


delete '/contacts/:id' do
  @contact  = Contact.find_by(id: params[:id].to_i)
  if @contact
    @contact.delete
    redirect to ('/contacts')
  else
    raise Sinatra::NotFound
end
end

after do
  ActiveRecord::Base.connection.close
end
