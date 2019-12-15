class RpgController < ApplicationController
  def index
    unless session[:gold]
      session[:gold] = Array.new
      puts session[:gold]
    end

    unless session[:activities]
      session[:activities]= [] 
    end
  end

  def farm
    gold = rand(10..20)
    session[:gold]+=gold
    session[:activities].unshift("Earned #{gold}!")
    redirect_to "/"
  end
  def cave
    gold = rand(5..10)
    session[:gold]+=gold
    session[:activities].unshift("Earned #{gold}!")
    redirect_to "/"
  end
  def house
    gold = rand(2..5)
    session[:gold]+=gold
    session[:activities].unshift("Earned #{gold}!")
    redirect_to "/"
  end
  def casino
    gold = rand(-50..50)
    session[:gold]+=gold
    session[:activities].unshift("Earned #{gold}!") if gold > 0
    session[:activities].unshift("Lost #{gold}!") if gold < 0
    redirect_to "/"
  end

  def reset
    session[:gold]=0
    session[:activities]=Array.new
    redirect_to "/"
  end

end
