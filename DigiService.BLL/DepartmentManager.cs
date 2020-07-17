using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.DAL;
using DigiService.Entities;

namespace DigiService.BLL
{
    public class DepartmentManager
    {
        public List<Department> SelectDepartment()
        {
            DepartmentDao departmentDao = new DepartmentDao();
            return departmentDao.SelectDepartment();
            
        }
    }
}
