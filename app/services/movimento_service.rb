class MovimentoService

    def self.comprar(movimento)
        new(movimento).comprar
    end

    def self.vender(movimento)
        new(movimento).vender
    end

    def self.devolver_compra(movimento)
        new(movimento).devolver_compra
    end

    def self.devolver_venda(movimento)
        new(movimento).devolver_venda
    end

    def initialize(movimento)
        @data = movimento.data
        @quantidade = movimento.quantidade
        @pessoa = movimento.pessoa
        @operacao = movimento.operacao
        @produto = movimento.produto
    end

    def comprar
        self.cria_movimento
    end

    def vender
        estoque = Movimento.por_operacao(@produto, Date.today, 2) +
                  Movimento.por_operacao(@produto, Date.today, 3) - 
                  Movimento.por_operacao(@produto, Date.today, 1) - 
                  Movimento.por_operacao(@produto, Date.today, 4)

        self.processa_quantidade(estoque)
    end


    def devolver_compra
        estoque = Movimento.por_operacao(@produto, Date.today, 2) 

        self.processa_quantidade(estoque)
    end

    def devolver_venda
        estoque = Movimento.por_operacao(@produto, Date.today, 1) 

        self.processa_quantidade(estoque)
    end


    def cria_movimento
        Movimento.create(pessoa: @pessoa,
                         operacao: @operacao,
                         data: @data,
                         quantidade: @quantidade,
                         produto: @produto)
    end

    def processa_quantidade(estoque)
        estoque = 50
        if estoque >= @quantidade
            self.cria_movimento
        else
            raise StandardError, 'Quantidade maior do que o estoque'
        end
    end
end