using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using WebAppMvc.Models;

namespace WebAppMvc.Controllers
{
    [Authorize(Policy = "Readonly")]
    public class MallDetailsController : Controller
    {
      private List<MallDetailsModel>? MallDetails = new List<MallDetailsModel>();

   private readonly Uri baseuri = new Uri("https://localhost:7086/api/ShoppingMall");
        public IActionResult IndexForMall()
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                HttpResponseMessage response = client.GetAsync(baseuri).Result;

                if (response.IsSuccessStatusCode)
                {
                    string data = response.Content.ReadAsStringAsync().Result;
                    MallDetails = JsonConvert.DeserializeObject<List<MallDetailsModel>>(data);

                    if (MallDetails == null)
                    {
                        return NotFound();
                    }
                    var list = MallDetails.OrderByDescending(o => o.Built_in_Year).ThenBy(o => o.ShoppingMallName);
                    return View(list);
                }
                ModelState.AddModelError(string.Empty, "Server Error. Please contact administrator.");
                return View();

            }
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult AddMallDetails(MallDetailsModel mallDetailsModel)
        {
            if (ModelState.IsValid)
            {
                using (HttpClient client = new HttpClient())
                {
                    client.BaseAddress = baseuri;
                    //HTTP POST
                    var postdetails = client.PostAsJsonAsync<MallDetailsModel>(baseuri, mallDetailsModel);
                    postdetails.Wait();
                    var result = postdetails.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        return RedirectToAction("IndexForMall");
                    }
                }
            }
            ModelState.AddModelError(string.Empty, "Server Error. Please contact administrator.");
            return View(mallDetailsModel);
        }
        public IActionResult Edit(int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                HttpResponseMessage response = client.GetAsync(baseuri + $"/{id}").Result;

                if (response.IsSuccessStatusCode)
                {
                    string data = response.Content.ReadAsStringAsync().Result;
                    var details = JsonConvert.DeserializeObject<MallDetailsModel>(data);
                    if (details == null)
                    {
                        return NoContent();
                    }
                    TempData["id"] = details.Id;
                    return View(details);
                }
                return View();
            }
        }
        [HttpPost]
        public IActionResult EditMallDetails(MallDetailsModel mallDetailsModel)
        {
            if (ModelState.IsValid)
            {
                if (mallDetailsModel == null)
                {
                    return NoContent();
                }
                using (var client = new HttpClient())
                {
                    client.BaseAddress = baseuri;
                    var put = client.PutAsJsonAsync<MallDetailsModel>(baseuri + $"/{TempData["id"]}", mallDetailsModel);
                    put.Wait();
                    var result = put.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        return RedirectToAction("IndexForMall");
                    }
                }
            }
            ModelState.AddModelError(string.Empty, "Server Error. Please contact administrator.");

            return View(mallDetailsModel);

        }
        public IActionResult Details(int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                HttpResponseMessage response = client.GetAsync(baseuri + $"/{id}").Result;

                if (response.IsSuccessStatusCode)
                {
                    string data = response.Content.ReadAsStringAsync().Result;
                    var details = JsonConvert.DeserializeObject<MallDetailsModel>(data);

                    return View(details);
                }
                return View();
            }
        }
        public IActionResult Delete(int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                var delete = client.DeleteAsync(baseuri + $"/{id}");
                delete.Wait();
                var result = delete.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("IndexForMall");
                }
                ModelState.AddModelError(string.Empty, "Server Error");
                return View();
            }
        }
        [HttpPost]
        public IActionResult MallNamecheckAjax(string name)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                HttpResponseMessage response = client.GetAsync(baseuri).Result;

                if (response.IsSuccessStatusCode)
                {
                    string data = response.Content.ReadAsStringAsync().Result;
                    MallDetails = JsonConvert.DeserializeObject<List<MallDetailsModel>>(data);
                    if (MallDetails == null)
                    {
                        return NoContent();
                    }
                    foreach (var details in MallDetails)
                    { bool result = StringComparer.CurrentCultureIgnoreCase.Equals(details.ShoppingMallName, name);
                        if (result==true)
                        {
                            return Json("Exist");
                        }
                    }
                    return Json("Accepted");
                }
            }
            return View();
        }
    }
}
