import cookix.core.http.request.Request;
// import cookix.core.http.request.AbstractRequest;
// import cookix.templating.TemplateManager;
import cookix.core.container.ServiceContainer;
import cookix.demo.services.DemoService;
import cookix.core.routing.RoutingMacro;
import cookix.core.services.routing.Routing;
import cookix.core.Kernel;

/**
 * Main of the application
 */
class Boot
{
    public static function main()
    {
        var request = Request.create();
        Kernel.handle(request);
        //var service : Routing = cast ServiceContainer.get('cookix.routing');
        //trace(service.match('/test'));
        //service.test();

        // ServiceContainer.get('demo_service').test();

        //var ctrl : cookix.demo.controllers.DemoController = new cookix.demo.controllers.DemoController();
        // ctrl.testAction();

        // var routes : cookix.tools.ObjectDynamic = RoutingMacro.getRoutes();
        // trace(routes);

        // var template : TemplateManager = new TemplateManager();
        // template.render('templates/test.tpl');
    }
}