package com.lyn.web.vertx;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;

public class DemoVerticle extends AbstractVerticle {

    @Override
    public void start() throws Exception {
        // Create the HTTP server
        vertx.createHttpServer()
                // Handle every request using the router
                .requestHandler(req -> {
                    req.response()
                            .putHeader("content-type", "text/plain")
                            .end("ok");
                })
                // Start listening
                .listen(8888)
                // Print the port
                .onSuccess(server ->
                        System.out.println(
                                "HTTP server started on port " + server.actualPort()
                        )
                );
    }

    public static void main(String[] args) throws Exception {
        Vertx vertx = Vertx.vertx();
        Verticle myVerticle = new DemoVerticle();
        vertx.deployVerticle(myVerticle);
    }
}