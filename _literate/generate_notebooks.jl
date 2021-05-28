scripts = joinpath.("_literate", readdir("_literate"))
nbpath = joinpath("notebooks", "notebooks")
isdir(nbpath) || mkpath(nbpath)

for script in scripts
   # Generate annotated notebooks
   Literate.notebook(script, nbpath,
                     execute=false, documenter=false)
end