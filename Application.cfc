component {

    setSettings()
    loadDatasources()
    setMappings()

    private void function setSettings() {
        this.name = "app1"
    }

    private void function loadDataSources() {
        this.datasources["dsn1"] = {
            driver = "mysql",
            class = "com.mysql.jdbc.Driver",
            url = "jdbc:mysql://database.backend:3306/"
                & "#server.system.environment.MARIADB_DATABASE#"
                & "?useUnicode=true&characterEncoding=UTF-8",
            username = server.system.environment.MARIADB_USER,
            password = server.system.environment.MARIADB_PASSWORD
        }
        this.datasource = "dsn1"
    }

    private void function setMappings() {
        var baseDir = getDirectoryFromPath(getCurrentTemplatePath())
        this.mappings["/testbox"] = "#baseDir#testbox"
    }
}
