using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UsersDataAccess;

namespace UserServices.Controllers
{
    public class UserController : ApiController
    {
        [HttpGet]
        public IEnumerable<User> GetAllUsers()
        {
            using (UserDetailsEntities entities = new UserDetailsEntities())
            {
                return entities.Users.ToList();
            }
        }
        [HttpGet]

        public User GetUsersById(string email)
        {
            using (UserDetailsEntities entities = new UserDetailsEntities())
            {
                return entities.Users.FirstOrDefault(e => e.email == email);
            }
        }

        [HttpPost]
        public HttpResponseMessage AddNewUser([FromBody] User user)
        {
            string[] notificationTypes =new string[] { "Oil","Tyre","Fuel","Tuning","Filter","Plug"};
            try
            {
                using (UserDetailsEntities entities = new UserDetailsEntities())
                {
                    entities.Users.Add(user);
                    
                    foreach (var item in notificationTypes)
                    {
                        using (NotificationDetailsEntities notificationEntities=new NotificationDetailsEntities()) 
                        {
                            Notification userNoti = new Notification();
                            userNoti.Email = user.email;
                            userNoti.Type = item;
                            userNoti.IsSend = false;
                            notificationEntities.Notifications.Add(userNoti);
                            notificationEntities.SaveChanges();
                        }
                        
                    }
                    
                    entities.SaveChanges();
                    var message = Request.CreateResponse(HttpStatusCode.Created, user);
                    message.Headers.Location = new Uri(Request.RequestUri + user.email.ToString());
                    return message;
                }
                
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }


        }
        [HttpPost]
        public HttpResponseMessage UpdateUserDetails([FromBody] User user,string email)
        {
            //if (!ModelState.IsValid)
            //    return BadRequest("Not a valid model");
            try
            {
                
                using (UserDetailsEntities entities = new UserDetailsEntities())
                {
                    var existingStudent = entities.Users.Where(s => s.email == email)
                                                            .FirstOrDefault<User>();

                    if (existingStudent != null)
                    {
                        existingStudent.firstName = user.firstName;
                        existingStudent.lastName = user.lastName;
                        existingStudent.phone = user.phone;
                        existingStudent.city = user.city;

                        entities.SaveChanges();
                        var message = Request.CreateResponse(HttpStatusCode.Created, user);
                        message.Headers.Location = new Uri(Request.RequestUri + email);
                        return message;
                    }
                    else
                    {
                        var message = Request.CreateResponse(HttpStatusCode.Created, user);
                        message.Headers.Location = new Uri(Request.RequestUri + email);
                        return message;
                    }
                }
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }
            //return Ok();
        }
    }
}
