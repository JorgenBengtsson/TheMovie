using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Description;
using TheMovie.Libraries.Utlilities;
using TheMovie.Models;

namespace TheMovie.Controllers
{

    [EnableCors(origins: "http://localhost:3000", headers: "*", methods: "*")]
    public class BookingsController : ApiController
    {
        private TheMovieEntities db = new TheMovieEntities();

        [Route("MakeBooking")]
        [HttpPost]
        public string MakeBooking(bookingViewModel booking)
        {
            var token = db.accesstokens.Where(a => a.token == booking.token.accessToken).FirstOrDefault();

            if (token != null)
            {
                // Check expire date
                if (token.expires >= DateTime.Now)
                {
                    // Alright, make booking
                    var credentials = Base64.Decode(token.token);
                    int separator = credentials.IndexOf(':');
                    string username = credentials.Substring(0, separator);
                    string guid = credentials.Substring(separator + 1);

                    var currentUser = db.user.Where(u => u.username == username).FirstOrDefault();
                    
                    db.booking.Add(new Models.booking { movieId = booking.movieId, tickets = booking.tickets, userid = currentUser.id, created = DateTime.Now });
                    db.SaveChanges();

                    return "ok";

                } else
                {
                    // Token Expired
                    return "failed";
                }
            }
            else {
                // Not a valid token
                return "failed";
            }
        }

        // GET: api/Bookings
        public IQueryable<booking> Getbooking()
        {
            return db.booking;
        }

        // GET: api/Bookings/5
        [ResponseType(typeof(booking))]
        public IHttpActionResult Getbooking(int id)
        {
            booking booking = db.booking.Find(id);
            if (booking == null)
            {
                return NotFound();
            }

            return Ok(booking);
        }

        // PUT: api/Bookings/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putbooking(int id, booking booking)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != booking.id)
            {
                return BadRequest();
            }

            db.Entry(booking).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!bookingExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Bookings
        [ResponseType(typeof(booking))]
        public IHttpActionResult Postbooking(booking booking)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.booking.Add(booking);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = booking.id }, booking);
        }

        // DELETE: api/Bookings/5
        [ResponseType(typeof(booking))]
        public IHttpActionResult Deletebooking(int id)
        {
            booking booking = db.booking.Find(id);
            if (booking == null)
            {
                return NotFound();
            }

            db.booking.Remove(booking);
            db.SaveChanges();

            return Ok(booking);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool bookingExists(int id)
        {
            return db.booking.Count(e => e.id == id) > 0;
        }
    }
}