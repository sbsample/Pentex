get '/' do
  erb :"index"
end

get '/about' do
  erb :"about"
end

get '/services' do
  erb :"services"
end

get '/insights' do
  erb :"insights"
end
