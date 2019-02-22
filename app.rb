require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    params[:phrase] * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    opr = params[:operation]
    numone = params[:number1].to_i
    numtwo = params[:number2].to_i
      case opr
        when "add"
          (numone + numtwo).to_s
        when "subtract"
          (numone - numtwo).to_s
        when "divide"
          (numone / numtwo).to_s
        when "multiply"
          (numone * numtwo).to_s
        end
  end
end