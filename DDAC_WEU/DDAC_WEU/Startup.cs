﻿using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

namespace DDAC_WEU
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
