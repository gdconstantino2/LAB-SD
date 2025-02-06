LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY datapath_tb IS
END datapath_tb;

ARCHITECTURE tb_arch OF datapath_tb IS
    -- Component a ser testado
    COMPONENT datapath
        PORT (
            a     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            current_state : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            b     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            disp1, disp2, disp3 : OUT UNSIGNED(6 DOWNTO 0)
        );
    END COMPONENT;

    -- Sinais para os testes
    SIGNAL a_tb         : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL current_state_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL b_tb         : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL disp1_tb, disp2_tb, disp3_tb : UNSIGNED(6 DOWNTO 0);

BEGIN
    -- Instancia o módulo em teste
    UUT: datapath
        PORT MAP (
            a => a_tb,
            current_state => current_state_tb,
            b => b_tb,
            disp1 => disp1_tb,
            disp2 => disp2_tb,
            disp3 => disp3_tb
        );

    -- Processo de estimulação dos sinais
    STIMULUS: PROCESS
    BEGIN
        -- Teste 1: Estado 0000, Entrada 0000
        a_tb <= "0000";
        current_state_tb <= "0000";
        WAIT FOR 10 ns;

        -- Teste 2: Estado 0000, Entrada 0001
        a_tb <= "0001";
        WAIT FOR 10 ns;

        -- Teste 3: Estado 0001, Entrada 1100
        current_state_tb <= "0001";
        a_tb <= "1100";
        WAIT FOR 10 ns;

        -- Teste 4: Estado 0010, Entrada 0100
        current_state_tb <= "0010";
        a_tb <= "0100";
        WAIT FOR 10 ns;

        -- Teste 5: Estado 1111, Entrada 1000
        current_state_tb <= "1111";
        a_tb <= "1000";
        WAIT FOR 10 ns;

        -- Teste 6: Estado 1100, Entrada 1111
        current_state_tb <= "1100";
        a_tb <= "1111";
        WAIT FOR 10 ns;

        -- Teste 7: Estado 0100, Entrada 0011
        current_state_tb <= "0100";
        a_tb <= "0011";
        WAIT FOR 10 ns;

        -- Teste 8: Estado 1000, Entrada 0001
        current_state_tb <= "1000";
        a_tb <= "0001";
        WAIT FOR 10 ns;

        -- Fim do teste
        WAIT;
    END PROCESS;
END tb_arch;
