using DelimitedFiles

function count_minimal_fuel1(input_file)
    positions = readdlm(input_file, ',', Int )
    possible_positions = collect(minimum(positions):maximum(positions))
    fuel_costs = [sum(abs.(positions .- i)) for i in possible_positions]
    possition_idx = argmin(fuel_costs)
    println("best position = $(fuel_costs[possition_idx])")
end

count_minimal_fuel1("input_test.txt")
count_minimal_fuel1("input_full.txt")

function triangular_number(n)
    return n*(n+1)/2
end

function count_minimal_fuel2(input_file)
    positions = readdlm(input_file, ',', Int )
    possible_positions = collect(minimum(positions):maximum(positions))
    fuel_costs = [sum(triangular_number.(abs.(positions .- i))) for i in possible_positions]
    possition_idx = argmin(fuel_costs)
    println("minimum fuel = $(fuel_costs[possition_idx])")
end

count_minimal_fuel2("input_test.txt")
count_minimal_fuel2("input_full.txt")