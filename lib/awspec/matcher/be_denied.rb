RSpec::Matchers.define :be_denied do |port|
  match do |resource|
    resource.denied?(port, @protocol, @cidr, @rule_number)
  end

  chain :protocol do |protocol|
    @protocol = protocol
  end

  chain :for do |cidr|
    @cidr = cidr
  end

  chain :target do |cidr|
    @cidr = cidr
  end

  chain :source do |cidr|
    @cidr = cidr
  end

  chain :rule_number do |rule_number|
    @rule_number = rule_number
  end
end
