using AutoMapper;
using Database_Connection.Entities;
using DatabaseLibrary;
using Final_Assignment_DotNetWebApi.Controllers;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Testing_WebApi.TestingController
{ 

    public class ShoppingMallTestControleer
    {
        private DbContextShoppingMall _dbContextShoppingMall;
        private readonly IMapper _mapper;
        public ShoppingMallTestControleer()
        {
            _dbContextShoppingMall = new DbContextShoppingMall();

        }
        [Fact]
        public void Check_returnShoppingMalls()
        {
            var controller=new ShoppingMallController(_dbContextShoppingMall,_mapper);
            var count=_dbContextShoppingMall.ShoppingMallDetails.Count();
            var result = controller.GetDetails().Result;
            var okresult = result as OkObjectResult;
            Assert.NotNull(okresult);
            Assert.Equal(200, okresult.StatusCode);
        }
    }
}
