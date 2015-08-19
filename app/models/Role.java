package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.format.Formats.DateTime;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class Role extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	
	@Constraints.Required
	public String name;	

	@ManyToOne
	@Constraints.Required
	public Pay pay;
	
    public static Finder<Long,Role> find = new Finder<Long,Role>(Long.class, Role.class); 
	
    public static Page<Role> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .ilike("name", "%" + filter + "%")
                .orderBy(sortBy + " " + order)
                .findPagingList(pageSize)
                .getPage(page);
    }
    
    public static Page<Role> payroll(String user_role, int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.fetch("pay")
            	.where()
                .ilike("id", user_role)
                .findPagingList(pageSize)
                .getPage(page);
    }
}
