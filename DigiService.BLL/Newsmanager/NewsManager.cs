using DigiService.DAL.Newsdao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.BLL.Newsmanager
{
   public class NewsManager
    {
        public Entities.Newsentities.NewsEntities selectnews()
        {
            NewsDao newsDao = new NewsDao();
            return newsDao.selectnews();
        }
    }
}
