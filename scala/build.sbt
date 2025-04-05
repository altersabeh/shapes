val scala3Version = "3.6.4"

lazy val root = project
    .in(file("."))
    .settings(
      name := "shapes",
      version := "1.0.0",
      scalaVersion := scala3Version,
      libraryDependencies += "org.scalameta" %% "munit" % "1.1.0" % Test
    )
