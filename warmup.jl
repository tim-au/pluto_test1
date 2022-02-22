using Plots
gr()

using LaTeXStrings

using Unitful
using Unitful: N, mm, inch, m, cm, MPa
Unitful.preferunits(u"mm, s"...)

using DataFrames

using LinearAlgebra

θ = LinRange(0, 2π, 100)
y = sin.(θ)

p1 = plot(θ, y, 
	title = L"sin(\theta)",
	xlabel = L"\theta",
	ylabel = L"Amplitude",
	xlim = [0, 2π],
	ylim = [-1, 1],
	legend = false
);

display(p1)

p2 = scatter(θ, y,
	alpha = 0.5,
	color = :jet1,
	marker_z = y,
	marker = :hexagon,
	markersize = 5,
	legend = false
);
display(p2)

F = [1000, 3200, -4000, 4300, -2750, 6630]N
r = [300mm, 400mm, 10inch, 15cm, 0.188m, 27cm] .|> mm

df = DataFrame(r=r, F=F)





