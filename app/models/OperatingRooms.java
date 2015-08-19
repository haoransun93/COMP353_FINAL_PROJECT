package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.format.Formats.DateTime;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class OperatingRooms extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	
	@Constraints.Required
	public String name;


	
    public static Finder<Long,OperatingRooms> find = new Finder<Long,OperatingRooms>(Long.class, OperatingRooms.class); 
	
    public static Page<OperatingRooms> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .findPagingList(pageSize)
                .getPage(page);
    }
    
    public static Map<String,String> get_room(long id) {
        LinkedHashMap<String,String> options = new LinkedHashMap<String,String>();
        for(OperatingRooms c: OperatingRooms.find.where().ilike("id", Long.toString(id)).orderBy("name").findList()) {
            options.put(c.id.toString(), c.name);
        }
        return options;
    }   
}
