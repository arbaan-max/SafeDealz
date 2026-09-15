allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

// Flutter 3.44 keeps android.builtInKotlin=false. Plugins such as
// package_info_plus 10.2+ skip applying KGP on AGP 9, so their Kotlin
// classes never compile and GeneratedPluginRegistrant fails.
subprojects {
    if (findProperty("android.builtInKotlin") == "true") {
        return@subprojects
    }
    plugins.withId("com.android.library") {
        val hasKotlinSources = file("src/main/kotlin").let { it.isDirectory && it.walkTopDown().any { file -> file.extension == "kt" } }
        if (hasKotlinSources && !pluginManager.hasPlugin("org.jetbrains.kotlin.android")) {
            pluginManager.apply("org.jetbrains.kotlin.android")
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
