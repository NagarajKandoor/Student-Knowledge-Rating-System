package sprs;

import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.*;

@SuppressWarnings("serial")
public class Eightth_sem extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		// UserService userService = UserServiceFactory.getUserService();
		// User user = userService.getCurrentUser();
		try {
			int mp2_1 = Integer.parseInt(req.getParameter("mp2-1"));
			int mp2_2 = Integer.parseInt(req.getParameter("mp2-2"));
			int mp2_3 = Integer.parseInt(req.getParameter("mp2-3"));
			String final_mp2 = req.getParameter("Final-Grade-mp2");
			String sub_mp2 = req.getParameter("sub-mp2");

			int is_1 = Integer.parseInt(req.getParameter("is-1"));
			int is_2 = Integer.parseInt(req.getParameter("is-2"));
			int is_3 = Integer.parseInt(req.getParameter("is-3"));
			String final_is = req.getParameter("Final-Grade-is");
			String sub_is = req.getParameter("sub-is");

			int cc_1 = Integer.parseInt(req.getParameter("cc-1"));
			int cc_2 = Integer.parseInt(req.getParameter("cc-2"));
			int cc_3 = Integer.parseInt(req.getParameter("cc-3"));
			String final_cc = req.getParameter("Final-Grade-cc");
			String sub_cc = req.getParameter("sub-cc");

			int web_1 = Integer.parseInt(req.getParameter("web-1"));
			int web_2 = Integer.parseInt(req.getParameter("web-2"));
			int web_3 = Integer.parseInt(req.getParameter("web-3"));
			String final_web = req.getParameter("Final-Grade-web");
			String sub_web = req.getParameter("sub-web");

			int cns_1 = Integer.parseInt(req.getParameter("cns-1"));
			int cns_2 = Integer.parseInt(req.getParameter("cns-2"));
			int cns_3 = Integer.parseInt(req.getParameter("cns-3"));
			String final_cns = req.getParameter("Final-Grade-cns");
			String sub_cns = req.getParameter("sub-cns");

			String usn = req.getParameter("USN");

			String usncns = usn + sub_cns;
			String usnweb = usn + sub_web;
			String usncc = usn + sub_cc;
			String usnis = usn + sub_is;
			String usnmp2 = usn + sub_mp2;

			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();
			// key creation
			Key dbKey = KeyFactory.createKey("Student_DB", usn);
			// Table creation
			Entity STudentDB = new Entity("Eigth_DB", dbKey);

			STudentDB.setProperty("USN", usncc);
			STudentDB.setProperty("Subject", sub_cc);
			STudentDB.setProperty("Cat_1", cc_1);
			STudentDB.setProperty("Cat_2", cc_2);
			STudentDB.setProperty("Cat_3", cc_3);
			STudentDB.setProperty("Finalgrade", final_cc);

			STudentDB.setProperty("USN", usncns);
			STudentDB.setProperty("Subject", sub_cns);
			STudentDB.setProperty("Cat_1", cns_1);
			STudentDB.setProperty("Cat_2", cns_2);
			STudentDB.setProperty("Cat_3", cns_3);
			STudentDB.setProperty("Finalgrade", final_cns);

			STudentDB.setProperty("USN", usnweb);
			STudentDB.setProperty("Subject", sub_web);
			STudentDB.setProperty("Cat_1", web_1);
			STudentDB.setProperty("Cat_2", web_2);
			STudentDB.setProperty("Cat_3", web_3);
			STudentDB.setProperty("Finalgrade", final_web);

			STudentDB.setProperty("USN", usnmp2);
			STudentDB.setProperty("Subject", sub_mp2);
			STudentDB.setProperty("Cat_1", mp2_1);
			STudentDB.setProperty("Cat_2", mp2_2);
			STudentDB.setProperty("Cat_3", mp2_3);
			STudentDB.setProperty("Finalgrade", final_mp2);

			STudentDB.setProperty("USN", usnis);
			STudentDB.setProperty("Subject", sub_is);
			STudentDB.setProperty("Cat_1", is_1);
			STudentDB.setProperty("Cat_2", is_2);
			STudentDB.setProperty("Cat_3", is_3);
			STudentDB.setProperty("Finalgrade", final_is);

			datastore.put(STudentDB);
			resp.getWriter().println(
					"<center><H1> Details:" + usnis + ", " + final_is
							+ "</H1></center>");
		} catch (Exception e) {
			resp.getWriter().println(
					"Sorry your deatils not saved to server</H1></center>");
		}
	}
}
