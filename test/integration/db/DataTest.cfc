component extends=testbox.system.BaseSpec {

    function run() {
        describe("Verifies test data is present", () => {
            var tablesToCheck = [
                "address",
                "country",
                "person",
                "personAddress",
                "personPhoneNumber",
                "phoneNumber",
                "test"
            ]

            tablesToCheck.each((table) => {
                it("Table #table# has rows", () => {
                    var rows = queryExecute("SELECT COUNT(1) AS count FROM #table#")
                    expect(rows.count[1]).toBeGte(1)
                })
            })
        })
    }
}
