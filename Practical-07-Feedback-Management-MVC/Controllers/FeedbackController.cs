using System.Web.Mvc;
using Practical_07_Feedback_Management_MVC.Models;

namespace Practical_07_Feedback_Management_MVC.Controllers
{
    public class FeedbackController : Controller
    {
        // GET: Feedback
        public ActionResult Index()
        {
            return View();
        }

        // POST: Feedback
        [HttpPost]
        public ActionResult Index(Feedback feedback)
        {
            if (ModelState.IsValid)
            {
                return View("Result", feedback);
            }

            return View(feedback);
        }
    }
}