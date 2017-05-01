# ----->Release 0: Design a Class<-------

# Species-----------------------
	# Puppy

# Puppy characteristics----------
	# Size: Small
	# Hair Style: Fluffy
	# Sound: Bark!
	# Color: varies
	# Eye count: 2
	# Friendly: yes

# Puppy behavior-----------------
	# Walk
	# Sprint
	# Hop
	# Energetic

#____
# ----->Release 1: Declare Your Class and Create an Instance in IRB<-------
# -->Copied from IRB<---
# 
# irb(main):007:0> class Puppy
# irb(main):008:1> end
# => nil
# irb(main):009:0> Puppy.methods
# => [:new, :allocate, :superclass, :<=>, :module_exec, :class_exec, :<=, :>=, :==, :===, :include?, :included_modules, :ancestors, :name, :public_instance_methods, :instance_methods, :private_instance_methods, :protected_instance_methods, :const_get, :constants, :const_defined?, :const_set, :class_variables, :class_variable_get, :remove_class_variable, :class_variable_defined?, :class_variable_set, :private_constant, :public_constant, :singleton_class?, :deprecate_constant, :freeze, :inspect, :module_eval, :const_missing, :prepend, :method_defined?, :class_eval, :public_method_defined?, :private_method_defined?, :<, :public_class_method, :>, :protected_method_defined?, :private_class_method, :to_s, :autoload, :autoload?, :instance_method, :public_instance_method, :include, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :define_singleton_method, :is_a?, :public_method, :extend, :singleton_method, :to_enum, :enum_for, :=~, :!~, :eql?, :respond_to?, :display, :object_id, :send, :method, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
# irb(main):010:0> duchess = Puppy.new
# => #<Puppy:0x007f8d70191a68>
# irb(main):011:0> fido = Puppy.new
# => #<Puppy:0x007f8d70199c18>
# irb(main):012:0> spot = Puppy.new
# => #<Puppy:0x007f8d701220c8>
# irb(main):013:0> spot.class
# => Puppy
# irb(main):014:0> duchess == fido
# => false
# irb(main):015:0> fido.instance_of?(Array)
# => false
# irb(main):016:0> fido.instance_of?(Puppy)
# => true
# irb(main):017:0> spot.play_dead
# NoMethodError: undefined method `play_dead' for #<Puppy:0x007f8d701220c8>
# 	from (irb):17
# 	from /Users/adamweil/.rbenv/versions/2.3.3/bin/irb:11:in `<main>'
# irb(main):018:0> 

#____
# ----->Release 2: Practice Using Class Methods and Instance Methods<-------
# -->Copied from IRB<---
# 
# irb(main):018:0> str = String.new
# => ""
# irb(main):019:0> str.length
# => 0
# irb(main):020:0> str.empty?
# => true
# irb(main):021:0> str += "huh."
# => "huh."
# irb(main):022:0> str = "some string"
# => "some string"
# irb(main):023:0> greeting = String.new("hello")
# => "hello"
# irb(main):024:0> greeting.length
# => 5
# irb(main):025:0> greeting.upcase
# => "HELLO"
# irb(main):026:0>

#____
