LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity datapath is
    port (
        ent_datapath             : in  std_logic_vector(3 downto 0);  -- Entrada de 4 bits
        current_state : in  std_logic_vector(3 downto 0);  -- Estado atual
        saida_val             : out std_logic_vector(3 downto 0);  -- Saída do validador
        disp1, disp2, disp3 : out unsigned(6 downto 0)     -- Saídas dos 3 displays de 7 segmentos
    );
end datapath;

architecture sistema_arch of datapath is
    signal saida_val_internal : std_logic_vector(3 downto 0); -- Sinal interno para b

    -- Constantes para os caracteres 'd' e 'A' em 7 segmentos
    constant CHAR_d : unsigned(6 downto 0) := "0111101"; -- 'd' em 7 segmentos
    constant CHAR_A : unsigned(6 downto 0) := "0001000"; -- 'A' em 7 segmentos

begin
    -- Instância do validador
    U1: entity work.validador
        port map (
            ent_val => ent_datapath,
            saida_val => saida_val_internal
        );

    -- Atribuição do sinal interno à saída
    saida_val <= saida_val_internal;

    -- Processo para controlar ent_datapath exibição dos displays
    process(saida_val_internal, current_state)
    begin
        -- Inicializa todos os displays com 'd'
        disp1 <= CHAR_d;
        disp2 <= CHAR_d;
        disp3 <= CHAR_d;

       case current_state is
			when "0000" =>
				 case saida_val_internal is
					when "0000" =>
						null;
					when "0001" =>
						disp1 <= CHAR_A;
					when "0010" =>
						disp2 <= CHAR_A;
					when "0011" =>
						disp3 <= CHAR_A;
					when others =>
						null;
				 end case;
			when "0001" =>
				 case saida_val_internal is
					when "0000" =>
						null;
					when "1100" =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
					when "1000" =>
						disp1 <= CHAR_A;
						disp3 <= CHAR_A;
					when others =>
						disp1 <= CHAR_A;
				 end case;
			when "0010" =>
				 case saida_val_internal is
					when "0000" =>
						null;
					when "1100" =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
					when "0100" =>
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
					when others =>
						disp2 <= CHAR_A;
				 end case;	
			when "0011" =>
				 case saida_val_internal is
					when "0000" =>
						null;
					when "0100" =>
						disp3 <= CHAR_A;
						disp2 <= CHAR_A;
					when "1000" =>
						disp1 <= CHAR_A;
						disp3 <= CHAR_A;
					when others =>
						disp3 <= CHAR_A;
				 end case;	
			when "1100" =>
				 case saida_val_internal is
					when "1111" =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
					when "0010" =>
						disp2 <= CHAR_A;
					when "0001" =>
						disp1 <= CHAR_A;
					when others =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
				 end case;	
			when "1000" =>
				case saida_val_internal is
					when "0001" =>
						disp1 <= CHAR_A;
					when "1111" =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
					when "0011" =>  
						disp3 <= CHAR_A;
					when others =>
						disp1 <= CHAR_A;
						disp3 <= CHAR_A;
				end case;
			when "0100" =>
				 case saida_val_internal is
					when "1111" =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
					when "0010" =>
						disp2 <= CHAR_A;
					when "0011" =>
						disp3 <= CHAR_A;
					when others =>
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
				 end case;	
			when "1111" =>
				 case saida_val_internal is
					when "1100" =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
					when "1000" =>
						disp1 <= CHAR_A;
						disp3 <= CHAR_A;
					when "0100" =>
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
					when others =>
						disp1 <= CHAR_A;
						disp2 <= CHAR_A;
						disp3 <= CHAR_A;
				 end case;	
			when others =>
				null;
        end case;
    end process;

end sistema_arch;
