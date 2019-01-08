require 'pry'

class Puppy

    attr_accessor :name, :age
    attr_reader :breed

    @@all = []

    def initialize(params)
        @name = params[:name]
        @breed = params[:breed]
        @age =  params[:months_old]
        @@all << self
    end

    def self.all 
        @@all
    end
end