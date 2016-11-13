module CustomComparable
  ALLOWED_OPERATORS = %i(+)

  def select(&block)
    return enum_for(:each) unless block_given?

    [].tap do |result|
      each { |object| result << object if block.call(object) }
    end
  end

  def reduce(attribute, operator)
    return 0 unless each.any?

    raise ArgumentError, "Invalid attribute #{attribute}" unless each.first.respond_to? attribute

    unless operator.is_a?(Symbol) && ALLOWED_OPERATORS.include?(operator)
      raise ArgumentError, "Invalid operator #{operator}"
    end

    result = 0
    each { |object| result = result.send(operator, object.send(attribute)) }

    result
  end

  def minmax(attribute)
    return [] unless each.any?

    sorted_values = each.sort_by(&attribute)

    [sorted_values.first, sorted_values.last]
  end
end
