# myapp.rb
require 'sinatra'



#routes
get '/' do
  #generar html...
  #variables
  @fecha = Time.now
  "Hello world!: Hoy es #{@fecha}"
end

get '/jose' do
  'pagina para Jose'
end

get '/:city' do # path variables
  "esta ciudad #{params[:city]}"
  "este pais #{params[:country]}"
  params.inspect

end

# params

# Query string
# URL  ?key1 = value1 & key2 = value2
# params[]

# Variable path (es de ruby no estandard)

# GET 'invitado/spacio/:name'

#   param[:name]

get '/dado/:numero' do

  Lanzar_dado = rand(1..6)

  if params[:numero].to_i == Lanzar_dado
    erb :ganaste
  else
    "El FBI para tu casa."
  end
end


not_found do
  "Pa' donde vas??"
end
