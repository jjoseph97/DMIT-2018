using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WorkWeb.Startup))]
namespace WorkWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
