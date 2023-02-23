class GenerateRandomNumber
  def initialize(start, end)
    @start = start
    @end = end
  end

  def call
    random_number
  end

  private

  def random_number
    rand(start..end)
  end

end


# GenerateRandom.new(1,10).call

