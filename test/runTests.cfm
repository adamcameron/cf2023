<cfscript>

    throw "wooooo";
    import testbox.system.TestBox
	param URL.testBundles="";
	if (URL.testBundles.len()) {
		param URL.directories = "";
	}else{
		param URL.directories="test.integration";
	}
	testBox = new TestBox(
		bundles = URL.testBundles,
		directories = URL.directories
	)
	// runs the tests with either HTML output if we browse to this file, or as text if it's run from the shell
	reportFormat = url.keyExists("reportFormat") ? url.reportFormat : "test.system.reports.SimpleReporter"
	result = testBox.run(reporter=reportFormat)
	writeOutput(result.trim())
</cfscript>
