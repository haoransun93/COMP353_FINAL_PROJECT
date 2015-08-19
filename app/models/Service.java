package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class Service extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	
	@Constraints.Required
	public String name;	

	@ManyToOne
	@Constraints.Required
	public Unit unit;
	
	@Constraints.Required	
	public Double cost;
	
    public static Finder<Long,Service> find = new Finder<Long,Service>(Long.class, Service.class); 
	
    public static Page<Service> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .ilike("name", "%" + filter + "%")
                .orderBy(sortBy + " " + order)
                .findPagingList(pageSize)
                .getPage(page);
    }
	public static Map<String,String> options() {
        LinkedHashMap<String,String> options = new LinkedHashMap<String,String>();
        for(Service c: Service.find.findList()) {
            options.put(c.id.toString(), c.name);
        }
        return options;
    }   
}
