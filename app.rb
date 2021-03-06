require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_in_reverse = params[:name].reverse
    "#{@name_in_reverse}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_several_times = []
    @number.times do
      @phrase_several_times << @phrase
    end
  @phrase_several_times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      (@number1 + @number2).to_s
    elsif @operation == "subtract"
      (@number1 - @number2).to_s
    elsif @operation == "multiply"
      (@number1 * @number2).to_s
    else
      (@number1 / @number2).to_s
    end
  end

end
