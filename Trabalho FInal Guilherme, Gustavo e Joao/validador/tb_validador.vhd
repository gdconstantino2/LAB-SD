LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY validador_tb IS
END validador_tb;

ARCHITECTURE behavior OF validador_tb IS 

    -- Componente a ser testado
    COMPONENT validador
        PORT(
            a : IN  std_logic_vector(3 downto 0);
            b : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   
    -- Sinais de teste
    SIGNAL a_tb : std_logic_vector(3 downto 0) := (others => '0');
    SIGNAL b_tb : std_logic_vector(3 downto 0);
    
BEGIN

    -- Instância do DUT (Device Under Test)
    uut: validador PORT MAP (
          a => a_tb,
          b => b_tb
    );

    -- Processo de estimulação
    stim_proc: PROCESS
    BEGIN		
        -- Testando valores aceitos
        a_tb <= "0000"; WAIT FOR 10 ns;
        a_tb <= "0001"; WAIT FOR 10 ns;
        a_tb <= "0010"; WAIT FOR 10 ns;
        a_tb <= "0011"; WAIT FOR 10 ns;
        a_tb <= "0100"; WAIT FOR 10 ns;
        a_tb <= "1000"; WAIT FOR 10 ns;
        a_tb <= "1100"; WAIT FOR 10 ns;
        a_tb <= "1111"; WAIT FOR 10 ns;

        -- Testando valores não aceitos
        a_tb <= "0101"; WAIT FOR 10 ns;
        a_tb <= "0110"; WAIT FOR 10 ns;
        a_tb <= "0111"; WAIT FOR 10 ns;
        a_tb <= "1010"; WAIT FOR 10 ns;
        a_tb <= "1011"; WAIT FOR 10 ns;
        a_tb <= "1101"; WAIT FOR 10 ns;
        a_tb <= "1110"; WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END behavior;
