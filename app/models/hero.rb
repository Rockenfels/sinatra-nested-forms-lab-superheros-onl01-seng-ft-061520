class Hero

  attr_reader :name, :power, :bio

  def initialize(data)
    @name = data[:name]
    @power = data[:power]
    @bio = data[:bio]
  end

end
