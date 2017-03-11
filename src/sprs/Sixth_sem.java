package sprs;

import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.*;

@SuppressWarnings("serial")
public class Sixth_sem extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		// UserService userService = UserServiceFactory.getUserService();
		// User user = userService.getCurrentUser();
		try {
			int mp_1 = Integer.parseInt(req.getParameter("mp-1"));
			int mp_2 = Integer.parseInt(req.getParameter("mp-2"));
			int mp_3 = Integer.parseInt(req.getParameter("mp-3"));
			String final_mp = req.getParameter("Final-Grade-mp");
			String sub_mp = req.getParameter("sub-mp");

			int nslab_1 = Integer.parseInt(req.getParameter("nslab-1"));
			int nslab_2 = Integer.parseInt(req.getParameter("nslab-2"));
			int nslab_3 = Integer.parseInt(req.getParameter("nslab-3"));
			String final_nslab = req.getParameter("Final-Grade-nslab");
			String sub_nslab = req.getParameter("sub-nslab");

			int sms_1 = Integer.parseInt(req.getParameter("sms-1"));
			int sms_2 = Integer.parseInt(req.getParameter("sms-2"));
			int sms_3 = Integer.parseInt(req.getParameter("sms-3"));
			String final_sms = req.getParameter("Final-Grade-sms");
			String sub_sms = req.getParameter("sub-sms");

			int cn_1 = Integer.parseInt(req.getParameter("cn-1"));
			int cn_2 = Integer.parseInt(req.getParameter("cn-2"));
			int cn_3 = Integer.parseInt(req.getParameter("cn-3"));
			String final_cn = req.getParameter("Final-Grade-cn");
			String sub_cn = req.getParameter("sub-cn");

			int cg_1 = Integer.parseInt(req.getParameter("cg-1"));
			int cg_2 = Integer.parseInt(req.getParameter("cg-2"));
			int cg_3 = Integer.parseInt(req.getParameter("cg-3"));
			String final_cg = req.getParameter("Final-Grade-cg");
			String sub_cg = req.getParameter("sub-cg");

			int ads_1 = Integer.parseInt(req.getParameter("ads-1"));
			int ads_2 = Integer.parseInt(req.getParameter("ads-2"));
			int ads_3 = Integer.parseInt(req.getParameter("ads-3"));
			String final_ads = req.getParameter("Final-Grade-ads");
			String sub_ads = req.getParameter("sub-ads");

			int oomd_1 = Integer.parseInt(req.getParameter("oomd-1"));
			int oomd_2 = Integer.parseInt(req.getParameter("oomd-2"));
			int oomd_3 = Integer.parseInt(req.getParameter("oomd-3"));
			String final_oomd = req.getParameter("Final-Grade-oomd");
			String sub_oomd = req.getParameter("sub-oomd");

			String usn = req.getParameter("USN");

			String usnads = usn + sub_ads;
			String usnnslab = usn + sub_nslab;
			String usnoomd = usn + sub_oomd;
			String usncg = usn + sub_cg;
			String usnmp = usn + sub_mp;
			String usncn = usn + sub_cn;
			String usnsms = usn + sub_sms;

			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();

			Key dbKey = KeyFactory.createKey("Student_DB", usn);
			Entity STudentDB = new Entity("Sixth_DB", dbKey);

			STudentDB.setProperty("USN", usnsms);
			STudentDB.setProperty("Subject", sub_sms);
			STudentDB.setProperty("Cat_1", sms_1);
			STudentDB.setProperty("Cat_2", sms_2);
			STudentDB.setProperty("Cat_3", sms_3);
			STudentDB.setProperty("Finalgrade", final_sms);

			STudentDB.setProperty("USN", usnads);
			STudentDB.setProperty("Subject", sub_ads);
			STudentDB.setProperty("Cat_1", ads_1);
			STudentDB.setProperty("Cat_2", ads_2);
			STudentDB.setProperty("Cat_3", ads_3);
			STudentDB.setProperty("Finalgrade", final_ads);

			STudentDB.setProperty("USN", usncg);
			STudentDB.setProperty("Subject", sub_cg);
			STudentDB.setProperty("Cat_1", cg_1);
			STudentDB.setProperty("Cat_2", cg_2);
			STudentDB.setProperty("Cat_3", cg_3);
			STudentDB.setProperty("Finalgrade", final_cg);

			STudentDB.setProperty("USN", usnnslab);
			STudentDB.setProperty("Subject", sub_nslab);
			STudentDB.setProperty("Cat_1", nslab_1);
			STudentDB.setProperty("Cat_2", nslab_2);
			STudentDB.setProperty("Cat_3", nslab_3);
			STudentDB.setProperty("Finalgrade", final_nslab);

			STudentDB.setProperty("USN", usncn);
			STudentDB.setProperty("Subject", sub_cn);
			STudentDB.setProperty("Cat_1", cn_1);
			STudentDB.setProperty("Cat_2", cn_2);
			STudentDB.setProperty("Cat_3", cn_3);
			STudentDB.setProperty("Finalgrade", final_cn);

			STudentDB.setProperty("USN", usnmp);
			STudentDB.setProperty("Subject", sub_mp);
			STudentDB.setProperty("Cat_1", mp_1);
			STudentDB.setProperty("Cat_2", mp_2);
			STudentDB.setProperty("Cat_3", mp_3);
			STudentDB.setProperty("Finalgrade", final_mp);

			STudentDB.setProperty("USN", usnoomd);
			STudentDB.setProperty("Subject", sub_oomd);
			STudentDB.setProperty("Cat_1", oomd_1);
			STudentDB.setProperty("Cat_2", oomd_2);
			STudentDB.setProperty("Cat_3", oomd_3);
			STudentDB.setProperty("Finalgrade", final_oomd);

			datastore.put(STudentDB);
			resp.getWriter().println(
					"<center><H1>" + usnoomd + "" + usncn + "</H1></center>");
		} catch (Exception e) {
			resp.getWriter().println("Your Deatils not saved sorry");
		}
	}
}