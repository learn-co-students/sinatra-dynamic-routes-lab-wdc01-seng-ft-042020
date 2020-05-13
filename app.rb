require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @arr = @word1 = params[:word1], @word2 = params[:word2], @word3 = params[:word3], @word4 = params[:word4], @word5 = params[:word5]
    "#{@arr.join(" ")}."

  end

  get '/:operation/:number1/:number2' do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i

      answer = 'Unable to perform this operation'

      case params[:operation]
      when 'add'
        answer = (@num1 + @num2).to_s
      when 'subtract'
        answer = (@num1 - @num2).to_s
      when 'multiply'
        answer = (@num1 * @num2).to_s
      when 'divide'
        answer = (@num1 / @num2).to_s
      end
    end

  end




