using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using UsersDataAccess;

namespace UserServices.Controllers
{
    public class MechanicController : ApiController
    {
        // GET: Mechanic
        public IEnumerable<Mechanic> GetAllMechanics()
        {
            using (MechanicDetailsEntities entities = new MechanicDetailsEntities())
            {
                return entities.Mechanics.ToList();
            }
        }
    }
}