require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].to_s
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @num.times {string << @phrase}
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.each.with_object("") do |(key, value), string|
      string << value if key.include?("word")
      params.to_a.last[0] == key ? string << "." : string << " "
    end
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @op
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    else
      "error"
    end
  end

end
