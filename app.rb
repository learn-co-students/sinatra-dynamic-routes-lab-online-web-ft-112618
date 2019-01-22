require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @string = params[:name]
    @reversed_string = @string.reverse
    "#{@reversed_string}"
  end

  get "/square/:number" do
    @num1 = params[:number].to_i
    @num = (@num1 ** 2).to_s
    "#{@num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phr = params[:phrase]
    @phrases = ""
    @num.times do
      @phrases += @phr
    end
    @phrases
    #binding.pry
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
#binding.pry
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @sum = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      @sum = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif  params[:operation] == "multiply"
      @sum = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif  params[:operation] == "divide"
      @sum = (params[:number1].to_i / params[:number2].to_i).to_s
    else
      "Unable to perform this operation"
    end
    #binding.pry
  end


end # end of class
