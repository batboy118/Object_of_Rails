# app/helpers/exhibits_helper.rb
module ExhibitsHelper
     def exhibit(model, context)
        Exhibit.exhibit(model, context)
    end
end
