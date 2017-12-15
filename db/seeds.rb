u = User.create(name: "thyagobr", email: "thyagobr@gmail.com", password: "codeyourboat", role: "admin")
Task.create(text: "Trabalhando no Singularity", status: "todo", user: u)
Task.create(text: "Escrevendo docs", status: "todo", user: u)
Task.create(text: "Frozen task", status: "frozen", user: u)
