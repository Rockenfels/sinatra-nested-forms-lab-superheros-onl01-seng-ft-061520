class Team

  attr_accessor :name, :motto, :members

  def initialize(data)
    @name = data[:name]
    @motto = data[:motto]
    @members = data[:members]
  end

end
