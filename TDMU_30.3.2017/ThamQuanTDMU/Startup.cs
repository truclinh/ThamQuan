using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ThamQuanTDMU.Startup))]
namespace ThamQuanTDMU
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
