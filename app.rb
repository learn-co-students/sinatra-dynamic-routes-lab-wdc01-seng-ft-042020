require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      @name = params[:name].reverse
      erb :name
  end

  get '/square/:number' do
      @num = params[:number].to_i
      erb :sq
  end

  get '/say/:number/:phrase' do
      @num = params[:number].to_i
      @phr = params[:phrase]
      erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      @w1 = params[:word1]
      @w2 = params[:word2]
      @w3 = params[:word3]
      @w4 = params[:word4]
      @w5 = params[:word5]
      @sent = [@w1, @w2, @w3, @w4, @w5].join(' ')
      erb :concat
  end

  get '/:operation/:number1/:number2' do
      op = params[:operation]
      num1 = params[:number1]
      num2 = params[:number2]
      op_hsh = {'add'=> '+', 'subtract' => '-', 'multiply' => '*', 'divide' => '/'}

      @expr = "#{num1} #{op_hsh[op]} #{num2}"
      erb :calc
  end

end
