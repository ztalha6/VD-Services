using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UsersDataAccess;

namespace UserServices.Controllers
{
    public class SettingsController : ApiController
    {
        public IEnumerable<Setting> GetAllSettings()
        {
            using (SettingsDetailsEntities entities = new SettingsDetailsEntities())
            {
                return entities.Settings.ToList();
            }
        }
    }
}