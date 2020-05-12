require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  # This is a sample static route.
  get '/reversename/:name' do
    user_name = params[:name]
    "#{user_name.reverse}"
  end

  # This is a sample dynamic route.
  get '/square/:number' do
    number = params[:number].to_i ** 2
    "#{number.to_s}"
  end

  # Code your final two routes here:
  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
      phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    phrase1 = params[:word1]
    phrase2 = params[:word2]
    phrase3 = params[:word3]
    phrase4 = params[:word4]
    phrase5 = params[:word5]
    "#{phrase1} #{phrase2} #{phrase3} #{phrase4} #{phrase5}."
  end

  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation.downcase == "add"
      answer = (number1 + number2)
      answer.to_s
    elsif operation.downcase == "subtract"
      answer = (number1 - number2)
      answer.to_s
    elsif operation.downcase == "multiply"
      answer = (number1 * number2)
      answer.to_s
    elsif operation.downcase == "divide"
      answer = (number1 / number2)
      answer.to_s
    end
  end


end