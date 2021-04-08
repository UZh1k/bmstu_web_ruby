class HomeController < ApplicationController

	before_action :authenticate, only: [:index, :result]

  def index; end

  def result
  	number = params[:number]
		#---------------validation-----------------#
		if (number.to_i == 0) and (number != "0") 
			@result = "Please, input valid number"
		else
			@result = []
            @intres = []
            @ans = 0
            n = number.to_i
            for i in 1..n
              s = (i**2).to_s
              if s.reverse == s
                @ans += 1
                @result.append(s)
                @intres.append(i.to_s)
              end
            end
		end
		#---------------end-validation-----------------#
  end
end
