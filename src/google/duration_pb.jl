# syntax: proto3
using Compat
using ProtoBuf
import ProtoBuf.meta

mutable struct Duration <: ProtoType
    seconds::Int64
    nanos::Int32
    Duration(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Duration

export Duration
