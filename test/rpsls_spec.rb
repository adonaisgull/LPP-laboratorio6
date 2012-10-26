
require "rspec"
require "rpsls"

describe Rpsls do
  
  before :each do
    @juego = Rpsls.new
  end
  
  it "Debe existir eleccion de humano" do
    @juego.respond_to?("human_choice").should == true
  end
  
  it "Debe existir eleccion de ordenador" do
    @juego.respond_to?("computer_choice").should == true
  end
  
end