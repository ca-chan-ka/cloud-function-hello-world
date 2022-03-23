package application;

import java.nio.charset.StandardCharsets;

import com.google.cloud.functions.HttpFunction;
import com.google.cloud.functions.HttpRequest;
import com.google.cloud.functions.HttpResponse;

public class Main implements HttpFunction {

    @Override
    public void service(HttpRequest request, HttpResponse response) throws Exception {
        String requestBody = new String(request.getInputStream().readAllBytes(), StandardCharsets.UTF_8);
        System.out.println(requestBody);
        response.getOutputStream().write("hello world, java11!\n".getBytes(StandardCharsets.UTF_8));
    }
}
