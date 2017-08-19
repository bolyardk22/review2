require "sinatra"
require_relative "cleanthatsandwich.rb"

enable :sessions

get '/' do
  erb :sandwich_parts
end

post '/build' do
  parts = params[:parts]
  erb :sandwich_results, :locals=>{:parts=>parts}
end

get '/correct' do
    parts = params[:parts]
    toppings = params[:toppings]
    erb :areyousure, :locals=>{:parts=>parts, :toppings=>toppings}
end

# post '/sandwich_parts' do
# 	meatyarray = params[:meats]
# 	meatyarraylength = meatyarray.length
# 	veggiearray = params[:veggies]
# 	veggiearraylength = veggiearray.length
# 	cheesyarray = params[:cheeses]
# 	cheesyarraylength = cheesyarray.length
# 	meatchoices = simple_meat(meatyarray)
# 	veggiechoices = simple_veggie(veggiearray)
# 	cheesechoices = simple_cheese(cheesyarray)
# 	redirect "/sandwich_results?meatchoices=" + meatchoices +"&veggiechoices=" + veggiechoices + "&cheesechoices=" + cheesechoices + '&meatyarray=' + meatyarray.to_s + '&veggiearray=' + veggiearray.to_s + '&cheesyarray=' + cheesyarray.to_s + '&meatyarraylength=' + meatyarraylength.to_s + '&veggiearraylength=' + veggiearraylength.to_s + '&cheesyarraylength=' + cheesyarraylength.to_s
# end

# get '/sandwich_results' do
# 	meatyarray = params[:meatyarray]
# 	meatyarraylength = params[:meatyarraylength]
# 	veggiearray = params[:veggiearray]
# 	veggiearraylength = params[:veggiearraylength]
# 	cheesyarray = params[:cheesyarray]
# 	cheesyarraylength = params[:cheesyarraylength]
# 	meatchoices = params[:meatchoices]
# 	veggiechoices = params[:veggiechoices]
# 	cheesechoices = params[:cheesechoices]
# 	meatboxx = meat_box(meatyarraylength)
# 	erb :sandwich_results, :locals=>{:meatchoices=>meatchoices,:veggiechoices=>veggiechoices,:cheesechoices=>cheesechoices, :meatboxx=>meatboxx, :meatyarraylength=>meatyarraylength, :veggiearraylength=>veggiearraylength, :cheesyarraylength=>cheesyarraylength}
# end

# post '/sandwich_results' do
# 	meatyarray = params[:meatyarray]
# 	meatyarraylength = params[:meatyarraylength]
# 	veggiearray = params[:veggiearray]
# 	veggiearraylength = params[:veggiearraylength]
# 	cheesyarray = params[:cheesyarray]
# 	cheesyarraylength = params[:cheesyarraylength]
# 	meatchoices = params[:meatchoices]
# 	veggiechoices = params[:veggiechoices]
# 	cheesechoices = params[:cheesechoices]
# 	meatboxx = params[:meatboxx]
# 	redirect "/areyousure?meatchoices=" + meatchoices +"&veggiechoices=" + veggiechoices + "&cheesechoices=" + cheesechoices + '&meatyarray=' + meatyarray.to_s + '&veggiearray=' + veggiearray.to_s + '&cheesyarray=' + cheesyarray.to_s + '&meatyarraylength=' + meatyarraylength.to_s + '&veggiearraylength=' + veggiearraylength.to_s + '&cheesyarraylength=' + cheesyarraylength.to_s
# end

# get '/areyousure' do
# 	meatyarray = params[:meatyarray]
# 	meatyarraylength = params[:meatyarraylength]
# 	veggiearray = params[:veggiearray]
# 	veggiearraylength = params[:veggiearraylength]
# 	cheesyarray = params[:cheesyarray]
# 	cheesyarraylength = params[:cheesyarraylength]
# 	meatchoices = params[:meatchoices]
# 	veggiechoices = params[:veggiechoices]
# 	cheesechoices = params[:cheesechoices]
# 	meatboxx = params[:meatboxx]
# end