plugins {
    kotlin("jvm") version "2.1.10"
}

group = "porting"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
    maven("https://jitpack.io")
}

dependencies {
    testImplementation(kotlin("test"))

    implementation("com.github.vpa-research:libsl-parser:c2db6b6")

    // https://mvnrepository.com/artifact/com.github.javaparser/javaparser-core
    implementation("com.github.javaparser:javaparser-core:3.26.3")

    // https://mvnrepository.com/artifact/com.github.javaparser/javaparser-symbol-solver-core
    implementation("com.github.javaparser:javaparser-symbol-solver-core:3.26.3")

    // core
    implementation("io.ksmt:ksmt-core:0.5.23")
    // z3 solver
    implementation("io.ksmt:ksmt-z3:0.5.23")
}

tasks.test {
    useJUnitPlatform()
}
kotlin {
    jvmToolchain(17)
}