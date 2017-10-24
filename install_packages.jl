
# Pkg.init()
# Pkg.resolve()

Pkg.add("DataFrames")
Pkg.add("DataFramesMeta")
Pkg.add("StatsBase")
Pkg.add("YAML")
Pkg.add("JSON")
Pkg.add("Glob")
Pkg.add("Gadfly")
Pkg.add("StringEncodings")
Pkg.add("RCall")
Pkg.add("ArgParse")
Pkg.add("SQLite")
Pkg.add("ProfileView")
# Pkg.add("IJulia")
# Pkg.build("ZMQ")

if try Pkg.installed("Redis") catch nothing end == nothing
    Pkg.clone("https://github.com/merl-dev/Redis.jl")
    Pkg.build("Redis")
end

if try Pkg.installed("ConfParser") catch nothing end == nothing
    Pkg.clone("https://github.com/zznop/ConfParser.jl")
end

