# This file was generated, do not modify it. # hide
p3 = plot(t_y, y, linecolor=Σ_color, linewidth=lw, label=L"y(t)=x(t+\tau)", legend=(0.15, 0.65), framestyle=:box, widen=widen)
plot!(t_y, y′, linecolor=Σ′_color, label=L"y'(t)=x'(t+\tau')", linestyle=:dash, linewidth=lw)
plot!(rectangle(abs(τ),12,0,-5), opacity=shaded_alpha, color=light_blue_color, linewidth=0, label=false)
annotate!((0.37, 0.66, text(L"y(t)=y'(t)", annotation_font_size)))
annotate!((0.37, 0.44, text(L"\forall t \in [0, \tau_{+}]", annotation_font_size)))
xlabel!("Time (s)")
title!("Outputs");