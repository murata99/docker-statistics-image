
# Pkg.init()
# Pkg.resolve()

Pkg.add("Formatting")
Pkg.add("TimeZones")
Pkg.add("DataFrames")
Pkg.add("DataFramesMeta")
Pkg.add("StatsBase")
Pkg.add("YAML")
Pkg.add("JSON")
Pkg.add("Glob")
Pkg.add("HttpServer")
Pkg.add("Gadfly")
Pkg.add("StringEncodings")
Pkg.add("RCall")
Pkg.add("ArgParse")
Pkg.add("SQLite")
Pkg.add("ProfileView")
Pkg.add("JLD")

if try Pkg.installed("Redis") catch nothing end == nothing
    Pkg.clone("https://github.com/merl-dev/Redis.jl", "Redis")
    if VERSION.major == 0 && VERSION.minor == 6
        Pkg.checkout("Redis", "typestable0.6")
    end
    Pkg.build("Redis")
end

if try Pkg.installed("ConfParser") catch nothing end == nothing
    Pkg.clone("https://github.com/zznop/ConfParser.jl")
end

