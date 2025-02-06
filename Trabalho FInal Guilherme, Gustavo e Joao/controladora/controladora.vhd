LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity  controladora is
    port (
        CLOCK         : in  std_logic; -- Clock input
        RESET         : in  std_logic; -- Reset input
        SEL           : in  std_logic_vector(3 downto 0); -- Controle de transição
        current_state : out std_logic_vector(3 downto 0) -- Estado atual de saída
    );
end controladora;

architecture arch of controladora is
    -- Definição dos estados
    type state_type is (l0, l1, l2, l3, l4, l5, l6, l7);
    signal state, next_state : state_type := l0;

begin
    -- Processo para atualizar o estado na borda de subida do clock
    process (CLOCK, RESET)
    begin
        if RESET = '1' then
            state <= l0; -- Estado inicial após reset
        elsif falling_edge(CLOCK) then
            state <= next_state;
        end if;
    end process;

    -- Lógica de transição de estado
    process (state, SEL)
    begin
        case state is
            when l0 =>
                case SEL is
                    when "0001" => next_state <= l1;
                    when "0010" => next_state <= l2;
                    when "0011" => next_state <= l3;
                    when others => next_state <= l0;
                end case;

            when l1 =>
                case SEL is
                    when "1100" => next_state <= l4;
                    when "1000" => next_state <= l5;
                    when "0000" => next_state <= l0;
                    when others => next_state <= l1;
                end case;

            when l2 =>
                case SEL is
                    when "1100" => next_state <= l4;
                    when "0100" => next_state <= l6;
                    when "0000" => next_state <= l0;
                    when others => next_state <= l2;
                end case;

            when l3 =>
                case SEL is
                    when "1000" => next_state <= l5;
                    when "0100" => next_state <= l6;
                    when "0000" => next_state <= l0;
                    when others => next_state <= l3;
                end case;

            when l4 =>
                case SEL is
                    when "0001" => next_state <= l1;
                    when "0010" => next_state <= l2;
                    when "1111" => next_state <= l7;
                    when others => next_state <= l4;
                end case;

            when l5 =>
                case SEL is
                    when "0001" => next_state <= l1;
                    when "0011" => next_state <= l3;
                    when "1111" => next_state <= l7;
                    when others => next_state <= l5;
                end case;

            when l6 =>
                case SEL is
                    when "0011" => next_state <= l3;
                    when "0010" => next_state <= l2;
                    when "1111" => next_state <= l7;
                    when others => next_state <= l6;
                end case;

            when l7 =>
                case SEL is
                    when "1100" => next_state <= l4;
                    when "1000" => next_state <= l5;
                    when "0100" => next_state <= l6;
                    when others => next_state <= l7;
                end case;

            when others =>
                next_state <= l0; -- Estado de segurança
        end case;
    end process;

    -- Conversão do estado para um sinal de saída (opcional para depuração)
    process (state)
    begin
        case state is
            when l0 => current_state <= "0000";
            when l1 => current_state <= "0001";
            when l2 => current_state <= "0010";
            when l3 => current_state <= "0011";
            when l4 => current_state <= "1100";
            when l5 => current_state <= "1000";
            when l6 => current_state <= "0100";
            when l7 => current_state <= "1111";
            when others => current_state <= "0000";
        end case;
    end process;

end arch;
