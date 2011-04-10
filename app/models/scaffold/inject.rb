module Scaffold

  class Mapper
    
    attr_accessor :maps
    
    def initialize
      @maps=[]
    end
    
    def map(key,opt={})
      @maps << [key,opt]
    end
    
  end

  module Inject
    
    def mapper()
        mp=Mapper.new
        mp.instance_eval(&Proc.new) if block_given?
        
        const_set(:FIELDS,mp.maps)
        
    end
    
  end
  
end