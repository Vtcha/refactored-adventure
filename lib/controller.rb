require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
	erb:index, local:{gossips: Gossip.all}

end

   get '/gossips/new/' do
    erb :new_gossip

end
			#pour saisir dans csv 
  post '/gossips/new/' do
  
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end

	 post '/gossips/new/' do
#puts "salut, je suis dans le serveur : #{params}"
#puts "trop bien ! Et ceci est c que l'utilisateur a passé dans le champ grossip_author : #{params["grossip_author"]}"
#puts "De la bombe, et du coup ça , ça doit être ce que l'utilisateur a passé dans le champ grossip_content : #{param["gossip_content"]}"
#puts " Ça déchire sa mémé, bon allez je l'en vais du serveur, ciao les BGs !" 


redirect '/'
end 
end

