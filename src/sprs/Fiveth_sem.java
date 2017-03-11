package sprs;

import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.*;

@SuppressWarnings("serial")
public class Fiveth_sem extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		// UserService userService = UserServiceFactory.getUserService();
		// User user = userService.getCurrentUser();
		try {
			int dbms_1 = Integer.parseInt(req.getParameter("dbms-1"));
			int dbms_2 = Integer.parseInt(req.getParameter("dbms-2"));
			int dbms_3 = Integer.parseInt(req.getParameter("dbms-3"));
			String final_dbms = req.getParameter("Final-Grade-dbms");
			String sub_dbms = req.getParameter("sub-dbms");

			int dbmslab_1 = Integer.parseInt(req.getParameter("dbmslab-1"));
			int dbmslab_2 = Integer.parseInt(req.getParameter("dbmslab-2"));
			int dbmslab_3 = Integer.parseInt(req.getParameter("dbmslab-3"));
			String final_dbmslab = req.getParameter("Final-Grade-dbmslab");
			String sub_dbmslab = req.getParameter("sub-dbmslab");

			int sslab_1 = Integer.parseInt(req.getParameter("sslab-1"));
			int sslab_2 = Integer.parseInt(req.getParameter("sslab-2"));
			int sslab_3 = Integer.parseInt(req.getParameter("sslab-3"));
			String final_sslab = req.getParameter("Final-Grade-sslab");
			String sub_sslab = req.getParameter("sub-sslab");

			int cd_1 = Integer.parseInt(req.getParameter("cd-1"));
			int cd_2 = Integer.parseInt(req.getParameter("cd-2"));
			int cd_3 = Integer.parseInt(req.getParameter("cd-3"));
			String final_cd = req.getParameter("Final-Grade-cd");
			String sub_cd = req.getParameter("sub-cd");

			int dc_1 = Integer.parseInt(req.getParameter("dc-1"));
			int dc_2 = Integer.parseInt(req.getParameter("dc-2"));
			int dc_3 = Integer.parseInt(req.getParameter("dc-3"));
			String final_dc = req.getParameter("Final-Grade-dc");
			String sub_dc = req.getParameter("sub-dc");

			int os_1 = Integer.parseInt(req.getParameter("os-1"));
			int os_2 = Integer.parseInt(req.getParameter("os-2"));
			int os_3 = Integer.parseInt(req.getParameter("os-3"));
			String final_os = req.getParameter("Final-Grade-os");
			String sub_os = req.getParameter("sub-os");

			int se_1 = Integer.parseInt(req.getParameter("se-1"));
			int se_2 = Integer.parseInt(req.getParameter("se-2"));
			int se_3 = Integer.parseInt(req.getParameter("se-3"));
			String final_se = req.getParameter("Final-Grade-se");
			String sub_se = req.getParameter("sub-se");

			int meip_1 = Integer.parseInt(req.getParameter("meip-1"));
			int meip_2 = Integer.parseInt(req.getParameter("meip-2"));
			int meip_3 = Integer.parseInt(req.getParameter("meip-3"));
			String final_meip = req.getParameter("Final-Grade-meip");
			String sub_meip = req.getParameter("sub-meip");

			String usn = req.getParameter("USN");

			String usncd = usn + sub_cd;
			String usnmeip = usn + sub_meip;
			String usndc = usn + sub_dc;
			String usnos = usn + sub_os;
			String usnse = usn + sub_se;
			String usndbms = usn + sub_dbms;
			String usndbmslab = usn + sub_dbmslab;
			String usnsslab = usn + sub_sslab;

			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();

			Key dbKey = KeyFactory.createKey("Student_DB", usn);
			Entity STudentDB = new Entity("Fiveth_DB", dbKey);

			STudentDB.setProperty("USN", usnmeip);
			STudentDB.setProperty("Subject", sub_meip);
			STudentDB.setProperty("Cat_1", meip_1);
			STudentDB.setProperty("Cat_2", meip_2);
			STudentDB.setProperty("Cat_3", meip_3);
			STudentDB.setProperty("Finalgrade", final_meip);

			STudentDB.setProperty("USN", usndc);
			STudentDB.setProperty("Subject", sub_dc);
			STudentDB.setProperty("Cat_1", dc_1);
			STudentDB.setProperty("Cat_2", dc_2);
			STudentDB.setProperty("Cat_3", dc_3);
			STudentDB.setProperty("Finalgrade", final_dc);

			STudentDB.setProperty("USN", usncd);
			STudentDB.setProperty("Subject", sub_cd);
			STudentDB.setProperty("Cat_1", cd_1);
			STudentDB.setProperty("Cat_2", cd_2);
			STudentDB.setProperty("Cat_3", cd_3);
			STudentDB.setProperty("Finalgrade", final_cd);

			STudentDB.setProperty("USN", usnsslab);
			STudentDB.setProperty("Subject", sub_sslab);
			STudentDB.setProperty("Cat_1", sslab_1);
			STudentDB.setProperty("Cat_2", sslab_2);
			STudentDB.setProperty("Cat_3", sslab_3);
			STudentDB.setProperty("Finalgrade", final_sslab);

			STudentDB.setProperty("USN", usndbms);
			STudentDB.setProperty("Subject", sub_dbms);
			STudentDB.setProperty("Cat_1", dbms_1);
			STudentDB.setProperty("Cat_2", dbms_2);
			STudentDB.setProperty("Cat_3", dbms_3);
			STudentDB.setProperty("Finalgrade", final_dbms);

			STudentDB.setProperty("USN", usndbmslab);
			STudentDB.setProperty("Subject", sub_dbmslab);
			STudentDB.setProperty("Cat_1", dbmslab_1);
			STudentDB.setProperty("Cat_2", dbmslab_2);
			STudentDB.setProperty("Cat_3", dbmslab_3);
			STudentDB.setProperty("Finalgrade", final_dbmslab);

			STudentDB.setProperty("USN", usnse);
			STudentDB.setProperty("Subject", sub_se);
			STudentDB.setProperty("Cat_1", se_1);
			STudentDB.setProperty("Cat_2", se_2);
			STudentDB.setProperty("Cat_3", se_3);
			STudentDB.setProperty("Finalgrade", final_se);

			STudentDB.setProperty("USN", usnos);
			STudentDB.setProperty("Subject", sub_os);
			STudentDB.setProperty("Cat_1", os_1);
			STudentDB.setProperty("Cat_2", os_2);
			STudentDB.setProperty("Cat_3", os_3);
			STudentDB.setProperty("Finalgrade", final_os);

			datastore.put(STudentDB);
			resp.getWriter().println(
					"<center><H1> Details:" + sub_meip + ", " + final_meip
							+ "</H1></center>");
		} catch (Exception e) {
			resp.getWriter().println(
					"Sorry your deatils not saved to server</H1></center>");
		}
	}
}
