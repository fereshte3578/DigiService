using DigiService.DAL.userprofiledao;
using DigiService.Entities.userprofileentities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.BLL.userprofile
{
    public class UserProfileManager
    {
        public bool Update_prof(UserProfileEntities userprof)
        {
            UserProfileDao userProfileDao = new UserProfileDao();
            return userProfileDao.Update_prof(userprof);

        }

        public Entities.userprofileentities.UserProfileEntities selectuser(int id)
        {
            UserProfileDao userProfileDao = new UserProfileDao();
            return userProfileDao.selectuser(id);
        }
    }
}
