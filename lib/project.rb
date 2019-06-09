class Project
  attr_reader :title, :backers, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    update_backer = @backers << backer
    update_backer.map {|x| x.backed_projects << self}
  end
end
