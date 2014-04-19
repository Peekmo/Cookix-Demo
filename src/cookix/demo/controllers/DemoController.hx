package cookix.demo.controllers;

import cookix.core.http.response.Response;
import cookix.core.http.response.JsonResponse;

/**
 * Controller usage example
 * @author Axel Anceau (Peekmo)
 */
@:prefix('/%general.env%')
class DemoController extends cookix.core.controller.Controller
{
    /**
     * Simple action
     */
    @:get('/test')
    public function testAction()
    {
        this.container.get('cookix.dispatcher').dispatch('test', 'test');

        var response = new JsonResponse({test: 'ok',test2: 'ok',test3: 'ok',test4: 'ok',test5: 'ok',});
        response.setCookie('test', 'value');

        return response;
    }

    @:get('/test/:id', {parameters: {id: "[0-9]+"}})
    public function test2Action(id : String)
    {
        var response = new JsonResponse({id: id});
        return response;
    }
}