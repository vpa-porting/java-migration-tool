plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.8.0"
}
rootProject.name = "LibraryMigrationTool"


// Explicit opt-in for joint source development; normal builds resolve the Maven artifact.
providers.gradleProperty("semanticCoreDir").orNull?.let { path ->
    includeBuild(file(path)) {
        dependencySubstitution {
            substitute(module("ru.vpa.porting:semantic-porting-core")).using(project(":"))
        }
    }
}
