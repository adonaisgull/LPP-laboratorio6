
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
  
  it "Debe existir una lista de jugadas validas" do
    @juego.respond_to?("valid_choices").should == true    
  end
  
  it "Debe existir una lista de jugadas posibles y quien gana" do
    @juego.respond_to?("beats").should == true && @juego.respond_to?("winner").should == true
  end
  
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (Se pasa opcion valida)" do 
    @juego.get_human("rock");
    @juego.valid_choices.include?(@juego.human_choice).should == true
  end
  
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (Se pasa opcion no valida)" do 
    @juego.get_human("invalid_choice");
    @juego.valid_choices.include?(@juego.human_choice).should == false
  end
end