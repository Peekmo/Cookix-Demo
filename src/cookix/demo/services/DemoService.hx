package cookix.demo.services;

import cookix.core.services.config.Configuration;

/**
 * Demo service class
 * @author Axel Anceau
 */
@:service('demo.myService')
@:parameters("test", "@cookix.configuration")
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
        trace(this.iString);
    }

    public function test() : Void
    {
        trace(this.configService.getConfiguration());
        trace('test');
    }

    @:tag({name: "myEvent", type: "event"})
    public function onEvent(event: Dynamic) : Void
    {
        trace('Event received');
    }
}