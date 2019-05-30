function evalloop()
    val = "undefined"
    while true
        println("What is your expression? ")
        user_ipt = readline();
        if user_ipt == "done"
            break
        end
        val = eval(Meta.parse(user_ipt))
    end
    return val
end
