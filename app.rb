require "sinatra"
require_relative "cleanthatsandwich.rb"

enable :sessions

get '/' do
  erb :sandwich_parts
end

post '/sandwich_parts' do
	meatyarray = params[:meats]
	veggiearray = params[:veggies]
	cheesyarray = params[:cheeses]
	meatchoices = simple_meat(meatyarray)
	veggiechoices = simple_veggie(veggiearray)
	cheesechoices = simple_cheese(cheesyarray)
	redirect "/sandwich_results?meatchoices=" + meatchoices +"&veggiechoices=" + veggiechoices + "&cheesechoices=" + cheesechoices + '&meatyarray=' + meatyarray.to_s + '&veggiearray=' + veggiearray.to_s + '&cheesyarray=' + cheesyarray.to_s
end

get '/sandwich_results' do
	meatyarray = params[:meatyarray]
	veggiearray = params[:veggiearray]
	cheesyarray = params[:cheesyarray]
	meatchoices = params[:meatchoices]
	veggiechoices = params[:veggiechoices]
	cheesechoices = params[:cheesechoices]
	meatboxx = meat_box(meatyarray)
	erb :sandwich_results, :locals=>{:meatchoices=>meatchoices,:veggiechoices=>veggiechoices,:cheesechoices=>cheesechoices, :meatboxx=>meatboxx}
end

post '/sandwich_results' do
	meatchoices = params[:meats]
	veggiechoices = params[:veggies]
	cheesechoices = params[:cheeses]
	redirect "/areyousure?meatchoices=" + meatchoices +"&veggiechoices=" + veggiechoices + "&cheesechoices=" + cheesechoices
end

get '/areyousure' do
	meatchoices = params[:meats]
	veggiechoices = params[:veggies]
	cheesechoices = params[:cheeses]
end