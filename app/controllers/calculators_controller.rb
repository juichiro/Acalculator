class CalculatorsController < ApplicationController
  def new
    @calculator = Calculator.new
  end
  def result 
    @ml = params[:ml].to_i
    @percent = params[:percent].to_i / 100.to_f
    @weight = params[:weight].to_i
    @alcohol_gram = @ml * @percent * 0.8
    @times_to_breakdown = @weight * 0.1
    result = @alcohol_gram / @times_to_breakdown
    result_round = result.round(1)
    @result_hour = result_round.to_i
    @result_minitues = (result_round % 1 * 60).round
#結果が０になる時があるので解決しなければいけない?

  end 
  
  private

  def calculator_params
    params.require(:calculator).permit(:number)
  end 
  
end

