package cookix.demo.services;

import cookix.core.services.config.Configuration;

/**
 * Demo service class
 * @author Axel Anceau
 */
@:service('demo.myService')
@:parameters("%general.env%", "@cookix.configuration")
class DemoService
{
    /**
     * @var iString: String Injected parameter
     */
    public var iString(null,null) : String;

    /**
     * @var cookix.core.config.Configuration Service injected
     */
    public var configService(null, null): Configuration;

    /**
     * Constructor used for dependency injection
     * @param  iString: String        Parameter injected
     */
    public function new(iString: String, config: Configuration)
    {
        this.iString = iString;
        this.configService = config;
    }

    @:tag({name: "cookix.onRequest", type: "event", priority: 3})
    public function test() : Void
    {
        trace(this.configService.get('general.env'));
        trace('test');
    }

    @:tag({name: "cookix.onRequest", type: "event", priority: 2})
    public function onEvent(event: Dynamic) : Void
    {
        trace('Event received');
    }
}