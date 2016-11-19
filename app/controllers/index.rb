get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


#ESTE ES UN METODO POST
post '/abuelita' do
      #ESTE METODO ES SMILIAR A UN GETS CHOMP 
    user_input = params[:user_input]
    response = grandma(user_input)   
    if request.xhr?
       # respond to Ajax request
       # grandma(user_input)
       #response
    else
       # respond to normal request
       redirect to ("/?abuelita=#{response}")
    end
 end


def grandma(user_input)
  case 
      when user_input == user_input.upcase && user_input != "BYE TQM"
        "NO, NO DESDE 1983"
      when user_input == user_input.downcase 
        "HUH?! NO TE ESCUCHO, HIJO!"
      when user_input == "BYE TQM"
        "BYE MIJITO!"
      else
        "HUH?! NO TE ESCUCHO, HIJO!" 
  end
end























