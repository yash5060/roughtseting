import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = {"src/test/resources/features"}, // Specify the directory containing feature files
    glue = {"stepDefinitions"} // Specify the package where your step definitions are located
)
public class TestRunner {
    // No need for any code here, annotations configure the behavior
}
