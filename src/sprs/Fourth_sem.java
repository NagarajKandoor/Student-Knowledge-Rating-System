package sprs;

import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.*;

@SuppressWarnings("serial")
public class Fourth_sem extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		// UserService userService = UserServiceFactory.getUserService();
		// User user = userService.getCurrentUser();
		try {
			int mc_1 = Integer.parseInt(req.getParameter("mc-1"));
			int mc_2 = Integer.parseInt(req.getParameter("mc-2"));
			int mc_3 = Integer.parseInt(req.getParameter("mc-3"));
			String final_mc = req.getParameter("Final-Grade-mc");
			String sub_mc = req.getParameter("sub-mic");

			int ooplab_1 = Integer.parseInt(req.getParameter("ooplab-1"));
			int ooplab_2 = Integer.parseInt(req.getParameter("ooplab-2"));
			int ooplab_3 = Integer.parseInt(req.getParameter("ooplab-3"));
			String final_ooplab = req.getParameter("Final-Grade-ooplab");
			String sub_ooplab = req.getParameter("sub-ooplab");

			int ada_1 = Integer.parseInt(req.getParameter("ada-1"));
			int ada_2 = Integer.parseInt(req.getParameter("ada-2"));
			int ada_3 = Integer.parseInt(req.getParameter("ada-3"));
			String final_ada = req.getParameter("Final-Grade-ada");
			String sub_ada = req.getParameter("sub-ada");

			int oop_1 = Integer.parseInt(req.getParameter("oop-1"));
			int oop_2 = Integer.parseInt(req.getParameter("oop-2"));
			int oop_3 = Integer.parseInt(req.getParameter("oop-3"));
			String final_oop = req.getParameter("Final-Grade-oop");
			String sub_oop = req.getParameter("sub-oop");

			int m4_1 = Integer.parseInt(req.getParameter("m4-1"));
			int m4_2 = Integer.parseInt(req.getParameter("m4-2"));
			int m4_3 = Integer.parseInt(req.getParameter("m4-3"));
			String final_m4 = req.getParameter("Final-Grade-m4");
			String sub_m4 = req.getParameter("sub-m4");

			int co_1 = Integer.parseInt(req.getParameter("co-1"));
			int co_2 = Integer.parseInt(req.getParameter("co-2"));
			int co_3 = Integer.parseInt(req.getParameter("co-3"));
			String final_co = req.getParameter("Final-Grade-co");
			String sub_co = req.getParameter("sub-co");

			int mclab_1 = Integer.parseInt(req.getParameter("mclab-1"));
			int mclab_2 = Integer.parseInt(req.getParameter("mclab-2"));
			int mclab_3 = Integer.parseInt(req.getParameter("mclab-3"));
			String final_mclab = req.getParameter("Final-Grade-mclab");
			String sub_mclab = req.getParameter("sub-mclab");

			String usn = req.getParameter("USN");

			String usnco = usn + sub_co;
			String usnmclab = usn + sub_mclab;
			String usnmc = usn + sub_mc;
			String usnooplab = usn + sub_ooplab;
			String usnm4 = usn + sub_m4;
			String usnoop = usn + sub_oop;
			String usnada = usn + sub_ada;

			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();

			Key dbKey = KeyFactory.createKey("Student_DB", usn);
			Entity STudentDB = new Entity("Fourth_DB", dbKey);

			STudentDB.setProperty("USN", usnmc);
			STudentDB.setProperty("Subject", sub_mc);
			STudentDB.setProperty("Cat_1", mc_1);
			STudentDB.setProperty("Cat_2", mc_2);
			STudentDB.setProperty("Cat_3", mc_3);
			STudentDB.setProperty("Finalgrade", final_mc);

			STudentDB.setProperty("USN", usnoop);
			STudentDB.setProperty("Subject", sub_oop);
			STudentDB.setProperty("Cat_1", oop_1);
			STudentDB.setProperty("Cat_2", oop_2);
			STudentDB.setProperty("Cat_3", oop_3);
			STudentDB.setProperty("Finalgrade", final_oop);

			STudentDB.setProperty("USN", usnm4);
			STudentDB.setProperty("Subject", sub_m4);
			STudentDB.setProperty("Cat_1", m4_1);
			STudentDB.setProperty("Cat_2", m4_2);
			STudentDB.setProperty("Cat_3", m4_3);
			STudentDB.setProperty("Finalgrade", final_m4);

			STudentDB.setProperty("USN", usnooplab);
			STudentDB.setProperty("Subject", sub_ooplab);
			STudentDB.setProperty("Cat_1", ooplab_1);
			STudentDB.setProperty("Cat_2", ooplab_2);
			STudentDB.setProperty("Cat_3", ooplab_3);
			STudentDB.setProperty("Finalgrade", final_ooplab);

			STudentDB.setProperty("USN", usnco);
			STudentDB.setProperty("Subject", sub_co);
			STudentDB.setProperty("Cat_1", co_1);
			STudentDB.setProperty("Cat_2", co_2);
			STudentDB.setProperty("Cat_3", co_3);
			STudentDB.setProperty("Finalgrade", final_co);

			STudentDB.setProperty("USN", usnmclab);
			STudentDB.setProperty("Subject", sub_mclab);
			STudentDB.setProperty("Cat_1", mclab_1);
			STudentDB.setProperty("Cat_2", mclab_2);
			STudentDB.setProperty("Cat_3", mclab_3);
			STudentDB.setProperty("Finalgrade", final_mclab);

			STudentDB.setProperty("USN", usnada);
			STudentDB.setProperty("Subject", sub_ada);
			STudentDB.setProperty("Cat_1", ada_1);
			STudentDB.setProperty("Cat_2", ada_2);
			STudentDB.setProperty("Cat_3", ada_3);
			STudentDB.setProperty("Finalgrade", final_ada);

			datastore.put(STudentDB);
			resp.getWriter().println(
					"<center><H1> Details:" + sub_co + ", " + final_mclab
							+ "</H1></center>");
		} catch (Exception e) {
			resp.getWriter().println(
					"<center><H1>Sorry your details not saved</H1></center>");
		}
	}
}
