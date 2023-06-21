class PagesController < ApplicationController
  def home
  end

  def dinosaur
    @dinos = ['tyrannosaurus', 'stegosaurus', 'spinosaurus', 'triceratops', 'allosaurus', 'velociraptor', 'brachiosaurus', 'ankylosaurus' ]

    search = params[:dino]

    if search
      @dinos = @dinos.select do |dino|
        dino.start_with? search.downcase
      end
    end
  end

  def animal
    @animals = ['tiger', 'elephant', 'lion', 'hippopotamus', 'bear', 'horse']

    if params[:animal]
      @animals = @animals.select { |animal| animal.start_with?(params[:animal]) }
    end
  end
end
