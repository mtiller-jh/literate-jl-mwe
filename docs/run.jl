using Pkg

Pkg.activate("..")

using Literate

Literate.markdown("sample.jl", "."; flavor=Literate.CommonMarkFlavor())