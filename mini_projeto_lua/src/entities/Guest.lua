 -- create a namespace
    Guest = {}
    
    -- create the prototype with default values
    Guest.prototype = {name="empty", cpf="empty"}
    
    -- create a metatable
    Guest.mt = {}
    
    -- declare the constructor function
    function Guest.new (o)
      setmetatable(o, Guest.mt)
      return o
    end
    
    Guest.mt.__index = function (table, key)
      return Guest.prototype[key]
    end
    
    return Guest;



