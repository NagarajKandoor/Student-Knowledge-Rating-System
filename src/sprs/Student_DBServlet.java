package sprs;

import java.io.IOException;
import javax.servlet.http.*;
import com.google.appengine.api.datastore.*;

@SuppressWarnings("serial")
public class Student_DBServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		// UserService userService = UserServiceFactory.getUserService();
		// User user = userService.getCurrentUser();
		try {
			int dms_1 = Integer.parseInt(req.getParameter("dms-1"));
			int dms_2 = Integer.parseInt(req.getParameter("dms-2"));
			int dms_3 = Integer.parseInt(req.getParameter("dms-3"));
			String final_dms = req.getParameter("Final-Grade-dms");
			String sub_dms = req.getParameter("sub-dms");

			int adelab_1 = Integer.parseInt(req.getParameter("adelab-1"));
			int adelab_2 = Integer.parseInt(req.getParameter("adelab-2"));
			int adelab_3 = Integer.parseInt(req.getParameter("adelab-3"));
			String final_adelab = req.getParameter("Final-Grade-adelab");
			String sub_adelab = req.getParameter("sub-adelab");

			int dslab_1 = Integer.parseInt(req.getParameter("dslab-1"));
			int dslab_2 = Integer.parseInt(req.getParameter("dslab-2"));
			int dslab_3 = Integer.parseInt(req.getParameter("dslab-3"));
			String final_dslab = req.getParameter("Final-Grade-dslab");
			String sub_dslab = req.getParameter("sub-dslab");

			int ade_1 = Integer.parseInt(req.getParameter("ade-1"));
			int ade_2 = Integer.parseInt(req.getParameter("ade-2"));
			int ade_3 = Integer.parseInt(req.getParameter("ade-3"));
			String final_ade = req.getParameter("Final-Grade-ade");
			String sub_ade = req.getParameter("sub-ade");

			int ds_1 = Integer.parseInt(req.getParameter("ds-1"));
			int ds_2 = Integer.parseInt(req.getParameter("ds-2"));
			int ds_3 = Integer.parseInt(req.getParameter("ds-3"));
			String final_ds = req.getParameter("Final-Grade-ds");
			String sub_ds = req.getParameter("sub-ds");

			int m3_1 = Integer.parseInt(req.getParameter("m3-1"));
			int m3_2 = Integer.parseInt(req.getParameter("m3-2"));
			int m3_3 = Integer.parseInt(req.getParameter("m3-3"));
			String final_m3 = req.getParameter("Final-Grade-m3");
			String sub_m3 = req.getParameter("sub-m3");

			int fafl_1 = Integer.parseInt(req.getParameter("fafl-1"));
			int fafl_2 = Integer.parseInt(req.getParameter("fafl-2"));
			int fafl_3 = Integer.parseInt(req.getParameter("fafl-3"));
			String final_fafl = req.getParameter("Final-Grade-fafl");
			String sub_fafl = req.getParameter("sub-fafl");

			int iopp_1 = Integer.parseInt(req.getParameter("iopp-1"));
			int iopp_2 = Integer.parseInt(req.getParameter("iopp-2"));
			int iopp_3 = Integer.parseInt(req.getParameter("iopp-3"));
			String final_iopp = req.getParameter("Final-Grade-iopp");
			String sub_iopp = req.getParameter("sub-iopplab");

			String usn = req.getParameter("USN");

			String usndms = usn + sub_dms;
			String usnadelab = usn + sub_adelab;
			String usnade = usn + sub_ade;
			String usndslab = usn + sub_dslab;
			String usnds = usn + sub_ds;
			String usnfafl = usn + sub_fafl;
			String usnm3 = usn + sub_m3;
			String usniopp = usn + sub_iopp;

			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();

			Key dbKey = KeyFactory.createKey("Student_DB", usn);
			Entity STudentDB = new Entity("Third_DB", dbKey);

			STudentDB.setProperty("USN", usniopp);

			STudentDB.setProperty("Subject", sub_iopp);
			STudentDB.setProperty("Cat_1", iopp_1);
			STudentDB.setProperty("Cat_2", iopp_2);
			STudentDB.setProperty("Cat_3", iopp_3);
			STudentDB.setProperty("Finalgrade", final_iopp);

			STudentDB.setProperty("USN", usndms);

			STudentDB.setProperty("Subject", sub_dms);
			STudentDB.setProperty("Cat_1", dms_1);
			STudentDB.setProperty("Cat_2", dms_2);
			STudentDB.setProperty("Cat_3", dms_3);
			STudentDB.setProperty("Finalgrade", final_dms);

			STudentDB.setProperty("USN", usnm3);

			STudentDB.setProperty("Subject", sub_m3);
			STudentDB.setProperty("Cat_1", m3_1);
			STudentDB.setProperty("Cat_2", m3_2);
			STudentDB.setProperty("Cat_3", m3_3);
			STudentDB.setProperty("Finalgrade", final_m3);

			STudentDB.setProperty("USN", usndslab);

			STudentDB.setProperty("Subject", sub_dslab);
			STudentDB.setProperty("Cat_1", dslab_1);
			STudentDB.setProperty("Cat_2", dslab_2);
			STudentDB.setProperty("Cat_3", dslab_3);
			STudentDB.setProperty("Finalgrade", final_dslab);

			STudentDB.setProperty("USN", usnds);

			STudentDB.setProperty("Subject", sub_ds);
			STudentDB.setProperty("Cat_1", ds_1);
			STudentDB.setProperty("Cat_2", ds_2);
			STudentDB.setProperty("Cat_3", ds_3);
			STudentDB.setProperty("Finalgrade", final_ds);

			STudentDB.setProperty("USN", usnadelab);

			STudentDB.setProperty("Subject", sub_adelab);
			STudentDB.setProperty("Cat_1", adelab_1);
			STudentDB.setProperty("Cat_2", adelab_2);
			STudentDB.setProperty("Cat_3", adelab_3);
			STudentDB.setProperty("Finalgrade", final_adelab);

			STudentDB.setProperty("USN", usnade);
			STudentDB.setProperty("Subject", sub_ade);
			STudentDB.setProperty("Cat_1", ade_1);
			STudentDB.setProperty("Cat_2", ade_2);
			STudentDB.setProperty("Cat_3", ade_3);
			STudentDB.setProperty("Finalgrade", final_ade);

			STudentDB.setProperty("USN", usnfafl);
			STudentDB.setProperty("Subject", sub_fafl);
			STudentDB.setProperty("Cat_1", fafl_1);
			STudentDB.setProperty("Cat_2", fafl_2);
			STudentDB.setProperty("Cat_3", fafl_3);
			STudentDB.setProperty("Finalgrade", final_fafl);

			datastore.put(STudentDB);
			resp.getWriter().println(
					"<center><H1> Details:" + usnade + ", " + usnfafl
							+ "</H1></center>");
		} catch (Exception e) {
			resp.getWriter().println("Your Deatils not saved sorry");
		}
	}
}