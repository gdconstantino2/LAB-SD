LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top_level_tb IS
END top_level_tb;

ARCHITECTURE tb_arch OF top_level_tb IS
    -- Componentes
    COMPONENT top_level
        PORT (
				CLOCK         : in  std_logic;                     -- Clock global
				RESET         : in  std_logic;                     -- Reset global
				ent_top             : in  std_logic_vector(3 downto 0);  -- Entrada de 4 bits para o datapath
				saida_val            : out std_logic_vector(3 downto 0); -- Saída do decodificador
				disp1, disp2, disp3 : out unsigned(6 downto 0);    -- Saídas dos 3 displays de 7 segmentos
				current_state : out std_logic_vector(3 downto 0)   -- Estado atual da controladora
        );
    END COMPONENT;

    -- Sinais internos para estímulo
    SIGNAL CLOCK         : STD_LOGIC := '0';
    SIGNAL RESET         : STD_LOGIC := '0';
    SIGNAL ent_top             : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL saida_val             : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL disp1, disp2, disp3 : UNSIGNED(6 DOWNTO 0);
    SIGNAL current_state : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Geração de clock (período de 10ns)
    CONSTANT CLOCK_PERIOD : TIME := 10 ns;
BEGIN
    -- Instância do DUT (Device Under Test)
    DUT: top_level
        PORT MAP (
            CLOCK         => CLOCK,
            RESET         => RESET,
            ent_top             => ent_top,
            saida_val             => saida_val,
            disp1         => disp1,
            disp2         => disp2,
            disp3         => disp3,
            current_state => current_state
        );

    -- Processo para gerar clock
    PROCESS
    BEGIN
        WHILE TRUE LOOP
            CLOCK <= '0';
            WAIT FOR CLOCK_PERIOD / 2;
            CLOCK <= '1';
            WAIT FOR CLOCK_PERIOD / 2;
        END LOOP;
    END PROCESS;

    -- Processo de estímulo
    PROCESS
    BEGIN
        -- Reset inicial
        RESET <= '1';
        WAIT FOR 20 ns;
        RESET <= '0';
        WAIT FOR 20 ns;

        -- Teste 1: Entrada 0000
       ent_top<= "0000";
        WAIT FOR 20 ns;

        -- Teste 2: Entrada 0001
       ent_top<= "0001";
        WAIT FOR 20 ns;

        -- Teste 3: Entrada 0010
       ent_top<= "0010";
        WAIT FOR 20 ns;

        -- Teste 4: Entrada 0011
       ent_top<= "0011";
        WAIT FOR 20 ns;

        -- Teste 5: Entrada 1100
       ent_top<= "1100";
        WAIT FOR 20 ns;
		  
		  -- Teste 6: Entrada 1111
		 ent_top<= "1111";
        WAIT FOR 20 ns;
		  
		  --Teste 7: Entrada 0000
		 ent_top<= "0000";
        WAIT FOR 20 ns;		  

		  --Teste 7: Entrada 1000		  
		  ent_top<= "1000";
		  WAIT FOR 20 ns;
		  
		  --Teste 8: Entrada 0011
		  ent_top<= "0011";
		  WAIT FOR 20 ns;

        --Teste 9: Entrada 0000
		  ent_top<= "0000";
		  WAIT FOR 20 ns;	
	
		  --Teste 10: Entrada 0011
		  ent_top<= "0011";
		  WAIT FOR 20 ns;
        -- Finaliza simulação
        WAIT;
    END PROCESS;
END tb_arch;
