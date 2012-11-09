#
# rpsls.rb
# Class Rpsls
#

class Rpsls
  
  attr_reader :human_choice, :computer_choice, :valid_choices, :beats, :winner
  
  def initialize()
    @valid_choices = [:rock, :paper, :scissors, :lizard, :spock]
  end
  
  def get_human(human_choice)
    human_choice = human_choice.to_sym    
    if @valid_choices.include?(human_choice)
      @human_choice = human_choice
    end
  end
  
  def get_computer()
    @computer_choice = @valid_choices.sample
  end
end