using Literate

Literate.markdown("docs/sample.jl", "./other"; execute=true, flavor=Literate.CommonMarkFlavor())