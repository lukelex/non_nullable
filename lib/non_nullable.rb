require "non_nullable/version"

module NonNullable
  private
  def avoid_nil_on(*names)
    after(*names) { |result| result.nil? ? "" : result }
  end

  def after(*names)
    names.each do |name|
      m = instance_method(name)
      define_method(name) do |*args, &block|
        yield m.bind(self).(*args, &block)
      end
    end
  end
end
