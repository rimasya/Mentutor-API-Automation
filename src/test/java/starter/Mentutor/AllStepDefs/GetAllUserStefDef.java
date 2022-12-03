package starter.Mentutor.AllStepDefs;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.Mentutor.MentutorAPI;

public class GetAllUserStefDef {

    @Steps

    MentutorAPI mentutorAPI;
    @Given("Get all users")
    public void getAllUsers() {
        mentutorAPI.setGetAllUser();
    }

    @When("Send get all section request")
    public void sendGetAllSectionRequest() {
        SerenityRest.when().get(MentutorAPI.GET_ALL_USER);
    }

    @Then("Status code should be {int} OK")
    public void statusCodeShouldBeOK(int OK) {
        SerenityRest.then().statusCode(OK);
    }
}
