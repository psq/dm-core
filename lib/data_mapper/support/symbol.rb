class Symbol
  def gt
    DataMapper::Query::Operator.new(self, :gt)
  end

  def gte
    DataMapper::Query::Operator.new(self, :gte)
  end

  def lt
    DataMapper::Query::Operator.new(self, :lt)
  end

  def lte
    DataMapper::Query::Operator.new(self, :lte)
  end

  def not
    DataMapper::Query::Operator.new(self, :not)
  end

  def eql
    DataMapper::Query::Operator.new(self, :eql)
  end

  def like
    DataMapper::Query::Operator.new(self, :like)
  end

  def in
    DataMapper::Query::Operator.new(self, :in)
  end

  def to_proc
    lambda { |value| value.send(self) }
  end
end # class Symbol
