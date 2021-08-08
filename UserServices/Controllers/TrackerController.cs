using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UsersDataAccess;

namespace UserServices.Controllers
{
    public class TrackerController : ApiController
    {
        public IEnumerable<Tracker> GetAllTrackers()
        {
            using (TrackerDetailsEntities entities = new TrackerDetailsEntities())
            {
                return entities.Trackers.ToList();
            }
        }
        public HttpResponseMessage AddNewTracker([FromBody] Tracker tracker)
        {
            try
            {
                using (TrackerDetailsEntities entities = new TrackerDetailsEntities())
                {
                    entities.Trackers.Add(tracker);
                    entities.SaveChanges();
                    var message = Request.CreateResponse(HttpStatusCode.Created, tracker);
                    return message;
                }
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }


        }
    }
}