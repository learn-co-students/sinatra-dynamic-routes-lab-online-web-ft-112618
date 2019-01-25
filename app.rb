require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    gogo = params[:number]
    (gogo.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    num = params[:number]
    pha = params[:phrase]
    (num.to_i).times do
      string += "#{pha}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    ops = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if ops == "add"
      ans = num1 + num2
    elsif ops == "subtract"
      ans = num1 - num2
    elsif ops == "multiply"
      ans = num1 * num2
    elsif ops == "divide"
      ans = num1 / num2
    else
      ans = "Unable to perform this operation"
    end
    ans.to_s
  end
end
