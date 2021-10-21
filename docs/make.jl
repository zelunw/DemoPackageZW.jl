using DemoPackageZW
using Documenter

DocMeta.setdocmeta!(DemoPackageZW, :DocTestSetup, :(using DemoPackageZW); recursive=true)

makedocs(;
    modules=[DemoPackageZW],
    authors="Zelun Wang <zelunwang@gmail.com> and contributors",
    repo="https://github.com/zelunw/DemoPackageZW.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageZW.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://zelunw.github.io/DemoPackageZW.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/zelunw/DemoPackageZW.jl",
    devbranch="main",
)
