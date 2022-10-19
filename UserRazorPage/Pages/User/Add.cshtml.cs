using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using UserRazorPage.Data;
using UserRazorPage.Entities;

namespace UserRazorPage.Pages.Shared
{
    public class AddModel : PageModel
    {
        public Employee Employee { get; set; }

        private readonly MyDbContext _context;

        public AddModel(MyDbContext context)
        {
            _context = context;
        }


        public void OnGet(int id = 0)
        {
            Employee = _context.Employee.FirstOrDefault(e => e.Id == id) ?? new Employee();
        }


        public IActionResult OnPost(Employee employee)
        {
            if (ModelState.IsValid)
            {
                if (employee.Id > 0)
                {
                    _context.Employee.Update(employee);
                }
                else
                {
                    _context.Employee.Add(employee);
                }
                _context.SaveChanges();
                return RedirectToPage("index");
            }
            return Page();

        }
    }
}
