class VinylExample < Sinatra::Base

  before do
    Vinyl.reset_variables
    Vinyl.consumer = params['consumer']
  end

  get '/' do
    check_level
    json :response => "Hello world!"
  end

  get '/test-one' do
    Vinyl.user = params['user']
    check_level
    json :response => "First test passed successfuly!"
  end

  get '/test/two' do
    Vinyl.guess = params['guess']
    access_level = Vinyl.bypass('consumer_present').check_level(request.path_info, request.request_method)
    if(access_level == 1)
      json :response => ("You guessed, congratulations!")
    else
      json :response => ("You didn\'t guess =(, better luck next time!")
    end
  end

  def check_level
    access_level = Vinyl.check_level(request.path_info, request.request_method)
    halt 403, "Closed for you, sory! :)" if access_level == 0
  end 
end