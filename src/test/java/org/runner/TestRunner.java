package org.runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features ="src\\test\\resources\\Features\\Payment.feature",
                                 glue = "org.s.test",
                                 dryRun = false)

public class TestRunner {
}
