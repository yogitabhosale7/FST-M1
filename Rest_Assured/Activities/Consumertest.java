package pactProject;

import au.com.dius.pact.consumer.dsl.DslPart;
import au.com.dius.pact.consumer.dsl.PactDslJsonBody;
import au.com.dius.pact.consumer.dsl.PactDslWithProvider;
import au.com.dius.pact.consumer.junit5.PactConsumerTestExt;
import au.com.dius.pact.consumer.junit5.PactTestFor;
import au.com.dius.pact.core.model.RequestResponsePact;
import au.com.dius.pact.core.model.annotations.Pact;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;

import java.util.HashMap;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;

    @ExtendWith(PactConsumerTestExt.class)
    public class consumerTest{
        Map<String, String> headers = new HashMap<>();

        @Pact(consumer = "UserConsumer", provider ="UserProvider")
        public RequestResponsePact createPact(PactDslWithProvider builder){

            headers.put("Content-Type","application/json");

            DslPart bodySentCreateUser = new PactDslJsonBody()
                    .numberType("id",100)
                    .stringType("firstName", "Yogita")
                    .stringType("lastName", "Bhosale")
                    .stringType("email","yogita.b@ibm.com");

            return builder.given("Post Request")
                    .uponReceiving("request to create a user")
                        .method("POST")
                        .path("createUser")
                        .headers(headers)
                        .body(bodySentCreateUser)
                    .willRespondWith()
                        .status(201)
                        .body(bodySentCreateUser)
                    .toPact();

}

@Test
@PactTestFor(providerName = "UserProvider", port = "8282")
public void consumerTest(){
    Map<String, Object> reqBody = new HashMap<>();
    reqBody.put("id",100);
    reqBody.put("firstName", "Yogita");
    reqBody.put("lastName", "Bhosale");
    reqBody.put("email","yogita.b@ibm.com");

    given().baseUri("http://localhost:8282/api/users")
            .headers(headers)
            .body(reqBody)
            .when().post()
			.log.all()
            .then()
			.statusCode(201)
            .body("email",equalTo("yogita.b@ibm.com"))
			.log().all();


}



}