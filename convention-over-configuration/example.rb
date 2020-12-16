class SayHello
  attr_reader :klass_name
  ALLOWED_KLASS_NAMES = ['BrazilPerson', 'LithuanianPerson']

  def initialize(klass_name)
    unless ALLOWED_KLASS_NAMES.include?(klass_name.to_s)
      fail "#{klass_name} Not included in ALLOWED_KLASS_NAMES"
    end

    @klass_name = klass_name
  end

  def call
    klass_name.new.hello
  end
end

class Person
  def hello
    fail NotImplementedError
  end
end

class BrazilPerson < Person
  def hello
    'bom dia'
  end
end

class LithuanianPerson < Person
  def hello
    'Sveikas'
  end
end

class RandomPerson < Person
end

p SayHello.new(BrazilPerson).call
p SayHello.new(LithuanianPerson).call
p SayHello.new(RandomPerson).call
