require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse!
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
  answer = ''

  params[:number].to_i.times do
    answer += params[:phrase]
  end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @answer = params[:word1] + ' ' + params[:word2] + ' '+ params[:word3] + ' ' + params[:word4] + ' ' + params[:word5]
    "#{@answer}."
  end

  get '/:operation/:number1/:number2' do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      answer = (num_1 + num_2).to_s
    when 'subtract'
      answer = (num_2 - num_1).to_s
    when 'multiply'
      answer = (num_1 * num_2).to_s
    when 'divide'
      answer = (num_1 / num_2).to_s


  end
end
end
