programa {
  inclua biblioteca Util
  funcao inicio() {
    cadeia senha, extrato = ""
    inteiro menu = 10
    real saldo = 0.0, saque = 0.0, deposito = 0.0

    //login
    escreva("digite sua senha: ")
    leia(senha)
    limpa()
    enquanto(senha != "4041"){
      escreva("senha incorreta. digite novamente: ")
      leia(senha)
      limpa()
    }

    //menu
    enquanto(menu != 0){
      escreva("saldo: R$", saldo, "\n")
      escreva("(1)deposito\n(2)saque\n(3)extrato\n(0)sair\n")
      escreva("escolha: ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
          escreva("digite o valor do deposito. max.R$5.000,00 : ")
          leia(deposito)
          limpa()
          enquanto(deposito > 5000){
            escreva("valor digitado excede o limite.\n")
            escreva("digite novamente: ")
            leia(deposito)
            limpa()
          }
          saldo = saldo + deposito
          extrato = extrato + ("deposito R$" + deposito + "\n")
          escreva("deposito feito com sucesso!")
          Util.aguarde(3000)
          limpa()
        pare
        caso 2:
          escreva("digite o valor do saque. max. (", saldo, "): ")
          leia(saque)
          limpa()
          enquanto(saque > saldo){
            escreva("valor do saque excede o saldo.\n")
            escreva("digite novamente: ")
            leia(saque)
            limpa()
          }
          saldo = saldo - saque
          extrato = extrato + ("saque R$" + saque+ "\n")
          escreva("saque feito com sucesso!")
          Util.aguarde(3000)
          limpa()
        pare
        caso 3:
          escreva(extrato)
          Util.aguarde(5000)
        pare
      }
    }
  }
}
