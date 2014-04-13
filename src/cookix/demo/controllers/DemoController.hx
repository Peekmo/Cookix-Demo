package cookix.demo.controllers;

import cookix.core.http.response.Response;
import cookix.core.http.response.JsonResponse;

/**
 * Controller usage example
 * @author Axel Anceau (Peekmo)
 */
class DemoController extends cookix.core.controller.Controller
{
    /**
     * Simple action
     */
    @:Route('/test')
    public function testAction()
    {
        this.container.get('cookix.dispatcher').dispatch('test', 'test');

        var response = new JsonResponse({test: 'ok',test2: 'ok',test3: 'ok',test4: 'ok',test5: 'ok',});
        response.setCookie('test', 'value');

        return response;
    }

    public function test2Action()
    {
        var response = new JsonResponse({ok: 'ok'});
        return response;
    }
}

// haxe.rtti.Meta