using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UsersDataAccess;

namespace UserServices.Controllers
{
    public class CarController : ApiController
    {
        public IEnumerable<Car> GetAllCars()
        {
            using (CarDetailsEntities entities = new CarDetailsEntities())
            {
                return entities.Cars.ToList();
            }
        }

        public IEnumerable<Car> GetCarsById(string email)
        {
            using (CarDetailsEntities entities = new CarDetailsEntities())
            {
                return entities.Cars.Where(e => e.Email == email).ToList();
            }
        }
        public HttpResponseMessage AddNewCar([FromBody] Car car)
        {
            try
            {
                using (CarDetailsEntities entities = new CarDetailsEntities())
                {
                    entities.Cars.Add(car);
                    entities.SaveChanges();
                    var message = Request.CreateResponse(HttpStatusCode.Created, car);
                    message.Headers.Location = new Uri(Request.RequestUri + car.Email.ToString());
                    return message;
                }
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }


        }

        public IHttpActionResult UpdateMileage(int carID,int mileage)
        {
            if (!ModelState.IsValid)
                return BadRequest("Not a valid model");

            using (CarDetailsEntities entities = new CarDetailsEntities())
            {
                var existingStudent = entities.Cars.Where(s => s.CarID == carID)
                                                        .FirstOrDefault<Car>();

                if (existingStudent != null)
                {
                    existingStudent.CurrentMileage = mileage;

                    entities.SaveChanges();
                }
                else
                {
                    return NotFound();
                }
            }

            return Ok();
        }

        [HttpPost]
        public HttpResponseMessage UpdateCarDetails([FromBody] Car car,int setting)
        {
            //if (!ModelState.IsValid)
            //    return BadRequest("Not a valid model");
            try
            {

                using (CarDetailsEntities entities = new CarDetailsEntities())
                {
                    var existingStudent = entities.Cars.Where(s => s.CarID == car.CarID)
                                                            .FirstOrDefault<Car>();

                    using (NotificationDetailsEntities entities1 = new NotificationDetailsEntities()) 
                    {
                       
                        if (existingStudent != null)
                        {
                            if (car.NextFuel != null)
                            {
                                existingStudent.StartingMileage = car.CurrentMileage;
                                existingStudent.NextFuel = existingStudent.StartingMileage + setting;
                                var existing = entities1.Notifications.Where(s => (s.Email == car.Email && s.Type == "Fuel"))
                                                                  .FirstOrDefault<Notification>();

                                if (existing != null)
                                {
                                        existing.IsSend = false;
                                        entities1.SaveChanges();
                                }
                                
                            }
                            else if (car.NextOil != null)
                            {
                                existingStudent.StartingMileage = car.CurrentMileage;
                                existingStudent.NextOil = existingStudent.StartingMileage + setting;
                                var existing = entities1.Notifications.Where(s => (s.Email == car.Email && s.Type == "Oil"))
                                                                  .FirstOrDefault<Notification>();

                                if (existing != null)
                                {
                                    existing.IsSend = false;
                                    entities1.SaveChanges();
                                }
                            }
                            else if (car.NextTuning != null)
                            {
                                existingStudent.StartingMileage = car.CurrentMileage;
                                existingStudent.NextTuning = existingStudent.StartingMileage + setting;
                                var existing = entities1.Notifications.Where(s => (s.Email == car.Email && s.Type == "Tuning"))
                                                                  .FirstOrDefault<Notification>();

                                if (existing != null)
                                {
                                    existing.IsSend = false;
                                    entities1.SaveChanges();
                                }
                            }
                            else if (car.NextTyre != null)
                            {
                                existingStudent.StartingMileage = car.CurrentMileage;
                                existingStudent.NextTyre = existingStudent.StartingMileage + setting;
                                var existing = entities1.Notifications.Where(s => (s.Email == car.Email && s.Type == "Tyre"))
                                                                  .FirstOrDefault<Notification>();

                                if (existing != null)
                                {
                                    existing.IsSend = false;
                                    entities1.SaveChanges();
                                }
                            }
                            else if (car.NextFilter != null)
                            {
                                existingStudent.StartingMileage = car.CurrentMileage;
                                existingStudent.NextFilter = existingStudent.StartingMileage + setting;
                                var existing = entities1.Notifications.Where(s => (s.Email == car.Email && s.Type == "Filter"))
                                                                  .FirstOrDefault<Notification>();

                                if (existing != null)
                                {
                                    existing.IsSend = false;
                                    entities1.SaveChanges();
                                }
                            }
                            else if (car.NextPlug != null)
                            {
                                existingStudent.StartingMileage = car.CurrentMileage;
                                existingStudent.NextPlug = existingStudent.StartingMileage + setting;
                                var existing = entities1.Notifications.Where(s => (s.Email == car.Email && s.Type == "Plug"))
                                                                  .FirstOrDefault<Notification>();

                                if (existing != null)
                                {
                                    existing.IsSend = false;
                                    entities1.SaveChanges();
                                }
                            }

                            entities.SaveChanges();
                            var message = Request.CreateResponse(HttpStatusCode.Created, car);
                            message.Headers.Location = new Uri(Request.RequestUri + car.CarID.ToString());
                            return message;
                        }
                        else
                        {
                            var message = Request.CreateResponse(HttpStatusCode.Created, car);
                            message.Headers.Location = new Uri(Request.RequestUri + car.CarID.ToString());
                            return message;
                        }
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
