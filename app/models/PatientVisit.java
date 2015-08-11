package models;
import java.util.*;

import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.format.Formats.DateTime;
import play.data.validation.*;

import com.avaje.ebean.*;

@Entity
public class PatientVisit extends Model{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;

	@Constraints.Required
	@Formats.DateTime(pattern="yyyy-MM-dd")
	public Date date_of_visit;
	
	@Formats.DateTime(pattern="yyyy-MM-dd")
	public Date date_of_leave;
	
	@ManyToOne
	@Constraints.Required
	public Unit unit;
	
	@ManyToOne
	@Constraints.Required
	public Patient patient;
	
    public static Finder<Long,PatientVisit> find = new Finder<Long,PatientVisit>(Long.class, PatientVisit.class);

	/*public static Page<PatientVisit> visit_page(long patient_id, int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                .ilike("patient.id", Long.toString(patient_id))
                .findPagingList(pageSize)
                .getPage(page);
    }*/ // FORGET THIS PART
	
	
    public static Page<PatientVisit> page(int page, int pageSize, String sortBy, String order, String filter) {
        return 
            find.where()
                //.ilike("name", "%" + filter + "%")
                .findPagingList(pageSize)
                .getPage(page);
    }
	
	public static Map<String,String> find_the_id(long id) {
        LinkedHashMap<String,String> options = new LinkedHashMap<String,String>();
		PatientVisit pv = PatientVisit.find.byId(id);
        options.put(pv.id.toString(), pv.id.toString());     
        return options;
    }
	
	/*public static Map<String,Long> options() {
        LinkedHashMap<String,Long> options = new LinkedHashMap<String,Long>();
        for(PatientVisit c: PatientVisit.find.findList()) {
            options.put(c.id.toString(), c.id);
        }
        return options;
    }*/
}