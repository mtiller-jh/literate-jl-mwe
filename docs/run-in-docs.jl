using Literate

Literate.markdown("sample.jl", "../other"; execute=true, flavor=Literate.CommonMarkFlavor())