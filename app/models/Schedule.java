package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.format.Formats.DateTime;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class Schedule extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	
	@ManyToOne
	@Constraints.Required
	public Employee employee;	
	
	@Constraints.Required
	public Date start_date;
	
	@Constraints.Required
	public Date end_date;
	
    public static Finder<Long,Schedule> find = new Finder<Long,Schedule>(Long.class, Schedule.class); 
	
    public static Page<Schedule> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .ilike("name", "%" + filter + "%")
                .orderBy(sortBy + " " + order)
                .findPagingList(pageSize)
                .getPage(page);
    }
}
