class PagesController < ApplicationController
  def home
  end

  def dinosaur
    @dinos = ['tyrannosaurus', 'stegosaurus', 'spinosaurus', 'triceratops', 'allosaurus', 'velociraptor', 'brachiosaurus', 'ankylosaurus' ]

    if params[:dino]
      @dinos = @dinos.select { |dino| dino.start_with?(params[:dino]) }
    end
  end

  def animal
    @animals = ['tiger', 'elephant', 'lion', 'hippopotamus', 'bear', 'horse']

    if params[:animal]
      @animals = @animals.select { |animal| animal.start_with?(params[:animal]) }
    end
  end
end
