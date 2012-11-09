
require "rspec"
require "rpsls"

describe Rpsls do
  
  before :each do
    @juego = Rpsls.new
  end
  
  #test 1
  it "Debe existir eleccion de humano" do
    @juego.respond_to?("human_choice").should == true
  end
  
  #test 2
  it "Debe existir eleccion de ordenador" do
    @juego.respond_to?("computer_choice").should == true
  end
  
  #test 3
  it "Debe existir una lista de jugadas validas" do
    @juego.respond_to?("valid_choices").should == true    
  end
  
  #test 4
  it "Debe existir una lista de jugadas posibles y quien gana" do
    @juego.respond_to?("beats").should == true && @juego.respond_to?("winner").should == true
  end
  
  #test 5
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (Se pasa opcion valida)" do 
    @juego.get_human("rock");
    @juego.valid_choices.include?(@juego.human_choice).should == true
  end
  
  #test 6
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (Se pasa opcion no valida)" do 
    @juego.get_human("invalid_choice");
    @juego.valid_choices.include?(@juego.human_choice).should == false
  end
  
  #test 6
  it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
    @juego.get_computer()
    @juego.valid_choices.include?(@juego.computer_choice).should == true
  end
  
  #test 7
  #it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
  #end
  
  #test 8
  it "Debe existir un resultado para un juego, desde el punto de vista de lamaquina" do
    @juego.respond_to?("result").should == true
  end
  
end








