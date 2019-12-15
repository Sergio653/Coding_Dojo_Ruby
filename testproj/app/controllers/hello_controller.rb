class HelloController < ApplicationController
  @@count = 0
  def index
    render :text => "What do you want me to say???"
  end
  def hello
    render :text => "Hello CodingDojo!!!!"
  end
  def say
    render :text => "Saying Hello!"
  end

  def joe
    render :text => "Saying Hello Joe!!!"
  end

  def micheal
    redirect_to '/say/hello/joe'
  end
  def times
    @@count +=1
    puts session[:count] = @@count
    render :text => @@count
  end
  def reset
    @@count = 0
    render :text => @@count
  end
end
