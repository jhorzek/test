library(desc)
description <- desc::desc(file = "../../DESCRIPTION")
currentVersion <- description$get_version()

message("The current version is ", currentVersion)

newVersion <- gsub(pattern = "[0-9]+.[0-9].", 
                   replacement = "", 
                   x = currentVersion) |>
  as.numeric() + 1

newVersion <- gsub(pattern = "[0-9]$",
                   replacement = newVersion, 
                   x = currentVersion)

message("The new version is ", newVersion)

description$set_version(version = newVersion)

description$write()
