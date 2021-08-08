using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UsersDataAccess;
namespace UserServices.Controllers
{
    public class NotificationController : ApiController
    {
        // GET: Notification
        public IEnumerable<Notification> GetNotificationsById(string email)
        {
            using (NotificationDetailsEntities entities = new NotificationDetailsEntities())
            {
                return entities.Notifications.Where(e => e.Email == email).ToList();
            }
        }

        [HttpPost]
        public HttpResponseMessage UpdatenotifiacationDetails(string email,int carid, string type)
        {
            try
            {
                using (NotificationDetailsEntities entities1 = new NotificationDetailsEntities())
                {
                    var existing = entities1.Notifications.Where(s => (s.Email == email && s.Type == type))
                                                                      .FirstOrDefault<Notification>();

                    using (NotificationLogDetailsEntities logentities = new NotificationLogDetailsEntities())
                    {
                        NotificationLog log = new NotificationLog();
                        if (type == existing.Type)
                        {
                            existing.IsSend = true;
                            
                            log.Email = email;
                            log.CarId = carid;
                            log.Type = type;
                            log.IsSend = true;
                            log.DateTime = DateTime.Now;
                            logentities.NotificationLogs.Add(log);
                        }
                        entities1.SaveChanges();
                        logentities.SaveChanges();
                        var message = Request.CreateResponse(HttpStatusCode.Created, email);
                        message.Headers.Location = new Uri(Request.RequestUri + email);
                        return message;
                    }
                }
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }
        }

    }
}