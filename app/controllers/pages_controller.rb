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
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
