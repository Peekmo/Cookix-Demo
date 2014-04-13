// import cookix.core.http.request.Request;
// import cookix.core.http.request.AbstractRequest;
// import cookix.templating.TemplateManager;
// import cookix.core.container.ServiceContainer;
// import cookix.demo.services.DemoService;
// import cookix.core.routing.RoutingMacro;
// import cookix.core.Kernel;

/**
 * Main of the application
 */
class Boot
{
    public static function main()
    {
        // var request = Request.create();
        // Kernel.handle(request);
        //trace(cookix.config.ConfigurationMacro.getConfiguration());
        trace(cookix.core.container.ServiceContainer.getTags("myEvent"));

        // ServiceContainer.get('demo_service').test();

        // var ctrl : cookix.demo.controllers.DemoController = new cookix.demo.controllers.DemoController();
        // ctrl.testAction();

        // var routes : cookix.tools.ObjectDynamic = RoutingMacro.getRoutes();
        // trace(routes);

        // var template : TemplateManager = new TemplateManager();
        // template.render('templates/test.tpl');
    }
}