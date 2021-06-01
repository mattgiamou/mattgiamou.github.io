# This file was generated, do not modify it. # hide
p1 = plot(t, u, linecolor=Σ_color, linewidth=lw, label=L"u(t)", legend=(0.88, 0.65), framestyle=:box, widen=widen, yticks=y_ticks1, xticks=(x_ticks, ["" for _ in x_ticks]))
plot!(t′, u′, linecolor=Σ′_color, linewidth=lw, label=L"u'(t)", linestyle=:dash);