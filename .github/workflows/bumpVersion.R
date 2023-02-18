library(desc)
description <- desc::desc()
currentVersion <- description$get_version()

newVersion <- gsub(pattern = "[0-9]+.[0-9].", 
                   replacement = "", 
                   x = currentVersion) |>
  as.numeric() + 1

newVersion <- gsub(pattern = "[0-9]$",
                   replacement = newVersion, 
                   x = currentVersion)

description$set_version(version = newVersion)

description$write()
