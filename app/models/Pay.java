package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.format.Formats.DateTime;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class Pay extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	
	@Constraints.Required
	public boolean salary_or_hourly;
	
	public int annual_salary;
	public int annual_salary_increase_percentage;
	
	public int hourly_base;
	public int hourly_increase;
	public int hourly_increase_experience_years;
	
	public int overtime_rate;
	public int maximum_weekly_hours;
	
    public static Finder<Long,Pay> find = new Finder<Long,Pay>(Long.class, Pay.class); 
	
    public static Page<Pay> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .ilike("name", "%" + filter + "%")
                .orderBy(sortBy + " " + order)
                .findPagingList(pageSize)
                .getPage(page);
    }

}
