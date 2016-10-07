class Age
  include Comparable

  def initialize(years_old)
    @years_old = years_old
  end

  def <=>(other)
    if other.is_a?(Age)
      years_old <=> other.years_old
    elsif other.is_a?(Numeric)
      years_old <=> other
    else
      raise ArgumentError
    end
  end

  protected

  attr_reader :years_old
end
