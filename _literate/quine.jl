print("print(\"*$(print))")

# q = println
# println("q = println")
# q(println)
# println(q)

# Need to think about replace
# q = "println(q"
# println(replace(q, " "))


# Attempt that can't deal with special characters ($, ", ;, \n)
#q = "println(q = \$(q)*q*\")\")";println("q = $(q)"*q*")")