LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity top_level is
    port (
        CLOCK         : in  std_logic;                     -- Clock global
        RESET         : in  std_logic;                     -- Reset global
        ent_top             : in  std_logic_vector(3 downto 0);  -- Entrada de 4 bits para o datapath
        saida_val            : out std_logic_vector(3 downto 0); -- Saída do decodificador
        disp1, disp2, disp3 : out unsigned(6 downto 0);    -- Saídas dos 3 displays de 7 segmentos
        current_state : out std_logic_vector(3 downto 0)   -- Estado atual da controladora
    );
end top_level;

architecture arch of top_level is
    -- Declaração dos componentes
    component controladora
        port (
            CLOCK         : in  std_logic;
            RESET         : in  std_logic;
            SEL           : in  std_logic_vector(3 downto 0); -- Entrada SEL de 16 bits
            current_state : out std_logic_vector(3 downto 0)
        );
    end component;

    component datapath
        port (
            ent_datapath             : in  std_logic_vector(3 downto 0);  -- Entrada de 4 bits
            saida_val             : out std_logic_vector(3 downto 0); -- Saída do validador
            disp1, disp2, disp3 : out unsigned(6 downto 0);    -- Saídas dos displays
            current_state : in  std_logic_vector(3 downto 0)  -- Estado atual da controladora
        );
    end component;

    -- Sinais internos
    signal saida_val_internal : std_logic_vector(3 downto 0); -- Sinal interno para SEL
    signal current_state_signal : std_logic_vector(3 downto 0);

begin
    -- Instância da controladora
    controladora_inst: controladora
        port map (
            CLOCK         => CLOCK,
            RESET         => RESET,
            SEL           => saida_val_internal, -- Conecta saida_val_internal à entrada SEL
            current_state => current_state_signal
        );

    -- Instância do datapath
    datapath_inst: datapath
        port map (
            ent_datapath             => ent_top,
            saida_val             => saida_val_internal, -- Conecta saida_val_internal à saída do datapath
            disp1         => disp1,
            disp2         => disp2,
            disp3         => disp3,
            current_state => current_state_signal -- Conecta o estado atual ao datapath
        );

    -- Conecta o sinal interno à porta de saída
    saida_val <= saida_val_internal; -- Saída d recebe o valor de d_internal
    current_state <= current_state_signal;

end arch;