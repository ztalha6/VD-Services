using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UsersDataAccess;

namespace UserServices.Controllers
{
    public class NotificationLogController : ApiController
    {
        // GET: NotificationLog
        [HttpGet]
        public IEnumerable<NotificationLog> GetAllLogs()
        {
            using (NotificationLogDetailsEntities entities = new NotificationLogDetailsEntities())
            {
                return entities.NotificationLogs.ToList();
            }
        }

        public IEnumerable<NotificationLog> GetHistoryById(string email)
        {
            using (NotificationLogDetailsEntities entities = new NotificationLogDetailsEntities())
            {
                return entities.NotificationLogs.Where(e => e.Email == email).ToList();
            }
        }

        [HttpPost]
        public HttpResponseMessage AddNewLog([FromBody] NotificationLog log)
        {
            
            try
            {
                using (NotificationLogDetailsEntities entities = new NotificationLogDetailsEntities())
                {
                    entities.NotificationLogs.Add(log);
                    entities.SaveChanges();
                    var message = Request.CreateResponse(HttpStatusCode.Created, log);
                    message.Headers.Location = new Uri(Request.RequestUri + log.Email.ToString());
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