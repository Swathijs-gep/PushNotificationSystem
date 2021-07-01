using SecondWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace SecondWebAPI.Controllers
{
    public class ProductController : ApiController
    {
        Entities db = new Entities();


        public string Post(notification entry)
        {
            entry.AddedOn = DateTime.UtcNow;
            db.notifications.Add(entry);
            db.SaveChanges();
            return "Added notification to database";
        }

       public IEnumerable<notification> Get()
        {
            return db.notifications.ToList();
        }
    }
}
