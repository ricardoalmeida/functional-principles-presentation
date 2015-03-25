# https://github.com/jdantonio/functional-ruby
require 'rubygems'
require "functional"

class Foo
  include Functional::PatternMatching
  include Functional::Protocol
  include Functional::TypeCheck

  defn(:greet) do |name|
    "Hello, World!"
  end

  defn(:greet, _) do |name|
    "Hello, #{name}!"
  end

  defn(:greet, _) { |name|
    "Hello, #{name.first} #{name.last}!"
  }.when {|name| Satisfy?(name, :Name) }

  defn(:greet, :doctor, _) { |name|
    "Hello, Dr. #{name}!"
  }

  defn(:greet, nil, _) { |name|
    "Goodbye, #{name}!"
  }

  defn(:greet, _, _) { |_, name|
    "Hello, #{name}!"
  }
end

puts Foo.new.greet :doctor, "Ricardo"
