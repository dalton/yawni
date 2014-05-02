module Yawni

  # Library version.
  VERSION = '0.0.1'

  # Require Java bindings.
  require_relative 'yawni/bindings'

  # Require Ruby wrappers.
  #require 'yawni/classes'


  def self.load
    Yawni::Bindings.bind
  end

  # Load a Java class into the Yawni
  # namespace (e.g. Yawni::Loaded).
  def self.load_class(*args)
    Yawni::Bindings.load_class(*args)
  end

  # Forwards the handling of missing
  # constants to the Bindings class.
  def self.const_missing(const)
    Yawni::Bindings.const_get(const)
  end

  # Forward the handling of missing
  # methods to the Bindings class.
  def self.method_missing(sym, *args, &block)
    str = Rjb::import('java.lang.String') # import String class into the varibale 'str'
    new_args = args.collect do |a|
      if a.class == String
        a = str.new_with_sig('Ljava.lang.String;', a)
      end
      puts "#{a.class} - #{a}"
      a
    end
    Yawni::Bindings.send(sym, *new_args, &block)
  end

end
