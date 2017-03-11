package sprs;

import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.*;

@SuppressWarnings("serial")
public class Seventh_sem extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		// UserService userService = UserServiceFactory.getUserService();
		// User user = userService.getCurrentUser();
		try {
			int aoop_1 = Integer.parseInt(req.getParameter("aoop-1"));
			int aoop_2 = Integer.parseInt(req.getParameter("aoop-2"));
			int aoop_3 = Integer.parseInt(req.getParameter("aoop-3"));
			String final_aoop = req.getParameter("Final-Grade-aoop");
			String sub_aoop = req.getParameter("sub-aoop");

			int aooplab_1 = Integer.parseInt(req.getParameter("aooplab-1"));
			int aooplab_2 = Integer.parseInt(req.getParameter("aooplab-2"));
			int aooplab_3 = Integer.parseInt(req.getParameter("aooplab-3"));
			String final_aooplab = req.getParameter("Final-Grade-aooplab");
			String sub_aooplab = req.getParameter("sub-aooplab");

			int ptis_1 = Integer.parseInt(req.getParameter("ptis-1"));
			int ptis_2 = Integer.parseInt(req.getParameter("ptis-2"));
			int ptis_3 = Integer.parseInt(req.getParameter("ptis-3"));
			String final_ptis = req.getParameter("Final-Grade-ptis");
			String sub_ptis = req.getParameter("sub-ptis");

			int aca_1 = Integer.parseInt(req.getParameter("aca-1"));
			int aca_2 = Integer.parseInt(req.getParameter("aca-2"));
			int aca_3 = Integer.parseInt(req.getParameter("aca-3"));
			String final_aca = req.getParameter("Final-Grade-aca");
			String sub_aca = req.getParameter("sub-aca");

			int st_1 = Integer.parseInt(req.getParameter("st-1"));
			int st_2 = Integer.parseInt(req.getParameter("st-2"));
			int st_3 = Integer.parseInt(req.getParameter("st-3"));
			String final_st = req.getParameter("Final-Grade-st");
			String sub_st = req.getParameter("sub-st");

			int dwm_1 = Integer.parseInt(req.getParameter("dwm-1"));
			int dwm_2 = Integer.parseInt(req.getParameter("dwm-2"));
			int dwm_3 = Integer.parseInt(req.getParameter("dwm-3"));
			String final_dwm = req.getParameter("Final-Grade-dwm");
			String sub_dwm = req.getParameter("sub-dwm");

			int mp_1 = Integer.parseInt(req.getParameter("mp-1"));
			int mp_2 = Integer.parseInt(req.getParameter("mp-2"));
			int mp_3 = Integer.parseInt(req.getParameter("mp-3"));
			String final_mp = req.getParameter("Final-Grade-mp");
			String sub_mp = req.getParameter("sub-mp");

			int ad_1 = Integer.parseInt(req.getParameter("ad-1"));
			int ad_2 = Integer.parseInt(req.getParameter("ad-2"));
			int ad_3 = Integer.parseInt(req.getParameter("ad-3"));
			String final_ad = req.getParameter("Final-Grade-ad");
			String sub_ad = req.getParameter("sub-ad");

			String usn = req.getParameter("USN");

			String usnad = usn + sub_ad;
			String usnaooplab = usn + sub_aooplab;
			String usnaoop = usn + sub_aoop;
			String usnaca = usn + sub_aca;
			String usnmp = usn + sub_mp;
			String usndwm = usn + sub_dwm;
			String usnst = usn + sub_st;
			String usnptis = usn + sub_ptis;

			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();

			Key dbKey = KeyFactory.createKey("Student_DB", usn);
			Entity STudentDB = new Entity("Seventh_DB", dbKey);

			STudentDB.setProperty("USN", usnst);
			STudentDB.setProperty("Subject", sub_st);
			STudentDB.setProperty("Cat_1", st_1);
			STudentDB.setProperty("Cat_2", st_2);
			STudentDB.setProperty("Cat_3", st_3);
			STudentDB.setProperty("Finalgrade", final_st);

			STudentDB.setProperty("USN", usnaoop);
			STudentDB.setProperty("Subject", sub_aoop);
			STudentDB.setProperty("Cat_1", aoop_1);
			STudentDB.setProperty("Cat_2", aoop_2);
			STudentDB.setProperty("Cat_3", aoop_3);
			STudentDB.setProperty("Finalgrade", final_aoop);

			STudentDB.setProperty("USN", usnmp);
			STudentDB.setProperty("Subject", sub_mp);
			STudentDB.setProperty("Cat_1", mp_1);
			STudentDB.setProperty("Cat_2", mp_2);
			STudentDB.setProperty("Cat_3", mp_3);
			STudentDB.setProperty("Finalgrade", final_mp);

			STudentDB.setProperty("USN", usnaooplab);
			STudentDB.setProperty("Subject", sub_aooplab);
			STudentDB.setProperty("Cat_1", aooplab_1);
			STudentDB.setProperty("Cat_2", aooplab_2);
			STudentDB.setProperty("Cat_3", aooplab_3);
			STudentDB.setProperty("Finalgrade", final_aooplab);

			STudentDB.setProperty("USN", usnptis);
			STudentDB.setProperty("Subject", sub_ptis);
			STudentDB.setProperty("Cat_1", ptis_1);
			STudentDB.setProperty("Cat_2", ptis_2);
			STudentDB.setProperty("Cat_3", ptis_3);
			STudentDB.setProperty("Finalgrade", final_ptis);

			STudentDB.setProperty("USN", usnaca);
			STudentDB.setProperty("Subject", sub_aca);
			STudentDB.setProperty("Cat_1", aca_1);
			STudentDB.setProperty("Cat_2", aca_2);
			STudentDB.setProperty("Cat_3", aca_3);
			STudentDB.setProperty("Finalgrade", final_aca);

			STudentDB.setProperty("USN", usnad);
			STudentDB.setProperty("Subject", sub_ad);
			STudentDB.setProperty("Cat_1", ad_1);
			STudentDB.setProperty("Cat_2", ad_2);
			STudentDB.setProperty("Cat_3", ad_3);
			STudentDB.setProperty("Finalgrade", final_ad);

			STudentDB.setProperty("USN", usndwm);
			STudentDB.setProperty("Subject", sub_dwm);
			STudentDB.setProperty("Cat_1", dwm_1);
			STudentDB.setProperty("Cat_2", dwm_2);
			STudentDB.setProperty("Cat_3", dwm_3);
			STudentDB.setProperty("Finalgrade", final_dwm);

			datastore.put(STudentDB);
			resp.getWriter().println(
					"<center><H1> Details:" + sub_dwm + ", " + dwm_1
							+ "</H1></center>");
		} catch (Exception e) {
			resp.getWriter().println(
					"<center><H1>Sorry your details not saved</H1></center>");
		}

	}
}
