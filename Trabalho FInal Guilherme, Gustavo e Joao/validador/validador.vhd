LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity validador is
    port (
        ent_val   : in std_logic_vector(3 downto 0);                       
        saida_val : out std_logic_vector(3 downto 0)
    );
end validador;

architecture validador_arch of validador is
begin
    process(ent_val)
    begin
        if   (ent_val  = "0000") or   (ent_val  = "0001") or   (ent_val  = "0010") or   (ent_val  = "0011") or 
             (ent_val  = "0100") or   (ent_val  = "1000") or   (ent_val  = "1100") or   (ent_val  = "1111") then
             saida_val <= ent_val;
        else
             saida_val <= "1110";
        end if;
    end process;
end validador_arch;