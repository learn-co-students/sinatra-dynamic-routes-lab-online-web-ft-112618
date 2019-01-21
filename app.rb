require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say_number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    answer = ''
    params.each do |key, value|
     if key.include?("word")
      answer += "#{value} "
    end
   end
    answer.split(' ').join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
    @operation = params[:number1].to_i + params[:number2].to_i
    when "subtract"
     @operation = params[:number1].to_i - params[:number2].to_i
    when "multiply"
     @operation = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @operation = params[:number1].to_i / params[:number2].to_i
    end
    @operation.to_s
  end

end
