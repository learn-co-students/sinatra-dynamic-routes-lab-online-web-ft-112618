require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    count = 0
    phrase = []
    params.each do |key,value|
      count += 1
      if count < params.count
        phrase << "#{value} "
      else
        phrase << "#{value}."
      end
    end
  phrase.join
  end

  get "/:operation/:number1/:number2" do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operator == "add"
      "#{@num1 + @num2}"
    elsif @operator == "subtract"
      "#{@num1 - @num2}"
    elsif @operator == "multiply"
      "#{@num1 * @num2}"
    elsif @operator == "divide"
      "#{@num1 / @num2}"
    end
  end

end
