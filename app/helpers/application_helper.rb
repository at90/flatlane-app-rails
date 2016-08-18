module ApplicationHelper
	def numeralify (val)
		
		if val <=9000000 
			val=val/100000
			numer="#{val} lacs"
		end

		if val >=9000000.0
			val=val/10000000.0
			fl_val=number_with_precision(val, :precision => 1)
			numer="#{fl_val} Cr"
		end

		return numer  
	end
	
	
  def curr_city
    curr_city=@city
  end
	
	def home_icon (cat)
	  if cat == 1
	    cat_icon ="home"
	  end
	  
	  if cat == 2
      cat_icon ="building"
    end
    
	  if cat == 3
      cat_icon ="tree"
    end
	  return cat_icon
	end

	
	def similarHomes(cityID,homeID)
	  project = Home.all
    filter=[]
    id = cityID
    project.each do |project| 
          if project.c_id==id && project.id!=homeID
            filter.push(project)
          end
    end
    return filter
	end
	
	def builderName(builderID)
	  builder=Builder.find(builderID).b_name
	  return builder
	end
	
end
