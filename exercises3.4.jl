function dofour(fn, value)
    fn(value)
    fn(value)
    fn(value)
    fn(value)
end

function half_grid(fn, line1, line2)
    dofour(fn, line2)
    fn(line1)
end

function printgrid()
    fn = println
    line1 = "+" * "-"^4 * "+" * "-"^4 * "+"
    line2 = "|" * " "^4 * "|" * " "^4 * "|"
    fn(line1)
    half_grid(fn, line1, line2)
    half_grid(fn, line1, line2)
end

printgrid()

function print_separator(num_cols)
    col_separator = "+"
    col_spacer = "-"^4
    col = col_separator * col_spacer
    separator_line = col^num_cols * col_separator

    println(separator_line)
end

function print_row(num_cols)
    print_separator(num_cols)
    sides = "|"
    spacer = " "^4
    col = sides * spacer
    row_line = col^num_cols * sides

    dofour(println, row_line)
end

function printgrid2(num_cols)
    dofour(print_row, num_cols)
    print_separator(num_cols)
end

printgrid2(4)

# kind of silly but i was not told to use a for loop yet
# just starting with the basics
