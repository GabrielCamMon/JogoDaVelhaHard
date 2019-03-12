tab = require("tabuleiro")

tabInteli= tab

local fakeTab= { }
        fakeTab.no1 = nil;
        fakeTab.no2 =  nil;
        fakeTab.no3 = nil;
        fakeTab.tabVazios = {}

local tabVazios = {nil,nil,nil}
local a = 0
local b = 0
local cont = 0
function tabInteli.QuaisSaoVazios()
    
        for a = 1 , 3, 1 do  
           for b = 1, 3, 1 do

            if (tabInteli[a][b] == " ") then
                table.insert(tabVazios, tabInteli.Posi(a,b))
            end       
           end

        end
       criarNo()
      
end

function criarNo()
    for key,value in pairs(fake.tabVazios) do --actualcode
        if(value = 1) then

            fakeTab.no1 = fakeTab
        end
        if(value = 2) then
            fakeTab.no2 = fakeTab
        end
        if(value = 3) then
            fakeTab.no3 = fakeTab
        end
      end
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