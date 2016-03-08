class HelloWorld
  def self.hello(name = "")
    name.empty? ? "Hello, World!" : "Hello, #{name}!"
  end
end
