@isMidSection = (file, fileTree) ->
  # Has directory inside but no file?
  unless isTest(file)
    midSectionsRegex = (new RegExp(file + "\\/[^\\.]+(?=,)"))
    return midSectionsRegex.test(fileTree)