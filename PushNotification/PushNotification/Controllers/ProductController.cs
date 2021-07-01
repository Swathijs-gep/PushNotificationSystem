using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace PushNotification.Controllers
{
    public class ProductController : ApiController
    {
        MyPushNotificationEntities1 db = new MyPushNotificationEntities1();
        
        public IEnumerable<notification> Get()
        {
            return db.notifications.ToList();
        }
    }
}
