<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require '../vendor/autoload.php';

$app = new \Slim\App;

$app->get('/hello', function (Request $request, Response $response, array $args) {
    $response = $response->withJson(["message" => "hello FROM THE OTHER SIDE"]);

    return $response->withStatus(200)->withHeader('Access-Control-Allow-Origin', '*');
});

$app->post('/hi', function (Request $request, Response $response, array $args) {
    $_input = $request->getParsedBody();
    $hi = $_input['hi'];

    $response = $response->withJson(["message" => "hi FROM THE OTHER " . $hi]);

    return $response->withStatus(200);
});

$app->run();
