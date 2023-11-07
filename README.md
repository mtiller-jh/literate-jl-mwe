# Explanation

There are two different scripts here:

- `docs/run-in-docs.jl`
- `./run-from-root.jl`

One works and one doesn't.  The working case is to do the following:

```
$ cd docs
$ julia --project=.. ./run-in-docs.jl
```

This will create the expected files (`sample.md` and `sample-4.svg`) in the
`./other` directory.

However, running the following:

```
$ julia --project=. ./run-from-root.jl
```

from the root directory of this project (_i.e.,_ alongside this `README.md`)
results in the following error:

```
 Info: generating markdown page from `~/Source/MWEs/literate-jl-dir-issue/docs/sample.jl`
ERROR: LoadError: SystemError: opening file "./other/sample-4.svg": No such file or directory
Stacktrace:
  [1] systemerror(p::String, errno::Int32; extrainfo::Nothing)
    @ Base ./error.jl:176
```

What is strange is that running the working version actually generates a file
`./other/sample-4.svg` so why is it reporting that this file is missing?
