class DemoController < ApplicationController

  layout false

  def index
  	#render('hello')

  end

  def hello
    @array = [1,2,3,4]
    @id = params[:id].to_i
  	@page = params[:page].to_i
  end
  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  	end

  	def ign 
      redirect_to('http://ign.com')
  	end 
    def greet
      "I am the controller!"
    end

end
