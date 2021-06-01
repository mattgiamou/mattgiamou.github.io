# This file was generated, do not modify it. # hide
t = range(τ, stop=t_end, length=Int((t_end - τ)*f))
Δt = t[2] - t[1]
u = A*sin.(0.8*π*(t.-τ)).*exp.(λ*(t.-τ))
x = x_minus .+ cumsum(u).*Δt

t′ = range(τ′, stop=t_end, length=Int((t_end-τ′)*f))
u′ = [u[1:f*T]; zeros(f*abs(τ′-τ)); u[T*f+1:end]]
x′ = x_minus .+ cumsum(u′).*Δt

t_y = range(0, stop=t_end, length=Int(t_end*f))
y = x[1:length(t_y)]
y′ = x′[1:length(t_y)];