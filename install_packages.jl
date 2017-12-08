
# Pkg.init()
# Pkg.resolve()

# Official packages
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

# import for Precompile
import Formatting
import TimeZones
import DataFrames
import DataFramesMeta
import StatsBase
import YAML
import JSON
import Glob
import HttpServer
import Gadfly
import StringEncodings
import RCall
RCall.reval("library(forecast)")
import ArgParse
import SQLite
import ProfileView
import JLD


# Unofficial packages
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

# import for Precompile
import Redis
import ConfParser
