require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

	get '/reversename/:name' do

    	@reverse_name = params[:name]

    	@reverse_name.reverse!

  	end

  	get '/square/:number' do

    	@unsquared = params[:number].to_i

    	@squared = @unsquared ** 2

    	@string_square = @squared.to_s

    	@string_square
   
  	end

  	get '/say/:number/:phrase' do

  		@number = params[:number].to_i

  		@phrase = params[:phrase]

  		counter = 0

  		@phrase_array = []

  		while counter < @number do
  			counter += 1
  			@phrase_array << @phrase
  			#binding.pry
  		end

  		@phrase_array

  	end

  	get '/say/:word1/:word2/:word3/:word4/:word5' do

  		@word1 = params[:word1]
  		@word2 = params[:word2]
  		@word3 = params[:word3]
  		@word4 = params[:word4]
  		@word5 = params[:word5]
  		@period = "."

  		@period_add = []
  		@period_add << @word5
  		@period_add << @period
  		@word5withperiod = @period_add.join
  		
  		@string = []

  		@string << @word1
  		@string << @word2
  		@string << @word3
  		@string << @word4
  		@string << @word5withperiod
  		@string.join(" ")

  	end

  	get '/:operation/:number1/:number2' do

  		@number1 = params[:number1].to_i
  		@number2 = params[:number2].to_i
  		@operation = params[:operation]

  		case @operation

  		when "add"

  			@added_num = @number1 + @number2
  			@added_num.to_s
  		

  		when "subtract"

  			@subtracted_num = @number1 - @number2
  			@subtracted_num.to_s

  	 	when "multiply"

  	 		@multiply_num = @number1 * @number2
  	 		@multiply_num.to_s

  	 	when "divide"

  	 		@div_num = @number1 / @number2
  	 		@div_num.to_s 

  		end

  	end

end