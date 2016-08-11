require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
	 @rev_word= params[:name]
	 "#{@rev_word.reverse}"
	end
	
	get '/square/:number' do
	 @num = params[:number]
	 @new_num = @num.to_i ** 2
	 "#{@new_num}"
	end

	get '/say/:number/:phrase' do
	 @num_count = params[:number]
      @phrase = params[:phrase] 

	 erb :say

	 end

	 get '/say/:word1/:word2/:word3/:word4/:word5' do
            @wrd1=params[:word1]
            @wrd2=params[:word2]
            @wrd3=params[:word3]
            @wrd4=params[:word4]
            @wrd5=params[:word5]

            erb :words
	 end

	 get '/:operation/:number1/:number2' do
            @number_1=params[:number1]
            @number_2=params[:number2]
            @operation_function =params[:operation]
           
            erb :operations
	 end
end
