require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    a = ''
    params[:number].to_i.times do
      a += params[:phrase]
    end
    a
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    a = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      a = (num1 + num2).to_s
    when 'subtract'
      a = (num1 - num2).to_s
    when 'multiply'
      a = (num1 * num2).to_s
    when 'divide'
      a = (num1 / num2).to_s
    end
  end
end
