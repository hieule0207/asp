using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DoAnWebNewsFeed.Startup))]
namespace DoAnWebNewsFeed
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
