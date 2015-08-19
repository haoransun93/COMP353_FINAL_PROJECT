package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class Orders extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	
	@Constraints.Required
	public Date date;
	
    public static Model.Finder<Long,Orders> find = new Model.Finder<Long,Orders>(Long.class, Orders.class);
    
    public static Page<Orders> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .orderBy(sortBy + " " + order)
                .findPagingList(pageSize)
                .getPage(page);
    }
    
    public static Map<String,String> options() {
        LinkedHashMap<String,String> options = new LinkedHashMap<String,String>();
        for(Orders c: Orders.find.orderBy("id").findList()) {
            options.put(c.id.toString(), c.id.toString());
        }
        return options;
    }   
}