tab = require("tabuleiro")

local tabInteli= tab

tabInteli.no1 = nil;
tabInteli.no2 =  nil;
tabInteli.no3 = nil;
tabInteli.tabStatus = {0,0,0}
tabInteli.tabVazios = {}

local jogador = {"X","X","X"}
local a = 0
local b = 0
local cont = 0
function tabInteli.CriarEstados(faketab,jogador)
    
    if(vencedorMaquina()) then
        if(tabInteli)
        return faketab.tabStatus[1]  
    end


    
    end

        for a = 1 , 3, 1 do  
           for b = 1, 3, 1 do
                
                if (tabInteli[a][b] == " ") then
                    faketab[a][b]=jogador
                    if(tabInteli.Posi(a,b) == 3){
                        faketab.no1 = faketab

                        tabInteli.CriarEstados(tabInteli.no1,trocarJogador1())
                        
                    }
                    if(tabInteli.Posi(a,b) == 4){
                        faketab.no2 = faketab
                        
                        tabInteli.CriarEstados(tabInteli.no2,trocarJogador2())
                        
                    }
                    if(tabInteli.Posi(a,b) == 7){
                        faketab.no3 = faketab
                        
                        tabInteli.CriarEstados(tabInteli.no3,trocarJogador3())
                        
                    }
                
                end       
            end

        end
       criarNo()
      
end

function verificarJogo(faketab,jogador)
    if (vencedor(faketab)) then
        if (jogador == "X")then
        
        
        end


        end
    --Mostra uma mensagem de empate caso nao haja vencedor
    elseif (tabuleiro:empate()) then
        mensagem = display.newText("Deu VELHA a partida foi empatada.", 150, 300, native.systemFont, 18)
        mensagem:setFillColor(1,1,1)
    else
        --Proximo da vez
        jogadorVez()
    end
end



function tabInteli.trocarJogador1()
    if(jogador[1] == "O")then
        jogador[1] = "X"
    else
        jogador[1] = "O"
    end
    return jogador[1]
end


function tabInteli.trocarJogador2()
    if(jogador[2] == "O")then
        jogador[2] = "X"
    else
        jogador[2] = "O"
    end
    return jogador[2]
end



function tabInteli.trocarJogador1()
    if(jogador[3] == "O")then
        jogador[3] = "X"
    else
        jogador[3] = "O"
    end
    return jogador[3]

end


function tabInteli.Posi(a, b)
    local ret = 0

    if (a == 1 and b == 1) then
		ret = 1
	elseif  (a == 1 and b == 2) then
		ret = 2
    elseif  (a == 1 and b == 3) then
        ret = 3
    elseif  (a == 2 and b == 1) then
        ret = 4
    elseif  (a == 2 and b == 2) then
        ret = 5
    elseif  (a == 2 and b == 3) then
        ret = 6
    elseif  (a == 3 and b == 1) then
        ret = 7
    elseif  (a == 3 and b == 2) then
        ret = 8
    else  
		ret = 9
    end
    return ret;

end

        


return tabInteli