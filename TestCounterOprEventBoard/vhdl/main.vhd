library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

package package_main is 
component main is port 
 ( 
  port_Keys : in std_logic_vector( 3 downto 0 );
  port_Keys_ev : in std_logic;
  port_Switches : in std_logic_vector( 9 downto 0 );
  port_Leds : out std_logic_vector( 9 downto 0 );
  port_Hex0 : out std_logic_vector( 7 downto 0 );
  port_Hex1 : out std_logic_vector( 7 downto 0 );
  port_Hex4 : out std_logic_vector( 7 downto 0 );
  port_Hex5 : out std_logic_vector( 7 downto 0 );
  start : in std_logic;
  clk : in std_logic ); 

end component;


component component_11 is port 
 ( 
  clk : in std_logic; 
  port_iKeys : in unsigned( 3 downto 0 );
  port_iKeys_ev : in std_logic;
  port_iSwitches : in unsigned( 9 downto 0 );
  port_oOpr : out unsigned( 2 downto 0 );
  port_oOpr_ev : out std_logic;
  port_oLoadValue : out unsigned( 7 downto 0 );
  start : in std_logic );
end component;


component component_11_ON0 is port 
 ( 
  port_iKeys : in unsigned( 3 downto 0 );
  port_iKeys_ev : in std_logic;
  port_iSwitches : in unsigned( 9 downto 0 );
  port_oOpr_ev : out std_logic;
  port_oOpr : inout unsigned( 2 downto 0 );
  port_oOpr_old : in unsigned( 2 downto 0 );
  port_oOpr_as : out std_logic;
  port_oLoadValue : inout unsigned( 7 downto 0 );
  port_oLoadValue_old : in unsigned( 7 downto 0 );
  port_oLoadValue_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component component_11_ON256 is port 
 ( 
  port_iKeys : in unsigned( 3 downto 0 );
  port_iKeys_ev : in std_logic;
  port_iSwitches : in unsigned( 9 downto 0 );
  port_oOpr_ev : out std_logic;
  port_oOpr : inout unsigned( 2 downto 0 );
  port_oOpr_old : in unsigned( 2 downto 0 );
  port_oOpr_as : out std_logic;
  port_oLoadValue : inout unsigned( 7 downto 0 );
  port_oLoadValue_old : in unsigned( 7 downto 0 );
  port_oLoadValue_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component component_12 is port 
 ( 
  clk : in std_logic; 
  port_iOpr : in unsigned( 2 downto 0 );
  port_iOpr_ev : in std_logic;
  port_iLoadValue : in unsigned( 7 downto 0 );
  port_oValue : out unsigned( 7 downto 0 );
  port_oValue_ev : out std_logic;
  start : in std_logic );
end component;


component component_12_ON0 is port 
 ( 
  port_iOpr : in unsigned( 2 downto 0 );
  port_iOpr_ev : in std_logic;
  port_iLoadValue : in unsigned( 7 downto 0 );
  port_oValue_ev : out std_logic;
  port_oValue : inout unsigned( 7 downto 0 );
  port_oValue_old : in unsigned( 7 downto 0 );
  port_oValue_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component component_2 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 3 downto 0 );
  port_iPoint : in unsigned( 0 downto 0 );
  port_oHex : out unsigned( 7 downto 0 );
  start : in std_logic );
end component;


component component_2_ON256 is port 
 ( 
  port_iValue : in unsigned( 3 downto 0 );
  port_iPoint : in unsigned( 0 downto 0 );
  port_oHex : inout unsigned( 7 downto 0 );
  port_oHex_old : in unsigned( 7 downto 0 );
  port_oHex_as : out std_logic;
  variable_tHex : in unsigned( 7 downto 0 );
  variable_tHexPoint : in unsigned( 7 downto 0 );
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component component_4 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 7 downto 0 );
  port_iPoints : in unsigned( 1 downto 0 );
  port_oHex0 : out unsigned( 3 downto 0 );
  port_oPoint0 : out unsigned( 0 downto 0 );
  port_oHex1 : out unsigned( 3 downto 0 );
  port_oPoint1 : out unsigned( 0 downto 0 );
  start : in std_logic );
end component;


component component_4_ON256 is port 
 ( 
  port_iValue : in unsigned( 7 downto 0 );
  port_iPoints : in unsigned( 1 downto 0 );
  port_oHex0 : inout unsigned( 3 downto 0 );
  port_oHex0_old : in unsigned( 3 downto 0 );
  port_oHex0_as : out std_logic;
  port_oPoint0 : inout unsigned( 0 downto 0 );
  port_oPoint0_old : in unsigned( 0 downto 0 );
  port_oPoint0_as : out std_logic;
  port_oHex1 : inout unsigned( 3 downto 0 );
  port_oHex1_old : in unsigned( 3 downto 0 );
  port_oHex1_as : out std_logic;
  port_oPoint1 : inout unsigned( 0 downto 0 );
  port_oPoint1_old : in unsigned( 0 downto 0 );
  port_oPoint1_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component component_6 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 15 downto 0 );
  port_iPoints : in unsigned( 3 downto 0 );
  port_oHex0 : out unsigned( 3 downto 0 );
  port_oPoint0 : out unsigned( 0 downto 0 );
  port_oHex1 : out unsigned( 3 downto 0 );
  port_oPoint1 : out unsigned( 0 downto 0 );
  port_oHex2 : out unsigned( 3 downto 0 );
  port_oPoint2 : out unsigned( 0 downto 0 );
  port_oHex3 : out unsigned( 3 downto 0 );
  port_oPoint3 : out unsigned( 0 downto 0 );
  start : in std_logic );
end component;


component component_6_ON256 is port 
 ( 
  port_iValue : in unsigned( 15 downto 0 );
  port_iPoints : in unsigned( 3 downto 0 );
  port_oHex0 : inout unsigned( 3 downto 0 );
  port_oHex0_old : in unsigned( 3 downto 0 );
  port_oHex0_as : out std_logic;
  port_oPoint0 : inout unsigned( 0 downto 0 );
  port_oPoint0_old : in unsigned( 0 downto 0 );
  port_oPoint0_as : out std_logic;
  port_oHex1 : inout unsigned( 3 downto 0 );
  port_oHex1_old : in unsigned( 3 downto 0 );
  port_oHex1_as : out std_logic;
  port_oPoint1 : inout unsigned( 0 downto 0 );
  port_oPoint1_old : in unsigned( 0 downto 0 );
  port_oPoint1_as : out std_logic;
  port_oHex2 : inout unsigned( 3 downto 0 );
  port_oHex2_old : in unsigned( 3 downto 0 );
  port_oHex2_as : out std_logic;
  port_oPoint2 : inout unsigned( 0 downto 0 );
  port_oPoint2_old : in unsigned( 0 downto 0 );
  port_oPoint2_as : out std_logic;
  port_oHex3 : inout unsigned( 3 downto 0 );
  port_oHex3_old : in unsigned( 3 downto 0 );
  port_oHex3_as : out std_logic;
  port_oPoint3 : inout unsigned( 0 downto 0 );
  port_oPoint3_old : in unsigned( 0 downto 0 );
  port_oPoint3_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component component_8 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 23 downto 0 );
  port_iPoints : in unsigned( 5 downto 0 );
  port_oHex0 : out unsigned( 3 downto 0 );
  port_oPoint0 : out unsigned( 0 downto 0 );
  port_oHex1 : out unsigned( 3 downto 0 );
  port_oPoint1 : out unsigned( 0 downto 0 );
  port_oHex2 : out unsigned( 3 downto 0 );
  port_oPoint2 : out unsigned( 0 downto 0 );
  port_oHex3 : out unsigned( 3 downto 0 );
  port_oPoint3 : out unsigned( 0 downto 0 );
  port_oHex4 : out unsigned( 3 downto 0 );
  port_oPoint4 : out unsigned( 0 downto 0 );
  port_oHex5 : out unsigned( 3 downto 0 );
  port_oPoint5 : out unsigned( 0 downto 0 );
  start : in std_logic );
end component;


component component_8_ON256 is port 
 ( 
  port_iValue : in unsigned( 23 downto 0 );
  port_iPoints : in unsigned( 5 downto 0 );
  port_oHex0 : inout unsigned( 3 downto 0 );
  port_oHex0_old : in unsigned( 3 downto 0 );
  port_oHex0_as : out std_logic;
  port_oPoint0 : inout unsigned( 0 downto 0 );
  port_oPoint0_old : in unsigned( 0 downto 0 );
  port_oPoint0_as : out std_logic;
  port_oHex1 : inout unsigned( 3 downto 0 );
  port_oHex1_old : in unsigned( 3 downto 0 );
  port_oHex1_as : out std_logic;
  port_oPoint1 : inout unsigned( 0 downto 0 );
  port_oPoint1_old : in unsigned( 0 downto 0 );
  port_oPoint1_as : out std_logic;
  port_oHex2 : inout unsigned( 3 downto 0 );
  port_oHex2_old : in unsigned( 3 downto 0 );
  port_oHex2_as : out std_logic;
  port_oPoint2 : inout unsigned( 0 downto 0 );
  port_oPoint2_old : in unsigned( 0 downto 0 );
  port_oPoint2_as : out std_logic;
  port_oHex3 : inout unsigned( 3 downto 0 );
  port_oHex3_old : in unsigned( 3 downto 0 );
  port_oHex3_as : out std_logic;
  port_oPoint3 : inout unsigned( 0 downto 0 );
  port_oPoint3_old : in unsigned( 0 downto 0 );
  port_oPoint3_as : out std_logic;
  port_oHex4 : inout unsigned( 3 downto 0 );
  port_oHex4_old : in unsigned( 3 downto 0 );
  port_oHex4_as : out std_logic;
  port_oPoint4 : inout unsigned( 0 downto 0 );
  port_oPoint4_old : in unsigned( 0 downto 0 );
  port_oPoint4_as : out std_logic;
  port_oHex5 : inout unsigned( 3 downto 0 );
  port_oHex5_old : in unsigned( 3 downto 0 );
  port_oHex5_as : out std_logic;
  port_oPoint5 : inout unsigned( 0 downto 0 );
  port_oPoint5_old : in unsigned( 0 downto 0 );
  port_oPoint5_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component;


component AND2STD is 
port 
( 
  I0 : in std_logic;
  I1 : in std_logic;
  O : out std_logic 
); 
end component;

component multiOr_1
is 
port 
( 
 input : in std_logic;
 output : out std_logic );
end component;


component multiOr_0
is 
port 
( 
 input : in std_logic;
 output : out std_logic );
end component;


component MUXPRIO_2_type_28
is 
port 
( 
  AsIn : std_logic_vector( 1 downto 0 ) ;
  valC0 : in unsigned( 2 downto 0 );
  valC1 : in unsigned( 2 downto 0 );
  oldVal : in unsigned( 2 downto 0 );
  outVal : out unsigned( 2 downto 0 ) );
end component;


component FFD_type_28
is 
generic( initValue : unsigned( 2 downto 0 ) );
port 
( 
 d : in unsigned( 2 downto 0 );
 q : out unsigned( 2 downto 0 );
 clk : in std_logic );
end component;


component multiOr_2
is 
port 
( 
 input : in std_logic_vector( 1 downto 0 );
 output : out std_logic );
end component;


component MUXPRIO_2_type_5
is 
port 
( 
  AsIn : std_logic_vector( 1 downto 0 ) ;
  valC0 : in unsigned( 7 downto 0 );
  valC1 : in unsigned( 7 downto 0 );
  oldVal : in unsigned( 7 downto 0 );
  outVal : out unsigned( 7 downto 0 ) );
end component;


component FFD_type_5
is 
generic( initValue : unsigned( 7 downto 0 ) );
port 
( 
 d : in unsigned( 7 downto 0 );
 q : out unsigned( 7 downto 0 );
 clk : in std_logic );
end component;


component FFD_std_logic
is 
generic( initValue : std_logic );
port 
( 
 d : in std_logic;
 q : out std_logic;
 clk : in std_logic );
end component;


component MUXPRIO_2_time
is 
port 
( 
  AsIn : std_logic_vector( 1 downto 0 ) ;
  valC0 : in signed( 63 downto 0 );
  valC1 : in signed( 63 downto 0 );
  oldVal : in signed( 63 downto 0 );
  outVal : out signed( 63 downto 0 ) );
end component;


component MUXPRIO_1_type_5
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 7 downto 0 );
  oldVal : in unsigned( 7 downto 0 );
  outVal : out unsigned( 7 downto 0 ) );
end component;


component MUXPRIO_1_time
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in signed( 63 downto 0 );
  oldVal : in signed( 63 downto 0 );
  outVal : out signed( 63 downto 0 ) );
end component;


component MUXPRIO_1_type_21
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 3 downto 0 );
  oldVal : in unsigned( 3 downto 0 );
  outVal : out unsigned( 3 downto 0 ) );
end component;


component FFD_type_21
is 
generic( initValue : unsigned( 3 downto 0 ) );
port 
( 
 d : in unsigned( 3 downto 0 );
 q : out unsigned( 3 downto 0 );
 clk : in std_logic );
end component;


component MUXPRIO_1_signed0
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 0 downto 0 );
  oldVal : in unsigned( 0 downto 0 );
  outVal : out unsigned( 0 downto 0 ) );
end component;


component FFD_signed0
is 
generic( initValue : unsigned( 0 downto 0 ) );
port 
( 
 d : in unsigned( 0 downto 0 );
 q : out unsigned( 0 downto 0 );
 clk : in std_logic );
end component;


component MUXPRIO_1_type_23
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 3 downto 0 );
  oldVal : in unsigned( 3 downto 0 );
  outVal : out unsigned( 3 downto 0 ) );
end component;


component FFD_type_23
is 
generic( initValue : unsigned( 3 downto 0 ) );
port 
( 
 d : in unsigned( 3 downto 0 );
 q : out unsigned( 3 downto 0 );
 clk : in std_logic );
end component;


component MUXPRIO_1_type_26
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 3 downto 0 );
  oldVal : in unsigned( 3 downto 0 );
  outVal : out unsigned( 3 downto 0 ) );
end component;


component FFD_type_26
is 
generic( initValue : unsigned( 3 downto 0 ) );
port 
( 
 d : in unsigned( 3 downto 0 );
 q : out unsigned( 3 downto 0 );
 clk : in std_logic );
end component;


end package package_main;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity main is port 
 ( 
  port_Keys : in std_logic_vector( 3 downto 0 );
  port_Keys_ev : in std_logic;
  port_Switches : in std_logic_vector( 9 downto 0 );
  port_Leds : out std_logic_vector( 9 downto 0 );
  port_Hex0 : out std_logic_vector( 7 downto 0 );
  port_Hex1 : out std_logic_vector( 7 downto 0 );
  port_Hex4 : out std_logic_vector( 7 downto 0 );
  port_Hex5 : out std_logic_vector( 7 downto 0 );
  start : in std_logic;
  clk : in std_logic ); 

end main;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_11 is port 
 ( 
  clk : in std_logic; 
  port_iKeys : in unsigned( 3 downto 0 );
  port_iKeys_ev : in std_logic;
  port_iSwitches : in unsigned( 9 downto 0 );
  port_oOpr : out unsigned( 2 downto 0 );
  port_oOpr_ev : out std_logic;
  port_oLoadValue : out unsigned( 7 downto 0 );
  start : in std_logic );
end component_11;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_11_ON0 is port 
 ( 
  port_iKeys : in unsigned( 3 downto 0 );
  port_iKeys_ev : in std_logic;
  port_iSwitches : in unsigned( 9 downto 0 );
  port_oOpr_ev : out std_logic;
  port_oOpr : inout unsigned( 2 downto 0 );
  port_oOpr_old : in unsigned( 2 downto 0 );
  port_oOpr_as : out std_logic;
  port_oLoadValue : inout unsigned( 7 downto 0 );
  port_oLoadValue_old : in unsigned( 7 downto 0 );
  port_oLoadValue_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_11_ON0;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_11_ON256 is port 
 ( 
  port_iKeys : in unsigned( 3 downto 0 );
  port_iKeys_ev : in std_logic;
  port_iSwitches : in unsigned( 9 downto 0 );
  port_oOpr_ev : out std_logic;
  port_oOpr : inout unsigned( 2 downto 0 );
  port_oOpr_old : in unsigned( 2 downto 0 );
  port_oOpr_as : out std_logic;
  port_oLoadValue : inout unsigned( 7 downto 0 );
  port_oLoadValue_old : in unsigned( 7 downto 0 );
  port_oLoadValue_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_11_ON256;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_12 is port 
 ( 
  clk : in std_logic; 
  port_iOpr : in unsigned( 2 downto 0 );
  port_iOpr_ev : in std_logic;
  port_iLoadValue : in unsigned( 7 downto 0 );
  port_oValue : out unsigned( 7 downto 0 );
  port_oValue_ev : out std_logic;
  start : in std_logic );
end component_12;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_12_ON0 is port 
 ( 
  port_iOpr : in unsigned( 2 downto 0 );
  port_iOpr_ev : in std_logic;
  port_iLoadValue : in unsigned( 7 downto 0 );
  port_oValue_ev : out std_logic;
  port_oValue : inout unsigned( 7 downto 0 );
  port_oValue_old : in unsigned( 7 downto 0 );
  port_oValue_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_12_ON0;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_2 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 3 downto 0 );
  port_iPoint : in unsigned( 0 downto 0 );
  port_oHex : out unsigned( 7 downto 0 );
  start : in std_logic );
end component_2;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_2_ON256 is port 
 ( 
  port_iValue : in unsigned( 3 downto 0 );
  port_iPoint : in unsigned( 0 downto 0 );
  port_oHex : inout unsigned( 7 downto 0 );
  port_oHex_old : in unsigned( 7 downto 0 );
  port_oHex_as : out std_logic;
  variable_tHex : in unsigned( 7 downto 0 );
  variable_tHexPoint : in unsigned( 7 downto 0 );
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_2_ON256;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_4 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 7 downto 0 );
  port_iPoints : in unsigned( 1 downto 0 );
  port_oHex0 : out unsigned( 3 downto 0 );
  port_oPoint0 : out unsigned( 0 downto 0 );
  port_oHex1 : out unsigned( 3 downto 0 );
  port_oPoint1 : out unsigned( 0 downto 0 );
  start : in std_logic );
end component_4;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_4_ON256 is port 
 ( 
  port_iValue : in unsigned( 7 downto 0 );
  port_iPoints : in unsigned( 1 downto 0 );
  port_oHex0 : inout unsigned( 3 downto 0 );
  port_oHex0_old : in unsigned( 3 downto 0 );
  port_oHex0_as : out std_logic;
  port_oPoint0 : inout unsigned( 0 downto 0 );
  port_oPoint0_old : in unsigned( 0 downto 0 );
  port_oPoint0_as : out std_logic;
  port_oHex1 : inout unsigned( 3 downto 0 );
  port_oHex1_old : in unsigned( 3 downto 0 );
  port_oHex1_as : out std_logic;
  port_oPoint1 : inout unsigned( 0 downto 0 );
  port_oPoint1_old : in unsigned( 0 downto 0 );
  port_oPoint1_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_4_ON256;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_6 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 15 downto 0 );
  port_iPoints : in unsigned( 3 downto 0 );
  port_oHex0 : out unsigned( 3 downto 0 );
  port_oPoint0 : out unsigned( 0 downto 0 );
  port_oHex1 : out unsigned( 3 downto 0 );
  port_oPoint1 : out unsigned( 0 downto 0 );
  port_oHex2 : out unsigned( 3 downto 0 );
  port_oPoint2 : out unsigned( 0 downto 0 );
  port_oHex3 : out unsigned( 3 downto 0 );
  port_oPoint3 : out unsigned( 0 downto 0 );
  start : in std_logic );
end component_6;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_6_ON256 is port 
 ( 
  port_iValue : in unsigned( 15 downto 0 );
  port_iPoints : in unsigned( 3 downto 0 );
  port_oHex0 : inout unsigned( 3 downto 0 );
  port_oHex0_old : in unsigned( 3 downto 0 );
  port_oHex0_as : out std_logic;
  port_oPoint0 : inout unsigned( 0 downto 0 );
  port_oPoint0_old : in unsigned( 0 downto 0 );
  port_oPoint0_as : out std_logic;
  port_oHex1 : inout unsigned( 3 downto 0 );
  port_oHex1_old : in unsigned( 3 downto 0 );
  port_oHex1_as : out std_logic;
  port_oPoint1 : inout unsigned( 0 downto 0 );
  port_oPoint1_old : in unsigned( 0 downto 0 );
  port_oPoint1_as : out std_logic;
  port_oHex2 : inout unsigned( 3 downto 0 );
  port_oHex2_old : in unsigned( 3 downto 0 );
  port_oHex2_as : out std_logic;
  port_oPoint2 : inout unsigned( 0 downto 0 );
  port_oPoint2_old : in unsigned( 0 downto 0 );
  port_oPoint2_as : out std_logic;
  port_oHex3 : inout unsigned( 3 downto 0 );
  port_oHex3_old : in unsigned( 3 downto 0 );
  port_oHex3_as : out std_logic;
  port_oPoint3 : inout unsigned( 0 downto 0 );
  port_oPoint3_old : in unsigned( 0 downto 0 );
  port_oPoint3_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_6_ON256;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_8 is port 
 ( 
  clk : in std_logic; 
  port_iValue : in unsigned( 23 downto 0 );
  port_iPoints : in unsigned( 5 downto 0 );
  port_oHex0 : out unsigned( 3 downto 0 );
  port_oPoint0 : out unsigned( 0 downto 0 );
  port_oHex1 : out unsigned( 3 downto 0 );
  port_oPoint1 : out unsigned( 0 downto 0 );
  port_oHex2 : out unsigned( 3 downto 0 );
  port_oPoint2 : out unsigned( 0 downto 0 );
  port_oHex3 : out unsigned( 3 downto 0 );
  port_oPoint3 : out unsigned( 0 downto 0 );
  port_oHex4 : out unsigned( 3 downto 0 );
  port_oPoint4 : out unsigned( 0 downto 0 );
  port_oHex5 : out unsigned( 3 downto 0 );
  port_oPoint5 : out unsigned( 0 downto 0 );
  start : in std_logic );
end component_8;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity component_8_ON256 is port 
 ( 
  port_iValue : in unsigned( 23 downto 0 );
  port_iPoints : in unsigned( 5 downto 0 );
  port_oHex0 : inout unsigned( 3 downto 0 );
  port_oHex0_old : in unsigned( 3 downto 0 );
  port_oHex0_as : out std_logic;
  port_oPoint0 : inout unsigned( 0 downto 0 );
  port_oPoint0_old : in unsigned( 0 downto 0 );
  port_oPoint0_as : out std_logic;
  port_oHex1 : inout unsigned( 3 downto 0 );
  port_oHex1_old : in unsigned( 3 downto 0 );
  port_oHex1_as : out std_logic;
  port_oPoint1 : inout unsigned( 0 downto 0 );
  port_oPoint1_old : in unsigned( 0 downto 0 );
  port_oPoint1_as : out std_logic;
  port_oHex2 : inout unsigned( 3 downto 0 );
  port_oHex2_old : in unsigned( 3 downto 0 );
  port_oHex2_as : out std_logic;
  port_oPoint2 : inout unsigned( 0 downto 0 );
  port_oPoint2_old : in unsigned( 0 downto 0 );
  port_oPoint2_as : out std_logic;
  port_oHex3 : inout unsigned( 3 downto 0 );
  port_oHex3_old : in unsigned( 3 downto 0 );
  port_oHex3_as : out std_logic;
  port_oPoint3 : inout unsigned( 0 downto 0 );
  port_oPoint3_old : in unsigned( 0 downto 0 );
  port_oPoint3_as : out std_logic;
  port_oHex4 : inout unsigned( 3 downto 0 );
  port_oHex4_old : in unsigned( 3 downto 0 );
  port_oHex4_as : out std_logic;
  port_oPoint4 : inout unsigned( 0 downto 0 );
  port_oPoint4_old : in unsigned( 0 downto 0 );
  port_oPoint4_as : out std_logic;
  port_oHex5 : inout unsigned( 3 downto 0 );
  port_oHex5_old : in unsigned( 3 downto 0 );
  port_oHex5_as : out std_logic;
  port_oPoint5 : inout unsigned( 0 downto 0 );
  port_oPoint5_old : in unsigned( 0 downto 0 );
  port_oPoint5_as : out std_logic;
  timer_value_in : in signed( 63 downto 0 );
  timer_value_out : out signed( 63 downto 0 );
  start_timer : out std_logic;
  stop_timer : out std_logic;
  timer_as : out std_logic );
end component_8_ON256;


architecture ON0 of component_11_ON0 is
signal G0 : unsigned( 0 downto 0 );
signal SignalExp_3 : unsigned( 2 downto 0 );
signal SignalExp_4 : unsigned( 3 downto 0 );
signal SignalExp_5 : boolean;
signal SignalExp_6 : boolean;
signal SignalExp_7 : boolean;
signal SignalExp_8 : boolean;
signal G1 : unsigned( 0 downto 0 );
signal SignalExp_2 : unsigned( 2 downto 0 );
signal SignalExp_0 : unsigned( 2 downto 0 );
begin 
port_oLoadValue_as <= '0';


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_4 <= port_iKeys;
SignalExp_5 <= SignalExp_4 = b"0001";
SignalExp_6 <= SignalExp_4 = b"0010";
SignalExp_7 <= SignalExp_4 = b"0100";
SignalExp_8 <= SignalExp_4 = b"1000";
SignalExp_3 <= b"001" when SignalExp_5 else 
b"010" when SignalExp_6 else 
b"011" when SignalExp_7 else 
b"100" when SignalExp_8 else 
b"000";
SignalExp_2 <= SignalExp_3;
SignalExp_0 <= SignalExp_2;


G0 <= toBit( true );

G1 <= toBit( true );

A0 : for i in 0 to 2
 generate

port_oOpr(i) <= ( G1(0) and SignalExp_2(i) ) or 
'0' ;

end generate A0;

port_oOpr_as <= ( toSimpleBit( G0 ) and '0' ) or 
( toSimpleBit( G1 ) and '1' ) or 
'0';
port_oOpr_ev <= ( toSimpleBit( G0 ) and '1' ) or 
( toSimpleBit( G1 ) and '0' ) or 
'0';
end ON0;


architecture ON256 of component_11_ON256 is
signal SignalExp_2 : unsigned( 9 downto 0 );
signal SignalExp_1 : unsigned( 7 downto 0 );
signal G2 : unsigned( 0 downto 0 );
signal SignalExp_0 : unsigned( 7 downto 0 );
constant k0 : unsigned( 7 downto 0 ) := b"00000111";
constant k1 : unsigned( 7 downto 0 ) := b"00000000";
begin 
port_oOpr_ev <= '0';
port_oOpr_as <= '0';


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_2 <= getBits ( 10, port_iSwitches, k0, k1 );
SignalExp_1 <= toUnsigned( 8 , SignalExp_2 );
SignalExp_0 <= SignalExp_1;


G2 <= toBit( true );

A1 : for i in 0 to 7
 generate

port_oLoadValue(i) <= ( G2(0) and SignalExp_0(i) ) or 
'0' ;

end generate A1;

port_oLoadValue_as <= ( toSimpleBit( G2 ) and '1' ) or 
'0';
end ON256;


architecture ON0 of component_12_ON0 is
signal G3 : unsigned( 0 downto 0 );
signal SignalExp_3 : unsigned( 7 downto 0 );
signal G4 : unsigned( 0 downto 0 );
signal SignalExp_5 : unsigned( 7 downto 0 );
signal G5 : unsigned( 0 downto 0 );
signal SignalExp_7 : unsigned( 7 downto 0 );
signal G6 : unsigned( 0 downto 0 );
signal SignalExp_9 : unsigned( 7 downto 0 );
signal SignalExp_0 : unsigned( 7 downto 0 );
signal SignalExp_1 : unsigned( 2 downto 0 );
signal SignalExp_2 : boolean;
signal SignalExp_4 : boolean;
signal SignalExp_6 : boolean;
signal SignalExp_8 : boolean;
constant k0 : unsigned( 7 downto 0 ) := b"00000000";
begin 


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_3 <= k0;
SignalExp_5 <= port_oValue_old +  b"00000001";
SignalExp_7 <= port_oValue_old -  b"00000001";
SignalExp_9 <= port_iLoadValue;
SignalExp_1 <= port_iOpr;
SignalExp_2 <= SignalExp_1 = b"001";
SignalExp_4 <= SignalExp_1 = b"010";
SignalExp_6 <= SignalExp_1 = b"011";
SignalExp_8 <= SignalExp_1 = b"100";


G3 <= toBit( SignalExp_2 );

G4 <= toBit( SignalExp_4 );

G5 <= toBit( SignalExp_6 );

G6 <= toBit( SignalExp_8 );

A2 : for i in 0 to 7
 generate

port_oValue(i) <= ( G3(0) and SignalExp_3(i) ) or 
( G4(0) and SignalExp_5(i) ) or 
( G5(0) and SignalExp_7(i) ) or 
( G6(0) and SignalExp_9(i) ) or 
'0' ;

end generate A2;

port_oValue_as <= ( toSimpleBit( G3 ) and '1' ) or 
( toSimpleBit( G4 ) and '1' ) or 
( toSimpleBit( G5 ) and '1' ) or 
( toSimpleBit( G6 ) and '1' ) or 
'0';
port_oValue_ev <= ( toSimpleBit( G3 ) and '1' ) or 
( toSimpleBit( G4 ) and '1' ) or 
( toSimpleBit( G5 ) and '1' ) or 
( toSimpleBit( G6 ) and '1' ) or 
'0';
end ON0;


architecture ON256 of component_2_ON256 is
signal G7 : unsigned( 0 downto 0 );
signal SignalExp_0 : unsigned( 7 downto 0 );
begin 


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_0 <= variable_tHex;


G7 <= toBit( true );

A3 : for i in 0 to 7
 generate

port_oHex(i) <= ( G7(0) and SignalExp_0(i) ) or 
'0' ;

end generate A3;

port_oHex_as <= ( toSimpleBit( G7 ) and '1' ) or 
'0';
end ON256;


architecture ON256 of component_4_ON256 is
signal SignalExp_3 : unsigned( 7 downto 0 );
signal SignalExp_2 : unsigned( 3 downto 0 );
signal G8 : unsigned( 0 downto 0 );
signal SignalExp_1 : unsigned( 3 downto 0 );
signal SignalExp_6 : unsigned( 7 downto 0 );
signal SignalExp_5 : unsigned( 3 downto 0 );
signal G9 : unsigned( 0 downto 0 );
signal SignalExp_4 : unsigned( 3 downto 0 );
signal SignalExp_8 : unsigned( 0 downto 0 );
signal G10 : unsigned( 0 downto 0 );
signal SignalExp_7 : unsigned( 0 downto 0 );
signal SignalExp_10 : unsigned( 0 downto 0 );
signal G11 : unsigned( 0 downto 0 );
signal SignalExp_9 : unsigned( 0 downto 0 );
signal SignalExp_0 : unsigned( 0 downto 0 );
constant k0 : unsigned( 7 downto 0 ) := b"00000011";
constant k1 : unsigned( 7 downto 0 ) := b"00000000";
constant k2 : unsigned( 7 downto 0 ) := b"00000111";
constant k3 : unsigned( 7 downto 0 ) := b"00000100";
constant k4 : unsigned( 7 downto 0 ) := b"00000000";
constant k5 : unsigned( 7 downto 0 ) := b"00000001";
begin 


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_3 <= getBits ( 8, port_iValue, k0, k1 );
SignalExp_2 <= toUnsigned( 4 , SignalExp_3 );
SignalExp_1 <= SignalExp_2;
SignalExp_6 <= getBits ( 8, port_iValue, k2, k3 );
SignalExp_5 <= toUnsigned( 4 , SignalExp_6 );
SignalExp_4 <= SignalExp_5;
SignalExp_8 <= getBit ( port_iPoints, k4 );
SignalExp_7 <= SignalExp_8;
SignalExp_10 <= getBit ( port_iPoints, k5 );
SignalExp_9 <= SignalExp_10;
SignalExp_0 <= SignalExp_9;


G8 <= toBit( true );

A4 : for i in 0 to 3
 generate

port_oHex0(i) <= ( G8(0) and SignalExp_1(i) ) or 
'0' ;

end generate A4;

port_oHex0_as <= ( toSimpleBit( G8 ) and '1' ) or 
'0';

G10 <= toBit( true );

A5 : for i in 0 to 0
 generate

port_oPoint0(i) <= ( G10(0) and SignalExp_7(i) ) or 
'0' ;

end generate A5;

port_oPoint0_as <= ( toSimpleBit( G10 ) and '1' ) or 
'0';

G9 <= toBit( true );

A6 : for i in 0 to 3
 generate

port_oHex1(i) <= ( G9(0) and SignalExp_4(i) ) or 
'0' ;

end generate A6;

port_oHex1_as <= ( toSimpleBit( G9 ) and '1' ) or 
'0';

G11 <= toBit( true );

A7 : for i in 0 to 0
 generate

port_oPoint1(i) <= ( G11(0) and SignalExp_9(i) ) or 
'0' ;

end generate A7;

port_oPoint1_as <= ( toSimpleBit( G11 ) and '1' ) or 
'0';
end ON256;


architecture ON256 of component_6_ON256 is
signal SignalExp_3 : unsigned( 15 downto 0 );
signal SignalExp_2 : unsigned( 3 downto 0 );
signal G12 : unsigned( 0 downto 0 );
signal SignalExp_1 : unsigned( 3 downto 0 );
signal SignalExp_6 : unsigned( 15 downto 0 );
signal SignalExp_5 : unsigned( 3 downto 0 );
signal G13 : unsigned( 0 downto 0 );
signal SignalExp_4 : unsigned( 3 downto 0 );
signal SignalExp_9 : unsigned( 15 downto 0 );
signal SignalExp_8 : unsigned( 3 downto 0 );
signal G14 : unsigned( 0 downto 0 );
signal SignalExp_7 : unsigned( 3 downto 0 );
signal SignalExp_12 : unsigned( 15 downto 0 );
signal SignalExp_11 : unsigned( 3 downto 0 );
signal G15 : unsigned( 0 downto 0 );
signal SignalExp_10 : unsigned( 3 downto 0 );
signal SignalExp_14 : unsigned( 0 downto 0 );
signal G16 : unsigned( 0 downto 0 );
signal SignalExp_13 : unsigned( 0 downto 0 );
signal SignalExp_16 : unsigned( 0 downto 0 );
signal G17 : unsigned( 0 downto 0 );
signal SignalExp_15 : unsigned( 0 downto 0 );
signal SignalExp_18 : unsigned( 0 downto 0 );
signal G18 : unsigned( 0 downto 0 );
signal SignalExp_17 : unsigned( 0 downto 0 );
signal SignalExp_20 : unsigned( 0 downto 0 );
signal G19 : unsigned( 0 downto 0 );
signal SignalExp_19 : unsigned( 0 downto 0 );
signal SignalExp_0 : unsigned( 0 downto 0 );
constant k0 : unsigned( 7 downto 0 ) := b"00000011";
constant k1 : unsigned( 7 downto 0 ) := b"00000000";
constant k2 : unsigned( 7 downto 0 ) := b"00000111";
constant k3 : unsigned( 7 downto 0 ) := b"00000100";
constant k4 : unsigned( 7 downto 0 ) := b"00001011";
constant k5 : unsigned( 7 downto 0 ) := b"00001000";
constant k6 : unsigned( 7 downto 0 ) := b"00001111";
constant k7 : unsigned( 7 downto 0 ) := b"00001100";
constant k8 : unsigned( 7 downto 0 ) := b"00000000";
constant k9 : unsigned( 7 downto 0 ) := b"00000001";
constant k10 : unsigned( 7 downto 0 ) := b"00000010";
constant k11 : unsigned( 7 downto 0 ) := b"00000011";
begin 


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_3 <= getBits ( 16, port_iValue, k0, k1 );
SignalExp_2 <= toUnsigned( 4 , SignalExp_3 );
SignalExp_1 <= SignalExp_2;
SignalExp_6 <= getBits ( 16, port_iValue, k2, k3 );
SignalExp_5 <= toUnsigned( 4 , SignalExp_6 );
SignalExp_4 <= SignalExp_5;
SignalExp_9 <= getBits ( 16, port_iValue, k4, k5 );
SignalExp_8 <= toUnsigned( 4 , SignalExp_9 );
SignalExp_7 <= SignalExp_8;
SignalExp_12 <= getBits ( 16, port_iValue, k6, k7 );
SignalExp_11 <= toUnsigned( 4 , SignalExp_12 );
SignalExp_10 <= SignalExp_11;
SignalExp_14 <= getBit ( port_iPoints, k8 );
SignalExp_13 <= SignalExp_14;
SignalExp_16 <= getBit ( port_iPoints, k9 );
SignalExp_15 <= SignalExp_16;
SignalExp_18 <= getBit ( port_iPoints, k10 );
SignalExp_17 <= SignalExp_18;
SignalExp_20 <= getBit ( port_iPoints, k11 );
SignalExp_19 <= SignalExp_20;
SignalExp_0 <= SignalExp_19;


G12 <= toBit( true );

A8 : for i in 0 to 3
 generate

port_oHex0(i) <= ( G12(0) and SignalExp_1(i) ) or 
'0' ;

end generate A8;

port_oHex0_as <= ( toSimpleBit( G12 ) and '1' ) or 
'0';

G16 <= toBit( true );

A9 : for i in 0 to 0
 generate

port_oPoint0(i) <= ( G16(0) and SignalExp_13(i) ) or 
'0' ;

end generate A9;

port_oPoint0_as <= ( toSimpleBit( G16 ) and '1' ) or 
'0';

G13 <= toBit( true );

A10 : for i in 0 to 3
 generate

port_oHex1(i) <= ( G13(0) and SignalExp_4(i) ) or 
'0' ;

end generate A10;

port_oHex1_as <= ( toSimpleBit( G13 ) and '1' ) or 
'0';

G17 <= toBit( true );

A11 : for i in 0 to 0
 generate

port_oPoint1(i) <= ( G17(0) and SignalExp_15(i) ) or 
'0' ;

end generate A11;

port_oPoint1_as <= ( toSimpleBit( G17 ) and '1' ) or 
'0';

G14 <= toBit( true );

A12 : for i in 0 to 3
 generate

port_oHex2(i) <= ( G14(0) and SignalExp_7(i) ) or 
'0' ;

end generate A12;

port_oHex2_as <= ( toSimpleBit( G14 ) and '1' ) or 
'0';

G18 <= toBit( true );

A13 : for i in 0 to 0
 generate

port_oPoint2(i) <= ( G18(0) and SignalExp_17(i) ) or 
'0' ;

end generate A13;

port_oPoint2_as <= ( toSimpleBit( G18 ) and '1' ) or 
'0';

G15 <= toBit( true );

A14 : for i in 0 to 3
 generate

port_oHex3(i) <= ( G15(0) and SignalExp_10(i) ) or 
'0' ;

end generate A14;

port_oHex3_as <= ( toSimpleBit( G15 ) and '1' ) or 
'0';

G19 <= toBit( true );

A15 : for i in 0 to 0
 generate

port_oPoint3(i) <= ( G19(0) and SignalExp_19(i) ) or 
'0' ;

end generate A15;

port_oPoint3_as <= ( toSimpleBit( G19 ) and '1' ) or 
'0';
end ON256;


architecture ON256 of component_8_ON256 is
signal SignalExp_3 : unsigned( 23 downto 0 );
signal SignalExp_2 : unsigned( 3 downto 0 );
signal G20 : unsigned( 0 downto 0 );
signal SignalExp_1 : unsigned( 3 downto 0 );
signal SignalExp_6 : unsigned( 23 downto 0 );
signal SignalExp_5 : unsigned( 3 downto 0 );
signal G21 : unsigned( 0 downto 0 );
signal SignalExp_4 : unsigned( 3 downto 0 );
signal SignalExp_9 : unsigned( 23 downto 0 );
signal SignalExp_8 : unsigned( 3 downto 0 );
signal G22 : unsigned( 0 downto 0 );
signal SignalExp_7 : unsigned( 3 downto 0 );
signal SignalExp_12 : unsigned( 23 downto 0 );
signal SignalExp_11 : unsigned( 3 downto 0 );
signal G23 : unsigned( 0 downto 0 );
signal SignalExp_10 : unsigned( 3 downto 0 );
signal SignalExp_15 : unsigned( 23 downto 0 );
signal SignalExp_14 : unsigned( 3 downto 0 );
signal G24 : unsigned( 0 downto 0 );
signal SignalExp_13 : unsigned( 3 downto 0 );
signal SignalExp_18 : unsigned( 23 downto 0 );
signal SignalExp_17 : unsigned( 3 downto 0 );
signal G25 : unsigned( 0 downto 0 );
signal SignalExp_16 : unsigned( 3 downto 0 );
signal SignalExp_20 : unsigned( 0 downto 0 );
signal G26 : unsigned( 0 downto 0 );
signal SignalExp_19 : unsigned( 0 downto 0 );
signal SignalExp_22 : unsigned( 0 downto 0 );
signal G27 : unsigned( 0 downto 0 );
signal SignalExp_21 : unsigned( 0 downto 0 );
signal SignalExp_24 : unsigned( 0 downto 0 );
signal G28 : unsigned( 0 downto 0 );
signal SignalExp_23 : unsigned( 0 downto 0 );
signal SignalExp_26 : unsigned( 0 downto 0 );
signal G29 : unsigned( 0 downto 0 );
signal SignalExp_25 : unsigned( 0 downto 0 );
signal SignalExp_28 : unsigned( 0 downto 0 );
signal G30 : unsigned( 0 downto 0 );
signal SignalExp_27 : unsigned( 0 downto 0 );
signal SignalExp_30 : unsigned( 0 downto 0 );
signal G31 : unsigned( 0 downto 0 );
signal SignalExp_29 : unsigned( 0 downto 0 );
signal SignalExp_0 : unsigned( 0 downto 0 );
constant k0 : unsigned( 7 downto 0 ) := b"00000011";
constant k1 : unsigned( 7 downto 0 ) := b"00000000";
constant k2 : unsigned( 7 downto 0 ) := b"00000111";
constant k3 : unsigned( 7 downto 0 ) := b"00000100";
constant k4 : unsigned( 7 downto 0 ) := b"00001011";
constant k5 : unsigned( 7 downto 0 ) := b"00001000";
constant k6 : unsigned( 7 downto 0 ) := b"00001111";
constant k7 : unsigned( 7 downto 0 ) := b"00001100";
constant k8 : unsigned( 7 downto 0 ) := b"00010011";
constant k9 : unsigned( 7 downto 0 ) := b"00010000";
constant k10 : unsigned( 7 downto 0 ) := b"00010111";
constant k11 : unsigned( 7 downto 0 ) := b"00010100";
constant k12 : unsigned( 7 downto 0 ) := b"00000000";
constant k13 : unsigned( 7 downto 0 ) := b"00000001";
constant k14 : unsigned( 7 downto 0 ) := b"00000010";
constant k15 : unsigned( 7 downto 0 ) := b"00000011";
constant k16 : unsigned( 7 downto 0 ) := b"00000100";
constant k17 : unsigned( 7 downto 0 ) := b"00000101";
begin 


timer_as <= '0';
start_timer <= '0';

stop_timer <= '0';

SignalExp_3 <= getBits ( 24, port_iValue, k0, k1 );
SignalExp_2 <= toUnsigned( 4 , SignalExp_3 );
SignalExp_1 <= SignalExp_2;
SignalExp_6 <= getBits ( 24, port_iValue, k2, k3 );
SignalExp_5 <= toUnsigned( 4 , SignalExp_6 );
SignalExp_4 <= SignalExp_5;
SignalExp_9 <= getBits ( 24, port_iValue, k4, k5 );
SignalExp_8 <= toUnsigned( 4 , SignalExp_9 );
SignalExp_7 <= SignalExp_8;
SignalExp_12 <= getBits ( 24, port_iValue, k6, k7 );
SignalExp_11 <= toUnsigned( 4 , SignalExp_12 );
SignalExp_10 <= SignalExp_11;
SignalExp_15 <= getBits ( 24, port_iValue, k8, k9 );
SignalExp_14 <= toUnsigned( 4 , SignalExp_15 );
SignalExp_13 <= SignalExp_14;
SignalExp_18 <= getBits ( 24, port_iValue, k10, k11 );
SignalExp_17 <= toUnsigned( 4 , SignalExp_18 );
SignalExp_16 <= SignalExp_17;
SignalExp_20 <= getBit ( port_iPoints, k12 );
SignalExp_19 <= SignalExp_20;
SignalExp_22 <= getBit ( port_iPoints, k13 );
SignalExp_21 <= SignalExp_22;
SignalExp_24 <= getBit ( port_iPoints, k14 );
SignalExp_23 <= SignalExp_24;
SignalExp_26 <= getBit ( port_iPoints, k15 );
SignalExp_25 <= SignalExp_26;
SignalExp_28 <= getBit ( port_iPoints, k16 );
SignalExp_27 <= SignalExp_28;
SignalExp_30 <= getBit ( port_iPoints, k17 );
SignalExp_29 <= SignalExp_30;
SignalExp_0 <= SignalExp_29;


G20 <= toBit( true );

A16 : for i in 0 to 3
 generate

port_oHex0(i) <= ( G20(0) and SignalExp_1(i) ) or 
'0' ;

end generate A16;

port_oHex0_as <= ( toSimpleBit( G20 ) and '1' ) or 
'0';

G26 <= toBit( true );

A17 : for i in 0 to 0
 generate

port_oPoint0(i) <= ( G26(0) and SignalExp_19(i) ) or 
'0' ;

end generate A17;

port_oPoint0_as <= ( toSimpleBit( G26 ) and '1' ) or 
'0';

G21 <= toBit( true );

A18 : for i in 0 to 3
 generate

port_oHex1(i) <= ( G21(0) and SignalExp_4(i) ) or 
'0' ;

end generate A18;

port_oHex1_as <= ( toSimpleBit( G21 ) and '1' ) or 
'0';

G27 <= toBit( true );

A19 : for i in 0 to 0
 generate

port_oPoint1(i) <= ( G27(0) and SignalExp_21(i) ) or 
'0' ;

end generate A19;

port_oPoint1_as <= ( toSimpleBit( G27 ) and '1' ) or 
'0';

G22 <= toBit( true );

A20 : for i in 0 to 3
 generate

port_oHex2(i) <= ( G22(0) and SignalExp_7(i) ) or 
'0' ;

end generate A20;

port_oHex2_as <= ( toSimpleBit( G22 ) and '1' ) or 
'0';

G28 <= toBit( true );

A21 : for i in 0 to 0
 generate

port_oPoint2(i) <= ( G28(0) and SignalExp_23(i) ) or 
'0' ;

end generate A21;

port_oPoint2_as <= ( toSimpleBit( G28 ) and '1' ) or 
'0';

G23 <= toBit( true );

A22 : for i in 0 to 3
 generate

port_oHex3(i) <= ( G23(0) and SignalExp_10(i) ) or 
'0' ;

end generate A22;

port_oHex3_as <= ( toSimpleBit( G23 ) and '1' ) or 
'0';

G29 <= toBit( true );

A23 : for i in 0 to 0
 generate

port_oPoint3(i) <= ( G29(0) and SignalExp_25(i) ) or 
'0' ;

end generate A23;

port_oPoint3_as <= ( toSimpleBit( G29 ) and '1' ) or 
'0';

G24 <= toBit( true );

A24 : for i in 0 to 3
 generate

port_oHex4(i) <= ( G24(0) and SignalExp_13(i) ) or 
'0' ;

end generate A24;

port_oHex4_as <= ( toSimpleBit( G24 ) and '1' ) or 
'0';

G30 <= toBit( true );

A25 : for i in 0 to 0
 generate

port_oPoint4(i) <= ( G30(0) and SignalExp_27(i) ) or 
'0' ;

end generate A25;

port_oPoint4_as <= ( toSimpleBit( G30 ) and '1' ) or 
'0';

G25 <= toBit( true );

A26 : for i in 0 to 3
 generate

port_oHex5(i) <= ( G25(0) and SignalExp_16(i) ) or 
'0' ;

end generate A26;

port_oHex5_as <= ( toSimpleBit( G25 ) and '1' ) or 
'0';

G31 <= toBit( true );

A27 : for i in 0 to 0
 generate

port_oPoint5(i) <= ( G31(0) and SignalExp_29(i) ) or 
'0' ;

end generate A27;

port_oPoint5_as <= ( toSimpleBit( G31 ) and '1' ) or 
'0';
end ON256;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity AND2STD is 
port 
( 
  I0 : in std_logic;
  I1 : in std_logic;
  O : out std_logic 
); 
end AND2STD;

architecture behavioural of AND2STD is begin O <= I0 and I1;
end behavioural;

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity multiOr_1
is 
port 
( 
 input : in std_logic;
 output : out std_logic );
end multiOr_1;


architecture behavioural of multiOr_1 is begin 

output <= input;

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity multiOr_0
is 
port 
( 
 input : in std_logic;
 output : out std_logic );
end multiOr_0;


architecture behavioural of multiOr_0 is begin 

output <= input;

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_2_type_28
is 
port 
( 
  AsIn : std_logic_vector( 1 downto 0 ) ;
  valC0 : in unsigned( 2 downto 0 );
  valC1 : in unsigned( 2 downto 0 );
  oldVal : in unsigned( 2 downto 0 );
  outVal : out unsigned( 2 downto 0 ) );
end MUXPRIO_2_type_28;


architecture behavioural of MUXPRIO_2_type_28
is 
begin 
 outVal <= oldVal when AsIn = b"00"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
 else
  valC1 when AsIn( 1 downto 0 ) = b"10"
else b"000";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_type_28
is 
generic( initValue : unsigned( 2 downto 0 ) );
port 
( 
 d : in unsigned( 2 downto 0 );
 q : out unsigned( 2 downto 0 );
 clk : in std_logic );
end FFD_type_28;


architecture behavioural of FFD_type_28 is 
 signal sq : unsigned( 2 downto 0 ) := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity multiOr_2
is 
port 
( 
 input : in std_logic_vector( 1 downto 0 );
 output : out std_logic );
end multiOr_2;


architecture behavioural of multiOr_2 is begin 

output <= input( 0 ) or input( 1 );

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_2_type_5
is 
port 
( 
  AsIn : std_logic_vector( 1 downto 0 ) ;
  valC0 : in unsigned( 7 downto 0 );
  valC1 : in unsigned( 7 downto 0 );
  oldVal : in unsigned( 7 downto 0 );
  outVal : out unsigned( 7 downto 0 ) );
end MUXPRIO_2_type_5;


architecture behavioural of MUXPRIO_2_type_5
is 
begin 
 outVal <= oldVal when AsIn = b"00"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
 else
  valC1 when AsIn( 1 downto 0 ) = b"10"
else b"00000000";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_type_5
is 
generic( initValue : unsigned( 7 downto 0 ) );
port 
( 
 d : in unsigned( 7 downto 0 );
 q : out unsigned( 7 downto 0 );
 clk : in std_logic );
end FFD_type_5;


architecture behavioural of FFD_type_5 is 
 signal sq : unsigned( 7 downto 0 ) := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_std_logic
is 
generic( initValue : std_logic );
port 
( 
 d : in std_logic;
 q : out std_logic;
 clk : in std_logic );
end FFD_std_logic;


architecture behavioural of FFD_std_logic is 
 signal sq : std_logic := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_2_time
is 
port 
( 
  AsIn : std_logic_vector( 1 downto 0 ) ;
  valC0 : in signed( 63 downto 0 );
  valC1 : in signed( 63 downto 0 );
  oldVal : in signed( 63 downto 0 );
  outVal : out signed( 63 downto 0 ) );
end MUXPRIO_2_time;


architecture behavioural of MUXPRIO_2_time
is 
begin 
 outVal <= oldVal when AsIn = b"00"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
 else
  valC1 when AsIn( 1 downto 0 ) = b"10"
else b"0000000000000000000000000000000000000000000000000000000000000000";
end behavioural;


architecture behavioural of component_11 is 


signal Class_0 : std_logic;
signal sig_timer_start_0 : std_logic;
signal sig_timer_stop_0 : std_logic;
signal sig_timer_as_0 : std_logic;
signal sig_timer_start_bef_0 : std_logic;
signal sig_timer_stop_bef_0 : std_logic;
signal sig_timer_mux_0 : std_logic;
signal sig_timer_value_0 : signed( 63 downto 0 );

signal Class_256 : std_logic;
signal sig_timer_start_256 : std_logic;
signal sig_timer_stop_256 : std_logic;
signal sig_timer_as_256 : std_logic;
signal sig_timer_start_bef_256 : std_logic;
signal sig_timer_stop_bef_256 : std_logic;
signal sig_timer_mux_256 : std_logic;
signal sig_timer_value_256 : signed( 63 downto 0 );


signal port_iKeys_ev_0 : std_logic;
signal port_iKeys_0 : unsigned( 3 downto 0 );
signal port_iKeys_ev_256 : std_logic;
signal port_iKeys_256 : unsigned( 3 downto 0 );


signal port_iSwitches_0 : unsigned( 9 downto 0 );
signal port_iSwitches_256 : unsigned( 9 downto 0 );


signal port_oOpr_ev_0 : std_logic;
signal port_oOpr_0 : unsigned( 2 downto 0 );
signal port_oOpr_as_0 : std_logic;
signal port_oOpr_mux_0 : std_logic;
signal port_oOpr_bef_0 : std_logic;
signal port_oOpr_ev_256 : std_logic;
signal port_oOpr_256 : unsigned( 2 downto 0 );
signal port_oOpr_as_256 : std_logic;
signal port_oOpr_mux_256 : std_logic;
signal port_oOpr_bef_256 : std_logic;

signal port_oOpr_old : unsigned( 2 downto 0 );
signal port_oOpr_new : unsigned( 2 downto 0 );
signal port_oOpr_bef : std_logic;

signal port_oLoadValue_0 : unsigned( 7 downto 0 );
signal port_oLoadValue_as_0 : std_logic;
signal port_oLoadValue_mux_0 : std_logic;
signal port_oLoadValue_bef_0 : std_logic;
signal port_oLoadValue_256 : unsigned( 7 downto 0 );
signal port_oLoadValue_as_256 : std_logic;
signal port_oLoadValue_mux_256 : std_logic;
signal port_oLoadValue_bef_256 : std_logic;

signal port_oLoadValue_old : unsigned( 7 downto 0 );
signal port_oLoadValue_new : unsigned( 7 downto 0 );
signal port_oLoadValue_bef : std_logic;

signal sig_timer_old : signed( 63 downto 0 );
signal sig_timer_new : signed( 63 downto 0 );
signal sig_timer_start : std_logic;
signal sig_timer_val : signed( 63 downto 0 );
signal sig_timer_stop : std_logic;
begin 

OnInstance0 : component_11_ON0

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_0,
stop_timer => sig_timer_stop_0,
timer_as => sig_timer_as_0,
timer_value_out => sig_timer_value_0 ,
port_iKeys => port_iKeys ,
port_iKeys_ev => port_iKeys_ev ,
port_iSwitches => port_iSwitches ,
port_oOpr_ev => port_oOpr_ev_0 ,
port_oOpr => port_oOpr_0,
port_oOpr_as => port_oOpr_as_0,
port_oOpr_old => port_oOpr_old ,
port_oLoadValue => port_oLoadValue_0,
port_oLoadValue_as => port_oLoadValue_as_0,
port_oLoadValue_old => port_oLoadValue_old );

OnInstance256 : component_11_ON256

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_256,
stop_timer => sig_timer_stop_256,
timer_as => sig_timer_as_256,
timer_value_out => sig_timer_value_256 ,
port_iKeys => port_iKeys ,
port_iKeys_ev => port_iKeys_ev ,
port_iSwitches => port_iSwitches ,
port_oOpr_ev => port_oOpr_ev_256 ,
port_oOpr => port_oOpr_256,
port_oOpr_as => port_oOpr_as_256,
port_oOpr_old => port_oOpr_old ,
port_oLoadValue => port_oLoadValue_256,
port_oLoadValue_as => port_oLoadValue_as_256,
port_oLoadValue_old => port_oLoadValue_old );

multiOr_1_in_0 : multiOr_1

port map( 
input => port_iKeys_ev,
output     => Class_0 );

multiOr_0_in_256 : multiOr_0

port map( 
input => '1',
output     => Class_256 );

MUXPRIO_2_type_28_port_oOpr : MUXPRIO_2_type_28

port map( 
outVal => port_oOpr_new,
ValC0 => port_oOpr_0,
ValC1 => port_oOpr_256,
AsIn( 0 ) => port_oOpr_mux_0,
AsIn( 1 ) => port_oOpr_mux_256,
oldVal => port_oOpr_old );

MUXPRIO_2_type_5_port_oLoadValue : MUXPRIO_2_type_5

port map( 
outVal => port_oLoadValue_new,
ValC0 => port_oLoadValue_0,
ValC1 => port_oLoadValue_256,
AsIn( 0 ) => port_oLoadValue_mux_0,
AsIn( 1 ) => port_oLoadValue_mux_256,
oldVal => port_oLoadValue_old );

FFD_type_28_port_oOpr : FFD_type_28

generic map( b"000" )
port map(
 d => port_oOpr_new ,
 q => port_oOpr_old ,
 clk => clk );

port_oOpr <= port_oOpr_old;

FFD_std_logic_port_oOpr_ev : FFD_std_logic

generic map( '0' )
port map(
 d => port_oOpr_bef ,
 q => port_oOpr_ev ,
 clk => clk );

FFD_type_5_port_oLoadValue : FFD_type_5

generic map( b"00000000" )
port map(
 d => port_oLoadValue_new ,
 q => port_oLoadValue_old ,
 clk => clk );

port_oLoadValue <= port_oLoadValue_old;

And_port_oOpr_as_0_port_oOpr_mux_0 : AND2STD 
port map(
 I0 => port_oOpr_as_0 ,
 I1 => Class_0 ,
 O => port_oOpr_mux_0 );

And_port_oOpr_ev_0_port_oOpr_bef_0 : AND2STD 
port map(
 I0 => port_oOpr_ev_0 ,
 I1 => Class_0 ,
 O => port_oOpr_bef_0 );

And_port_oOpr_as_256_port_oOpr_mux_256 : AND2STD 
port map(
 I0 => port_oOpr_as_256 ,
 I1 => Class_256 ,
 O => port_oOpr_mux_256 );

And_port_oOpr_ev_256_port_oOpr_bef_256 : AND2STD 
port map(
 I0 => port_oOpr_ev_256 ,
 I1 => Class_256 ,
 O => port_oOpr_bef_256 );

And_port_oLoadValue_as_0_port_oLoadValue_mux_0 : AND2STD 
port map(
 I0 => port_oLoadValue_as_0 ,
 I1 => Class_0 ,
 O => port_oLoadValue_mux_0 );

And_port_oLoadValue_as_256_port_oLoadValue_mux_256 : AND2STD 
port map(
 I0 => port_oLoadValue_as_256 ,
 I1 => Class_256 ,
 O => port_oLoadValue_mux_256 );

multiOr_2_out_port_oOpr : multiOr_2

port map(
input( 0 ) => port_oOpr_bef_0,
input( 1 ) => port_oOpr_bef_256,
output => port_oOpr_bef );

multiOr_2_out_port_oLoadValue : multiOr_2

port map(
input( 0 ) => port_oLoadValue_bef_0,
input( 1 ) => port_oLoadValue_bef_256,
output => port_oLoadValue_bef );

 end behavioural; 
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_1_type_5
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 7 downto 0 );
  oldVal : in unsigned( 7 downto 0 );
  outVal : out unsigned( 7 downto 0 ) );
end MUXPRIO_1_type_5;


architecture behavioural of MUXPRIO_1_type_5
is 
begin 
 outVal <= oldVal when AsIn = b"0"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
else b"00000000";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_1_time
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in signed( 63 downto 0 );
  oldVal : in signed( 63 downto 0 );
  outVal : out signed( 63 downto 0 ) );
end MUXPRIO_1_time;


architecture behavioural of MUXPRIO_1_time
is 
begin 
 outVal <= oldVal when AsIn = b"0"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
else b"0000000000000000000000000000000000000000000000000000000000000000";
end behavioural;


architecture behavioural of component_12 is 


signal Class_0 : std_logic;
signal sig_timer_start_0 : std_logic;
signal sig_timer_stop_0 : std_logic;
signal sig_timer_as_0 : std_logic;
signal sig_timer_start_bef_0 : std_logic;
signal sig_timer_stop_bef_0 : std_logic;
signal sig_timer_mux_0 : std_logic;
signal sig_timer_value_0 : signed( 63 downto 0 );


signal port_iOpr_ev_0 : std_logic;
signal port_iOpr_0 : unsigned( 2 downto 0 );


signal port_iLoadValue_0 : unsigned( 7 downto 0 );


signal port_oValue_ev_0 : std_logic;
signal port_oValue_0 : unsigned( 7 downto 0 );
signal port_oValue_as_0 : std_logic;
signal port_oValue_mux_0 : std_logic;
signal port_oValue_bef_0 : std_logic;

signal port_oValue_old : unsigned( 7 downto 0 );
signal port_oValue_new : unsigned( 7 downto 0 );
signal port_oValue_bef : std_logic;

signal sig_timer_old : signed( 63 downto 0 );
signal sig_timer_new : signed( 63 downto 0 );
signal sig_timer_start : std_logic;
signal sig_timer_val : signed( 63 downto 0 );
signal sig_timer_stop : std_logic;
begin 

OnInstance0 : component_12_ON0

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_0,
stop_timer => sig_timer_stop_0,
timer_as => sig_timer_as_0,
timer_value_out => sig_timer_value_0 ,
port_iOpr => port_iOpr ,
port_iOpr_ev => port_iOpr_ev ,
port_iLoadValue => port_iLoadValue ,
port_oValue_ev => port_oValue_ev_0 ,
port_oValue => port_oValue_0,
port_oValue_as => port_oValue_as_0,
port_oValue_old => port_oValue_old );

multiOr_1_in_0 : multiOr_1

port map( 
input => port_iOpr_ev,
output     => Class_0 );

MUXPRIO_1_type_5_port_oValue : MUXPRIO_1_type_5

port map( 
outVal => port_oValue_new,
ValC0 => port_oValue_0,
AsIn( 0 ) => port_oValue_mux_0,
oldVal => port_oValue_old );

FFD_type_5_port_oValue : FFD_type_5

generic map( b"00000000" )
port map(
 d => port_oValue_new ,
 q => port_oValue_old ,
 clk => clk );

port_oValue <= port_oValue_old;

FFD_std_logic_port_oValue_ev : FFD_std_logic

generic map( '0' )
port map(
 d => port_oValue_bef ,
 q => port_oValue_ev ,
 clk => clk );

And_port_oValue_as_0_port_oValue_mux_0 : AND2STD 
port map(
 I0 => port_oValue_as_0 ,
 I1 => Class_0 ,
 O => port_oValue_mux_0 );

And_port_oValue_ev_0_port_oValue_bef_0 : AND2STD 
port map(
 I0 => port_oValue_ev_0 ,
 I1 => Class_0 ,
 O => port_oValue_bef_0 );

multiOr_1_out_port_oValue : multiOr_1

port map(
input => port_oValue_bef_0,
output => port_oValue_bef );

 end behavioural; 
architecture behavioural of component_2 is 

signal SignalExp_tHex_1 : unsigned( 7 downto 0 );
signal SignalExp_tHex_2 : unsigned( 3 downto 0 );
signal SignalExp_tHex_3 : boolean;
signal SignalExp_tHex_4 : boolean;
signal SignalExp_tHex_5 : boolean;
signal SignalExp_tHex_6 : boolean;
signal SignalExp_tHex_7 : boolean;
signal SignalExp_tHex_8 : boolean;
signal SignalExp_tHex_9 : boolean;
signal SignalExp_tHex_10 : boolean;
signal SignalExp_tHex_11 : boolean;
signal SignalExp_tHex_12 : boolean;
signal SignalExp_tHex_13 : boolean;
signal SignalExp_tHex_14 : boolean;
signal SignalExp_tHex_15 : boolean;
signal SignalExp_tHex_16 : boolean;
signal SignalExp_tHex_17 : boolean;
signal SignalExp_tHex_18 : boolean;
signal SignalExp_tHexPoint_5 : boolean;
signal SignalExp_tHexPoint_4 : boolean;
signal SignalExp_tHexPoint_3 : unsigned( 7 downto 0 );
signal SignalExp_tHexPoint_2 : unsigned( 7 downto 0 );
signal SignalExp_tHexPoint_1 : unsigned( 7 downto 0 );
constant k_tHexPoint_0 : unsigned( 7 downto 0 ) := b"00000111";
signal variable_tHex : unsigned( 7 downto 0 );
signal variable_tHexPoint : unsigned( 7 downto 0 );

signal Class_256 : std_logic;
signal sig_timer_start_256 : std_logic;
signal sig_timer_stop_256 : std_logic;
signal sig_timer_as_256 : std_logic;
signal sig_timer_start_bef_256 : std_logic;
signal sig_timer_stop_bef_256 : std_logic;
signal sig_timer_mux_256 : std_logic;
signal sig_timer_value_256 : signed( 63 downto 0 );


signal port_iValue_256 : unsigned( 3 downto 0 );


signal port_iPoint_256 : unsigned( 0 downto 0 );


signal port_oHex_256 : unsigned( 7 downto 0 );
signal port_oHex_as_256 : std_logic;
signal port_oHex_mux_256 : std_logic;
signal port_oHex_bef_256 : std_logic;

signal port_oHex_old : unsigned( 7 downto 0 );
signal port_oHex_new : unsigned( 7 downto 0 );
signal port_oHex_bef : std_logic;

signal sig_timer_old : signed( 63 downto 0 );
signal sig_timer_new : signed( 63 downto 0 );
signal sig_timer_start : std_logic;
signal sig_timer_val : signed( 63 downto 0 );
signal sig_timer_stop : std_logic;
begin 

SignalExp_tHex_2 <= port_iValue;
SignalExp_tHex_3 <= SignalExp_tHex_2 = b"0000";
SignalExp_tHex_4 <= SignalExp_tHex_2 = b"0001";
SignalExp_tHex_5 <= SignalExp_tHex_2 = b"0010";
SignalExp_tHex_6 <= SignalExp_tHex_2 = b"0011";
SignalExp_tHex_7 <= SignalExp_tHex_2 = b"0100";
SignalExp_tHex_8 <= SignalExp_tHex_2 = b"0101";
SignalExp_tHex_9 <= SignalExp_tHex_2 = b"0110";
SignalExp_tHex_10 <= SignalExp_tHex_2 = b"0111";
SignalExp_tHex_11 <= SignalExp_tHex_2 = b"1000";
SignalExp_tHex_12 <= SignalExp_tHex_2 = b"1001";
SignalExp_tHex_13 <= SignalExp_tHex_2 = b"1010";
SignalExp_tHex_14 <= SignalExp_tHex_2 = b"1011";
SignalExp_tHex_15 <= SignalExp_tHex_2 = b"1100";
SignalExp_tHex_16 <= SignalExp_tHex_2 = b"1101";
SignalExp_tHex_17 <= SignalExp_tHex_2 = b"1110";
SignalExp_tHex_18 <= SignalExp_tHex_2 = b"1111";
SignalExp_tHex_1 <= b"01000000" when SignalExp_tHex_3 else 
b"01111001" when SignalExp_tHex_4 else 
b"00100100" when SignalExp_tHex_5 else 
b"00110000" when SignalExp_tHex_6 else 
b"00011001" when SignalExp_tHex_7 else 
b"00010010" when SignalExp_tHex_8 else 
b"00000010" when SignalExp_tHex_9 else 
b"01111000" when SignalExp_tHex_10 else 
b"00000000" when SignalExp_tHex_11 else 
b"00010000" when SignalExp_tHex_12 else 
b"00001000" when SignalExp_tHex_13 else 
b"00000011" when SignalExp_tHex_14 else 
b"01000110" when SignalExp_tHex_15 else 
b"00100001" when SignalExp_tHex_16 else 
b"00000110" when SignalExp_tHex_17 else 
b"00001110" when SignalExp_tHex_18 else 
b"00000000";
variable_tHex <= SignalExp_tHex_1;

SignalExp_tHexPoint_5 <= toBool( port_iPoint );
SignalExp_tHexPoint_4 <= not( toBool( SignalExp_tHexPoint_5 ) ); 
SignalExp_tHexPoint_3 <= toUnsigned( 8 , SignalExp_tHexPoint_4 );
SignalExp_tHexPoint_2 <= my_shl( SignalExp_tHexPoint_3, k_tHexPoint_0 );
SignalExp_tHexPoint_1 <= ( variable_tHex or SignalExp_tHexPoint_2 );
variable_tHexPoint <= SignalExp_tHexPoint_1;

OnInstance256 : component_2_ON256

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_256,
stop_timer => sig_timer_stop_256,
timer_as => sig_timer_as_256,
timer_value_out => sig_timer_value_256 ,
variable_tHex => variable_tHex ,
variable_tHexPoint => variable_tHexPoint ,
port_iValue => port_iValue ,
port_iPoint => port_iPoint ,
port_oHex => port_oHex_256,
port_oHex_as => port_oHex_as_256,
port_oHex_old => port_oHex_old );

multiOr_0_in_256 : multiOr_0

port map( 
input => '1',
output     => Class_256 );

MUXPRIO_1_type_5_port_oHex : MUXPRIO_1_type_5

port map( 
outVal => port_oHex_new,
ValC0 => port_oHex_256,
AsIn( 0 ) => port_oHex_mux_256,
oldVal => port_oHex_old );

FFD_type_5_port_oHex : FFD_type_5

generic map( b"00000000" )
port map(
 d => port_oHex_new ,
 q => port_oHex_old ,
 clk => clk );

port_oHex <= port_oHex_old;

And_port_oHex_as_256_port_oHex_mux_256 : AND2STD 
port map(
 I0 => port_oHex_as_256 ,
 I1 => Class_256 ,
 O => port_oHex_mux_256 );

multiOr_1_out_port_oHex : multiOr_1

port map(
input => port_oHex_bef_256,
output => port_oHex_bef );

 end behavioural; 
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_1_type_21
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 3 downto 0 );
  oldVal : in unsigned( 3 downto 0 );
  outVal : out unsigned( 3 downto 0 ) );
end MUXPRIO_1_type_21;


architecture behavioural of MUXPRIO_1_type_21
is 
begin 
 outVal <= oldVal when AsIn = b"0"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
else b"0000";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_type_21
is 
generic( initValue : unsigned( 3 downto 0 ) );
port 
( 
 d : in unsigned( 3 downto 0 );
 q : out unsigned( 3 downto 0 );
 clk : in std_logic );
end FFD_type_21;


architecture behavioural of FFD_type_21 is 
 signal sq : unsigned( 3 downto 0 ) := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_1_signed0
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 0 downto 0 );
  oldVal : in unsigned( 0 downto 0 );
  outVal : out unsigned( 0 downto 0 ) );
end MUXPRIO_1_signed0;


architecture behavioural of MUXPRIO_1_signed0
is 
begin 
 outVal <= oldVal when AsIn = b"0"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
else b"0";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_signed0
is 
generic( initValue : unsigned( 0 downto 0 ) );
port 
( 
 d : in unsigned( 0 downto 0 );
 q : out unsigned( 0 downto 0 );
 clk : in std_logic );
end FFD_signed0;


architecture behavioural of FFD_signed0 is 
 signal sq : unsigned( 0 downto 0 ) := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


architecture behavioural of component_4 is 


signal Class_256 : std_logic;
signal sig_timer_start_256 : std_logic;
signal sig_timer_stop_256 : std_logic;
signal sig_timer_as_256 : std_logic;
signal sig_timer_start_bef_256 : std_logic;
signal sig_timer_stop_bef_256 : std_logic;
signal sig_timer_mux_256 : std_logic;
signal sig_timer_value_256 : signed( 63 downto 0 );


signal port_iValue_256 : unsigned( 7 downto 0 );


signal port_iPoints_256 : unsigned( 1 downto 0 );


signal port_oHex0_256 : unsigned( 3 downto 0 );
signal port_oHex0_as_256 : std_logic;
signal port_oHex0_mux_256 : std_logic;
signal port_oHex0_bef_256 : std_logic;

signal port_oHex0_old : unsigned( 3 downto 0 );
signal port_oHex0_new : unsigned( 3 downto 0 );
signal port_oHex0_bef : std_logic;

signal port_oPoint0_256 : unsigned( 0 downto 0 );
signal port_oPoint0_as_256 : std_logic;
signal port_oPoint0_mux_256 : std_logic;
signal port_oPoint0_bef_256 : std_logic;

signal port_oPoint0_old : unsigned( 0 downto 0 );
signal port_oPoint0_new : unsigned( 0 downto 0 );
signal port_oPoint0_bef : std_logic;

signal port_oHex1_256 : unsigned( 3 downto 0 );
signal port_oHex1_as_256 : std_logic;
signal port_oHex1_mux_256 : std_logic;
signal port_oHex1_bef_256 : std_logic;

signal port_oHex1_old : unsigned( 3 downto 0 );
signal port_oHex1_new : unsigned( 3 downto 0 );
signal port_oHex1_bef : std_logic;

signal port_oPoint1_256 : unsigned( 0 downto 0 );
signal port_oPoint1_as_256 : std_logic;
signal port_oPoint1_mux_256 : std_logic;
signal port_oPoint1_bef_256 : std_logic;

signal port_oPoint1_old : unsigned( 0 downto 0 );
signal port_oPoint1_new : unsigned( 0 downto 0 );
signal port_oPoint1_bef : std_logic;

signal sig_timer_old : signed( 63 downto 0 );
signal sig_timer_new : signed( 63 downto 0 );
signal sig_timer_start : std_logic;
signal sig_timer_val : signed( 63 downto 0 );
signal sig_timer_stop : std_logic;
begin 

OnInstance256 : component_4_ON256

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_256,
stop_timer => sig_timer_stop_256,
timer_as => sig_timer_as_256,
timer_value_out => sig_timer_value_256 ,
port_iValue => port_iValue ,
port_iPoints => port_iPoints ,
port_oHex0 => port_oHex0_256,
port_oHex0_as => port_oHex0_as_256,
port_oHex0_old => port_oHex0_old ,
port_oPoint0 => port_oPoint0_256,
port_oPoint0_as => port_oPoint0_as_256,
port_oPoint0_old => port_oPoint0_old ,
port_oHex1 => port_oHex1_256,
port_oHex1_as => port_oHex1_as_256,
port_oHex1_old => port_oHex1_old ,
port_oPoint1 => port_oPoint1_256,
port_oPoint1_as => port_oPoint1_as_256,
port_oPoint1_old => port_oPoint1_old );

multiOr_0_in_256 : multiOr_0

port map( 
input => '1',
output     => Class_256 );

MUXPRIO_1_type_21_port_oHex0 : MUXPRIO_1_type_21

port map( 
outVal => port_oHex0_new,
ValC0 => port_oHex0_256,
AsIn( 0 ) => port_oHex0_mux_256,
oldVal => port_oHex0_old );

MUXPRIO_1_signed0_port_oPoint0 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint0_new,
ValC0 => port_oPoint0_256,
AsIn( 0 ) => port_oPoint0_mux_256,
oldVal => port_oPoint0_old );

MUXPRIO_1_type_21_port_oHex1 : MUXPRIO_1_type_21

port map( 
outVal => port_oHex1_new,
ValC0 => port_oHex1_256,
AsIn( 0 ) => port_oHex1_mux_256,
oldVal => port_oHex1_old );

MUXPRIO_1_signed0_port_oPoint1 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint1_new,
ValC0 => port_oPoint1_256,
AsIn( 0 ) => port_oPoint1_mux_256,
oldVal => port_oPoint1_old );

FFD_type_21_port_oHex0 : FFD_type_21

generic map( b"0000" )
port map(
 d => port_oHex0_new ,
 q => port_oHex0_old ,
 clk => clk );

port_oHex0 <= port_oHex0_old;

FFD_signed0_port_oPoint0 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint0_new ,
 q => port_oPoint0_old ,
 clk => clk );

port_oPoint0 <= port_oPoint0_old;

FFD_type_21_port_oHex1 : FFD_type_21

generic map( b"0000" )
port map(
 d => port_oHex1_new ,
 q => port_oHex1_old ,
 clk => clk );

port_oHex1 <= port_oHex1_old;

FFD_signed0_port_oPoint1 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint1_new ,
 q => port_oPoint1_old ,
 clk => clk );

port_oPoint1 <= port_oPoint1_old;

And_port_oHex0_as_256_port_oHex0_mux_256 : AND2STD 
port map(
 I0 => port_oHex0_as_256 ,
 I1 => Class_256 ,
 O => port_oHex0_mux_256 );

And_port_oPoint0_as_256_port_oPoint0_mux_256 : AND2STD 
port map(
 I0 => port_oPoint0_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint0_mux_256 );

And_port_oHex1_as_256_port_oHex1_mux_256 : AND2STD 
port map(
 I0 => port_oHex1_as_256 ,
 I1 => Class_256 ,
 O => port_oHex1_mux_256 );

And_port_oPoint1_as_256_port_oPoint1_mux_256 : AND2STD 
port map(
 I0 => port_oPoint1_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint1_mux_256 );

multiOr_1_out_port_oHex0 : multiOr_1

port map(
input => port_oHex0_bef_256,
output => port_oHex0_bef );

multiOr_1_out_port_oPoint0 : multiOr_1

port map(
input => port_oPoint0_bef_256,
output => port_oPoint0_bef );

multiOr_1_out_port_oHex1 : multiOr_1

port map(
input => port_oHex1_bef_256,
output => port_oHex1_bef );

multiOr_1_out_port_oPoint1 : multiOr_1

port map(
input => port_oPoint1_bef_256,
output => port_oPoint1_bef );

 end behavioural; 
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_1_type_23
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 3 downto 0 );
  oldVal : in unsigned( 3 downto 0 );
  outVal : out unsigned( 3 downto 0 ) );
end MUXPRIO_1_type_23;


architecture behavioural of MUXPRIO_1_type_23
is 
begin 
 outVal <= oldVal when AsIn = b"0"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
else b"0000";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_type_23
is 
generic( initValue : unsigned( 3 downto 0 ) );
port 
( 
 d : in unsigned( 3 downto 0 );
 q : out unsigned( 3 downto 0 );
 clk : in std_logic );
end FFD_type_23;


architecture behavioural of FFD_type_23 is 
 signal sq : unsigned( 3 downto 0 ) := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


architecture behavioural of component_6 is 


signal Class_256 : std_logic;
signal sig_timer_start_256 : std_logic;
signal sig_timer_stop_256 : std_logic;
signal sig_timer_as_256 : std_logic;
signal sig_timer_start_bef_256 : std_logic;
signal sig_timer_stop_bef_256 : std_logic;
signal sig_timer_mux_256 : std_logic;
signal sig_timer_value_256 : signed( 63 downto 0 );


signal port_iValue_256 : unsigned( 15 downto 0 );


signal port_iPoints_256 : unsigned( 3 downto 0 );


signal port_oHex0_256 : unsigned( 3 downto 0 );
signal port_oHex0_as_256 : std_logic;
signal port_oHex0_mux_256 : std_logic;
signal port_oHex0_bef_256 : std_logic;

signal port_oHex0_old : unsigned( 3 downto 0 );
signal port_oHex0_new : unsigned( 3 downto 0 );
signal port_oHex0_bef : std_logic;

signal port_oPoint0_256 : unsigned( 0 downto 0 );
signal port_oPoint0_as_256 : std_logic;
signal port_oPoint0_mux_256 : std_logic;
signal port_oPoint0_bef_256 : std_logic;

signal port_oPoint0_old : unsigned( 0 downto 0 );
signal port_oPoint0_new : unsigned( 0 downto 0 );
signal port_oPoint0_bef : std_logic;

signal port_oHex1_256 : unsigned( 3 downto 0 );
signal port_oHex1_as_256 : std_logic;
signal port_oHex1_mux_256 : std_logic;
signal port_oHex1_bef_256 : std_logic;

signal port_oHex1_old : unsigned( 3 downto 0 );
signal port_oHex1_new : unsigned( 3 downto 0 );
signal port_oHex1_bef : std_logic;

signal port_oPoint1_256 : unsigned( 0 downto 0 );
signal port_oPoint1_as_256 : std_logic;
signal port_oPoint1_mux_256 : std_logic;
signal port_oPoint1_bef_256 : std_logic;

signal port_oPoint1_old : unsigned( 0 downto 0 );
signal port_oPoint1_new : unsigned( 0 downto 0 );
signal port_oPoint1_bef : std_logic;

signal port_oHex2_256 : unsigned( 3 downto 0 );
signal port_oHex2_as_256 : std_logic;
signal port_oHex2_mux_256 : std_logic;
signal port_oHex2_bef_256 : std_logic;

signal port_oHex2_old : unsigned( 3 downto 0 );
signal port_oHex2_new : unsigned( 3 downto 0 );
signal port_oHex2_bef : std_logic;

signal port_oPoint2_256 : unsigned( 0 downto 0 );
signal port_oPoint2_as_256 : std_logic;
signal port_oPoint2_mux_256 : std_logic;
signal port_oPoint2_bef_256 : std_logic;

signal port_oPoint2_old : unsigned( 0 downto 0 );
signal port_oPoint2_new : unsigned( 0 downto 0 );
signal port_oPoint2_bef : std_logic;

signal port_oHex3_256 : unsigned( 3 downto 0 );
signal port_oHex3_as_256 : std_logic;
signal port_oHex3_mux_256 : std_logic;
signal port_oHex3_bef_256 : std_logic;

signal port_oHex3_old : unsigned( 3 downto 0 );
signal port_oHex3_new : unsigned( 3 downto 0 );
signal port_oHex3_bef : std_logic;

signal port_oPoint3_256 : unsigned( 0 downto 0 );
signal port_oPoint3_as_256 : std_logic;
signal port_oPoint3_mux_256 : std_logic;
signal port_oPoint3_bef_256 : std_logic;

signal port_oPoint3_old : unsigned( 0 downto 0 );
signal port_oPoint3_new : unsigned( 0 downto 0 );
signal port_oPoint3_bef : std_logic;

signal sig_timer_old : signed( 63 downto 0 );
signal sig_timer_new : signed( 63 downto 0 );
signal sig_timer_start : std_logic;
signal sig_timer_val : signed( 63 downto 0 );
signal sig_timer_stop : std_logic;
begin 

OnInstance256 : component_6_ON256

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_256,
stop_timer => sig_timer_stop_256,
timer_as => sig_timer_as_256,
timer_value_out => sig_timer_value_256 ,
port_iValue => port_iValue ,
port_iPoints => port_iPoints ,
port_oHex0 => port_oHex0_256,
port_oHex0_as => port_oHex0_as_256,
port_oHex0_old => port_oHex0_old ,
port_oPoint0 => port_oPoint0_256,
port_oPoint0_as => port_oPoint0_as_256,
port_oPoint0_old => port_oPoint0_old ,
port_oHex1 => port_oHex1_256,
port_oHex1_as => port_oHex1_as_256,
port_oHex1_old => port_oHex1_old ,
port_oPoint1 => port_oPoint1_256,
port_oPoint1_as => port_oPoint1_as_256,
port_oPoint1_old => port_oPoint1_old ,
port_oHex2 => port_oHex2_256,
port_oHex2_as => port_oHex2_as_256,
port_oHex2_old => port_oHex2_old ,
port_oPoint2 => port_oPoint2_256,
port_oPoint2_as => port_oPoint2_as_256,
port_oPoint2_old => port_oPoint2_old ,
port_oHex3 => port_oHex3_256,
port_oHex3_as => port_oHex3_as_256,
port_oHex3_old => port_oHex3_old ,
port_oPoint3 => port_oPoint3_256,
port_oPoint3_as => port_oPoint3_as_256,
port_oPoint3_old => port_oPoint3_old );

multiOr_0_in_256 : multiOr_0

port map( 
input => '1',
output     => Class_256 );

MUXPRIO_1_type_23_port_oHex0 : MUXPRIO_1_type_23

port map( 
outVal => port_oHex0_new,
ValC0 => port_oHex0_256,
AsIn( 0 ) => port_oHex0_mux_256,
oldVal => port_oHex0_old );

MUXPRIO_1_signed0_port_oPoint0 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint0_new,
ValC0 => port_oPoint0_256,
AsIn( 0 ) => port_oPoint0_mux_256,
oldVal => port_oPoint0_old );

MUXPRIO_1_type_23_port_oHex1 : MUXPRIO_1_type_23

port map( 
outVal => port_oHex1_new,
ValC0 => port_oHex1_256,
AsIn( 0 ) => port_oHex1_mux_256,
oldVal => port_oHex1_old );

MUXPRIO_1_signed0_port_oPoint1 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint1_new,
ValC0 => port_oPoint1_256,
AsIn( 0 ) => port_oPoint1_mux_256,
oldVal => port_oPoint1_old );

MUXPRIO_1_type_23_port_oHex2 : MUXPRIO_1_type_23

port map( 
outVal => port_oHex2_new,
ValC0 => port_oHex2_256,
AsIn( 0 ) => port_oHex2_mux_256,
oldVal => port_oHex2_old );

MUXPRIO_1_signed0_port_oPoint2 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint2_new,
ValC0 => port_oPoint2_256,
AsIn( 0 ) => port_oPoint2_mux_256,
oldVal => port_oPoint2_old );

MUXPRIO_1_type_23_port_oHex3 : MUXPRIO_1_type_23

port map( 
outVal => port_oHex3_new,
ValC0 => port_oHex3_256,
AsIn( 0 ) => port_oHex3_mux_256,
oldVal => port_oHex3_old );

MUXPRIO_1_signed0_port_oPoint3 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint3_new,
ValC0 => port_oPoint3_256,
AsIn( 0 ) => port_oPoint3_mux_256,
oldVal => port_oPoint3_old );

FFD_type_23_port_oHex0 : FFD_type_23

generic map( b"0000" )
port map(
 d => port_oHex0_new ,
 q => port_oHex0_old ,
 clk => clk );

port_oHex0 <= port_oHex0_old;

FFD_signed0_port_oPoint0 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint0_new ,
 q => port_oPoint0_old ,
 clk => clk );

port_oPoint0 <= port_oPoint0_old;

FFD_type_23_port_oHex1 : FFD_type_23

generic map( b"0000" )
port map(
 d => port_oHex1_new ,
 q => port_oHex1_old ,
 clk => clk );

port_oHex1 <= port_oHex1_old;

FFD_signed0_port_oPoint1 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint1_new ,
 q => port_oPoint1_old ,
 clk => clk );

port_oPoint1 <= port_oPoint1_old;

FFD_type_23_port_oHex2 : FFD_type_23

generic map( b"0000" )
port map(
 d => port_oHex2_new ,
 q => port_oHex2_old ,
 clk => clk );

port_oHex2 <= port_oHex2_old;

FFD_signed0_port_oPoint2 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint2_new ,
 q => port_oPoint2_old ,
 clk => clk );

port_oPoint2 <= port_oPoint2_old;

FFD_type_23_port_oHex3 : FFD_type_23

generic map( b"0000" )
port map(
 d => port_oHex3_new ,
 q => port_oHex3_old ,
 clk => clk );

port_oHex3 <= port_oHex3_old;

FFD_signed0_port_oPoint3 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint3_new ,
 q => port_oPoint3_old ,
 clk => clk );

port_oPoint3 <= port_oPoint3_old;

And_port_oHex0_as_256_port_oHex0_mux_256 : AND2STD 
port map(
 I0 => port_oHex0_as_256 ,
 I1 => Class_256 ,
 O => port_oHex0_mux_256 );

And_port_oPoint0_as_256_port_oPoint0_mux_256 : AND2STD 
port map(
 I0 => port_oPoint0_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint0_mux_256 );

And_port_oHex1_as_256_port_oHex1_mux_256 : AND2STD 
port map(
 I0 => port_oHex1_as_256 ,
 I1 => Class_256 ,
 O => port_oHex1_mux_256 );

And_port_oPoint1_as_256_port_oPoint1_mux_256 : AND2STD 
port map(
 I0 => port_oPoint1_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint1_mux_256 );

And_port_oHex2_as_256_port_oHex2_mux_256 : AND2STD 
port map(
 I0 => port_oHex2_as_256 ,
 I1 => Class_256 ,
 O => port_oHex2_mux_256 );

And_port_oPoint2_as_256_port_oPoint2_mux_256 : AND2STD 
port map(
 I0 => port_oPoint2_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint2_mux_256 );

And_port_oHex3_as_256_port_oHex3_mux_256 : AND2STD 
port map(
 I0 => port_oHex3_as_256 ,
 I1 => Class_256 ,
 O => port_oHex3_mux_256 );

And_port_oPoint3_as_256_port_oPoint3_mux_256 : AND2STD 
port map(
 I0 => port_oPoint3_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint3_mux_256 );

multiOr_1_out_port_oHex0 : multiOr_1

port map(
input => port_oHex0_bef_256,
output => port_oHex0_bef );

multiOr_1_out_port_oPoint0 : multiOr_1

port map(
input => port_oPoint0_bef_256,
output => port_oPoint0_bef );

multiOr_1_out_port_oHex1 : multiOr_1

port map(
input => port_oHex1_bef_256,
output => port_oHex1_bef );

multiOr_1_out_port_oPoint1 : multiOr_1

port map(
input => port_oPoint1_bef_256,
output => port_oPoint1_bef );

multiOr_1_out_port_oHex2 : multiOr_1

port map(
input => port_oHex2_bef_256,
output => port_oHex2_bef );

multiOr_1_out_port_oPoint2 : multiOr_1

port map(
input => port_oPoint2_bef_256,
output => port_oPoint2_bef );

multiOr_1_out_port_oHex3 : multiOr_1

port map(
input => port_oHex3_bef_256,
output => port_oHex3_bef );

multiOr_1_out_port_oPoint3 : multiOr_1

port map(
input => port_oPoint3_bef_256,
output => port_oPoint3_bef );

 end behavioural; 
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity MUXPRIO_1_type_26
is 
port 
( 
  AsIn : std_logic_vector( 0 downto 0 ) ;
  valC0 : in unsigned( 3 downto 0 );
  oldVal : in unsigned( 3 downto 0 );
  outVal : out unsigned( 3 downto 0 ) );
end MUXPRIO_1_type_26;


architecture behavioural of MUXPRIO_1_type_26
is 
begin 
 outVal <= oldVal when AsIn = b"0"
 else
  valC0 when AsIn( 0 downto 0 ) = b"1"
else b"0000";
end behavioural;


library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.ctype.all;
use work.conversion.all;
use work.RodinStd.all;

use work.package_main.all;

entity FFD_type_26
is 
generic( initValue : unsigned( 3 downto 0 ) );
port 
( 
 d : in unsigned( 3 downto 0 );
 q : out unsigned( 3 downto 0 );
 clk : in std_logic );
end FFD_type_26;


architecture behavioural of FFD_type_26 is 
 signal sq : unsigned( 3 downto 0 ) := initValue;
begin

 sq <= d when ( clk'event and clk = '1' ) else sq;
 q <= sq;

end behavioural;


architecture behavioural of component_8 is 


signal Class_256 : std_logic;
signal sig_timer_start_256 : std_logic;
signal sig_timer_stop_256 : std_logic;
signal sig_timer_as_256 : std_logic;
signal sig_timer_start_bef_256 : std_logic;
signal sig_timer_stop_bef_256 : std_logic;
signal sig_timer_mux_256 : std_logic;
signal sig_timer_value_256 : signed( 63 downto 0 );


signal port_iValue_256 : unsigned( 23 downto 0 );


signal port_iPoints_256 : unsigned( 5 downto 0 );


signal port_oHex0_256 : unsigned( 3 downto 0 );
signal port_oHex0_as_256 : std_logic;
signal port_oHex0_mux_256 : std_logic;
signal port_oHex0_bef_256 : std_logic;

signal port_oHex0_old : unsigned( 3 downto 0 );
signal port_oHex0_new : unsigned( 3 downto 0 );
signal port_oHex0_bef : std_logic;

signal port_oPoint0_256 : unsigned( 0 downto 0 );
signal port_oPoint0_as_256 : std_logic;
signal port_oPoint0_mux_256 : std_logic;
signal port_oPoint0_bef_256 : std_logic;

signal port_oPoint0_old : unsigned( 0 downto 0 );
signal port_oPoint0_new : unsigned( 0 downto 0 );
signal port_oPoint0_bef : std_logic;

signal port_oHex1_256 : unsigned( 3 downto 0 );
signal port_oHex1_as_256 : std_logic;
signal port_oHex1_mux_256 : std_logic;
signal port_oHex1_bef_256 : std_logic;

signal port_oHex1_old : unsigned( 3 downto 0 );
signal port_oHex1_new : unsigned( 3 downto 0 );
signal port_oHex1_bef : std_logic;

signal port_oPoint1_256 : unsigned( 0 downto 0 );
signal port_oPoint1_as_256 : std_logic;
signal port_oPoint1_mux_256 : std_logic;
signal port_oPoint1_bef_256 : std_logic;

signal port_oPoint1_old : unsigned( 0 downto 0 );
signal port_oPoint1_new : unsigned( 0 downto 0 );
signal port_oPoint1_bef : std_logic;

signal port_oHex2_256 : unsigned( 3 downto 0 );
signal port_oHex2_as_256 : std_logic;
signal port_oHex2_mux_256 : std_logic;
signal port_oHex2_bef_256 : std_logic;

signal port_oHex2_old : unsigned( 3 downto 0 );
signal port_oHex2_new : unsigned( 3 downto 0 );
signal port_oHex2_bef : std_logic;

signal port_oPoint2_256 : unsigned( 0 downto 0 );
signal port_oPoint2_as_256 : std_logic;
signal port_oPoint2_mux_256 : std_logic;
signal port_oPoint2_bef_256 : std_logic;

signal port_oPoint2_old : unsigned( 0 downto 0 );
signal port_oPoint2_new : unsigned( 0 downto 0 );
signal port_oPoint2_bef : std_logic;

signal port_oHex3_256 : unsigned( 3 downto 0 );
signal port_oHex3_as_256 : std_logic;
signal port_oHex3_mux_256 : std_logic;
signal port_oHex3_bef_256 : std_logic;

signal port_oHex3_old : unsigned( 3 downto 0 );
signal port_oHex3_new : unsigned( 3 downto 0 );
signal port_oHex3_bef : std_logic;

signal port_oPoint3_256 : unsigned( 0 downto 0 );
signal port_oPoint3_as_256 : std_logic;
signal port_oPoint3_mux_256 : std_logic;
signal port_oPoint3_bef_256 : std_logic;

signal port_oPoint3_old : unsigned( 0 downto 0 );
signal port_oPoint3_new : unsigned( 0 downto 0 );
signal port_oPoint3_bef : std_logic;

signal port_oHex4_256 : unsigned( 3 downto 0 );
signal port_oHex4_as_256 : std_logic;
signal port_oHex4_mux_256 : std_logic;
signal port_oHex4_bef_256 : std_logic;

signal port_oHex4_old : unsigned( 3 downto 0 );
signal port_oHex4_new : unsigned( 3 downto 0 );
signal port_oHex4_bef : std_logic;

signal port_oPoint4_256 : unsigned( 0 downto 0 );
signal port_oPoint4_as_256 : std_logic;
signal port_oPoint4_mux_256 : std_logic;
signal port_oPoint4_bef_256 : std_logic;

signal port_oPoint4_old : unsigned( 0 downto 0 );
signal port_oPoint4_new : unsigned( 0 downto 0 );
signal port_oPoint4_bef : std_logic;

signal port_oHex5_256 : unsigned( 3 downto 0 );
signal port_oHex5_as_256 : std_logic;
signal port_oHex5_mux_256 : std_logic;
signal port_oHex5_bef_256 : std_logic;

signal port_oHex5_old : unsigned( 3 downto 0 );
signal port_oHex5_new : unsigned( 3 downto 0 );
signal port_oHex5_bef : std_logic;

signal port_oPoint5_256 : unsigned( 0 downto 0 );
signal port_oPoint5_as_256 : std_logic;
signal port_oPoint5_mux_256 : std_logic;
signal port_oPoint5_bef_256 : std_logic;

signal port_oPoint5_old : unsigned( 0 downto 0 );
signal port_oPoint5_new : unsigned( 0 downto 0 );
signal port_oPoint5_bef : std_logic;

signal sig_timer_old : signed( 63 downto 0 );
signal sig_timer_new : signed( 63 downto 0 );
signal sig_timer_start : std_logic;
signal sig_timer_val : signed( 63 downto 0 );
signal sig_timer_stop : std_logic;
begin 

OnInstance256 : component_8_ON256

port map( 
timer_value_in => sig_timer_val,
start_timer => sig_timer_start_256,
stop_timer => sig_timer_stop_256,
timer_as => sig_timer_as_256,
timer_value_out => sig_timer_value_256 ,
port_iValue => port_iValue ,
port_iPoints => port_iPoints ,
port_oHex0 => port_oHex0_256,
port_oHex0_as => port_oHex0_as_256,
port_oHex0_old => port_oHex0_old ,
port_oPoint0 => port_oPoint0_256,
port_oPoint0_as => port_oPoint0_as_256,
port_oPoint0_old => port_oPoint0_old ,
port_oHex1 => port_oHex1_256,
port_oHex1_as => port_oHex1_as_256,
port_oHex1_old => port_oHex1_old ,
port_oPoint1 => port_oPoint1_256,
port_oPoint1_as => port_oPoint1_as_256,
port_oPoint1_old => port_oPoint1_old ,
port_oHex2 => port_oHex2_256,
port_oHex2_as => port_oHex2_as_256,
port_oHex2_old => port_oHex2_old ,
port_oPoint2 => port_oPoint2_256,
port_oPoint2_as => port_oPoint2_as_256,
port_oPoint2_old => port_oPoint2_old ,
port_oHex3 => port_oHex3_256,
port_oHex3_as => port_oHex3_as_256,
port_oHex3_old => port_oHex3_old ,
port_oPoint3 => port_oPoint3_256,
port_oPoint3_as => port_oPoint3_as_256,
port_oPoint3_old => port_oPoint3_old ,
port_oHex4 => port_oHex4_256,
port_oHex4_as => port_oHex4_as_256,
port_oHex4_old => port_oHex4_old ,
port_oPoint4 => port_oPoint4_256,
port_oPoint4_as => port_oPoint4_as_256,
port_oPoint4_old => port_oPoint4_old ,
port_oHex5 => port_oHex5_256,
port_oHex5_as => port_oHex5_as_256,
port_oHex5_old => port_oHex5_old ,
port_oPoint5 => port_oPoint5_256,
port_oPoint5_as => port_oPoint5_as_256,
port_oPoint5_old => port_oPoint5_old );

multiOr_0_in_256 : multiOr_0

port map( 
input => '1',
output     => Class_256 );

MUXPRIO_1_type_26_port_oHex0 : MUXPRIO_1_type_26

port map( 
outVal => port_oHex0_new,
ValC0 => port_oHex0_256,
AsIn( 0 ) => port_oHex0_mux_256,
oldVal => port_oHex0_old );

MUXPRIO_1_signed0_port_oPoint0 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint0_new,
ValC0 => port_oPoint0_256,
AsIn( 0 ) => port_oPoint0_mux_256,
oldVal => port_oPoint0_old );

MUXPRIO_1_type_26_port_oHex1 : MUXPRIO_1_type_26

port map( 
outVal => port_oHex1_new,
ValC0 => port_oHex1_256,
AsIn( 0 ) => port_oHex1_mux_256,
oldVal => port_oHex1_old );

MUXPRIO_1_signed0_port_oPoint1 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint1_new,
ValC0 => port_oPoint1_256,
AsIn( 0 ) => port_oPoint1_mux_256,
oldVal => port_oPoint1_old );

MUXPRIO_1_type_26_port_oHex2 : MUXPRIO_1_type_26

port map( 
outVal => port_oHex2_new,
ValC0 => port_oHex2_256,
AsIn( 0 ) => port_oHex2_mux_256,
oldVal => port_oHex2_old );

MUXPRIO_1_signed0_port_oPoint2 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint2_new,
ValC0 => port_oPoint2_256,
AsIn( 0 ) => port_oPoint2_mux_256,
oldVal => port_oPoint2_old );

MUXPRIO_1_type_26_port_oHex3 : MUXPRIO_1_type_26

port map( 
outVal => port_oHex3_new,
ValC0 => port_oHex3_256,
AsIn( 0 ) => port_oHex3_mux_256,
oldVal => port_oHex3_old );

MUXPRIO_1_signed0_port_oPoint3 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint3_new,
ValC0 => port_oPoint3_256,
AsIn( 0 ) => port_oPoint3_mux_256,
oldVal => port_oPoint3_old );

MUXPRIO_1_type_26_port_oHex4 : MUXPRIO_1_type_26

port map( 
outVal => port_oHex4_new,
ValC0 => port_oHex4_256,
AsIn( 0 ) => port_oHex4_mux_256,
oldVal => port_oHex4_old );

MUXPRIO_1_signed0_port_oPoint4 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint4_new,
ValC0 => port_oPoint4_256,
AsIn( 0 ) => port_oPoint4_mux_256,
oldVal => port_oPoint4_old );

MUXPRIO_1_type_26_port_oHex5 : MUXPRIO_1_type_26

port map( 
outVal => port_oHex5_new,
ValC0 => port_oHex5_256,
AsIn( 0 ) => port_oHex5_mux_256,
oldVal => port_oHex5_old );

MUXPRIO_1_signed0_port_oPoint5 : MUXPRIO_1_signed0

port map( 
outVal => port_oPoint5_new,
ValC0 => port_oPoint5_256,
AsIn( 0 ) => port_oPoint5_mux_256,
oldVal => port_oPoint5_old );

FFD_type_26_port_oHex0 : FFD_type_26

generic map( b"0000" )
port map(
 d => port_oHex0_new ,
 q => port_oHex0_old ,
 clk => clk );

port_oHex0 <= port_oHex0_old;

FFD_signed0_port_oPoint0 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint0_new ,
 q => port_oPoint0_old ,
 clk => clk );

port_oPoint0 <= port_oPoint0_old;

FFD_type_26_port_oHex1 : FFD_type_26

generic map( b"0000" )
port map(
 d => port_oHex1_new ,
 q => port_oHex1_old ,
 clk => clk );

port_oHex1 <= port_oHex1_old;

FFD_signed0_port_oPoint1 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint1_new ,
 q => port_oPoint1_old ,
 clk => clk );

port_oPoint1 <= port_oPoint1_old;

FFD_type_26_port_oHex2 : FFD_type_26

generic map( b"0000" )
port map(
 d => port_oHex2_new ,
 q => port_oHex2_old ,
 clk => clk );

port_oHex2 <= port_oHex2_old;

FFD_signed0_port_oPoint2 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint2_new ,
 q => port_oPoint2_old ,
 clk => clk );

port_oPoint2 <= port_oPoint2_old;

FFD_type_26_port_oHex3 : FFD_type_26

generic map( b"0000" )
port map(
 d => port_oHex3_new ,
 q => port_oHex3_old ,
 clk => clk );

port_oHex3 <= port_oHex3_old;

FFD_signed0_port_oPoint3 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint3_new ,
 q => port_oPoint3_old ,
 clk => clk );

port_oPoint3 <= port_oPoint3_old;

FFD_type_26_port_oHex4 : FFD_type_26

generic map( b"0000" )
port map(
 d => port_oHex4_new ,
 q => port_oHex4_old ,
 clk => clk );

port_oHex4 <= port_oHex4_old;

FFD_signed0_port_oPoint4 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint4_new ,
 q => port_oPoint4_old ,
 clk => clk );

port_oPoint4 <= port_oPoint4_old;

FFD_type_26_port_oHex5 : FFD_type_26

generic map( b"0000" )
port map(
 d => port_oHex5_new ,
 q => port_oHex5_old ,
 clk => clk );

port_oHex5 <= port_oHex5_old;

FFD_signed0_port_oPoint5 : FFD_signed0

generic map( b"0" )
port map(
 d => port_oPoint5_new ,
 q => port_oPoint5_old ,
 clk => clk );

port_oPoint5 <= port_oPoint5_old;

And_port_oHex0_as_256_port_oHex0_mux_256 : AND2STD 
port map(
 I0 => port_oHex0_as_256 ,
 I1 => Class_256 ,
 O => port_oHex0_mux_256 );

And_port_oPoint0_as_256_port_oPoint0_mux_256 : AND2STD 
port map(
 I0 => port_oPoint0_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint0_mux_256 );

And_port_oHex1_as_256_port_oHex1_mux_256 : AND2STD 
port map(
 I0 => port_oHex1_as_256 ,
 I1 => Class_256 ,
 O => port_oHex1_mux_256 );

And_port_oPoint1_as_256_port_oPoint1_mux_256 : AND2STD 
port map(
 I0 => port_oPoint1_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint1_mux_256 );

And_port_oHex2_as_256_port_oHex2_mux_256 : AND2STD 
port map(
 I0 => port_oHex2_as_256 ,
 I1 => Class_256 ,
 O => port_oHex2_mux_256 );

And_port_oPoint2_as_256_port_oPoint2_mux_256 : AND2STD 
port map(
 I0 => port_oPoint2_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint2_mux_256 );

And_port_oHex3_as_256_port_oHex3_mux_256 : AND2STD 
port map(
 I0 => port_oHex3_as_256 ,
 I1 => Class_256 ,
 O => port_oHex3_mux_256 );

And_port_oPoint3_as_256_port_oPoint3_mux_256 : AND2STD 
port map(
 I0 => port_oPoint3_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint3_mux_256 );

And_port_oHex4_as_256_port_oHex4_mux_256 : AND2STD 
port map(
 I0 => port_oHex4_as_256 ,
 I1 => Class_256 ,
 O => port_oHex4_mux_256 );

And_port_oPoint4_as_256_port_oPoint4_mux_256 : AND2STD 
port map(
 I0 => port_oPoint4_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint4_mux_256 );

And_port_oHex5_as_256_port_oHex5_mux_256 : AND2STD 
port map(
 I0 => port_oHex5_as_256 ,
 I1 => Class_256 ,
 O => port_oHex5_mux_256 );

And_port_oPoint5_as_256_port_oPoint5_mux_256 : AND2STD 
port map(
 I0 => port_oPoint5_as_256 ,
 I1 => Class_256 ,
 O => port_oPoint5_mux_256 );

multiOr_1_out_port_oHex0 : multiOr_1

port map(
input => port_oHex0_bef_256,
output => port_oHex0_bef );

multiOr_1_out_port_oPoint0 : multiOr_1

port map(
input => port_oPoint0_bef_256,
output => port_oPoint0_bef );

multiOr_1_out_port_oHex1 : multiOr_1

port map(
input => port_oHex1_bef_256,
output => port_oHex1_bef );

multiOr_1_out_port_oPoint1 : multiOr_1

port map(
input => port_oPoint1_bef_256,
output => port_oPoint1_bef );

multiOr_1_out_port_oHex2 : multiOr_1

port map(
input => port_oHex2_bef_256,
output => port_oHex2_bef );

multiOr_1_out_port_oPoint2 : multiOr_1

port map(
input => port_oPoint2_bef_256,
output => port_oPoint2_bef );

multiOr_1_out_port_oHex3 : multiOr_1

port map(
input => port_oHex3_bef_256,
output => port_oHex3_bef );

multiOr_1_out_port_oPoint3 : multiOr_1

port map(
input => port_oPoint3_bef_256,
output => port_oPoint3_bef );

multiOr_1_out_port_oHex4 : multiOr_1

port map(
input => port_oHex4_bef_256,
output => port_oHex4_bef );

multiOr_1_out_port_oPoint4 : multiOr_1

port map(
input => port_oPoint4_bef_256,
output => port_oPoint4_bef );

multiOr_1_out_port_oHex5 : multiOr_1

port map(
input => port_oHex5_bef_256,
output => port_oHex5_bef );

multiOr_1_out_port_oPoint5 : multiOr_1

port map(
input => port_oPoint5_bef_256,
output => port_oPoint5_bef );

 end behavioural; 


architecture schematic of main is
signal Signal_42 : unsigned( 3 downto 0 );
signal Signal_42_ev : std_logic;
signal Signal_43 : unsigned( 9 downto 0 );
signal Signal_43_ev : std_logic;
signal Signal_44 : unsigned( 7 downto 0 );
signal Signal_44_ev : std_logic;
signal Signal_45 : unsigned( 7 downto 0 );
signal Signal_45_ev : std_logic;
signal Signal_46 : unsigned( 7 downto 0 );
signal Signal_46_ev : std_logic;
signal Signal_47 : unsigned( 7 downto 0 );
signal Signal_47_ev : std_logic;
signal Signal_48 : unsigned( 7 downto 0 );
signal Signal_48_ev : std_logic;
signal Signal_49 : unsigned( 7 downto 0 );
signal Signal_49_ev : std_logic;
signal Signal_50 : unsigned( 2 downto 0 );
signal Signal_50_ev : std_logic;
signal Signal_51 : unsigned( 1 downto 0 );
signal Signal_51_ev : std_logic;
signal Signal_52 : unsigned( 1 downto 0 );
signal Signal_52_ev : std_logic;
signal Signal_55 : unsigned( 3 downto 0 );
signal Signal_55_ev : std_logic;
signal Signal_56 : unsigned( 0 downto 0 );
signal Signal_56_ev : std_logic;
signal Signal_57 : unsigned( 3 downto 0 );
signal Signal_57_ev : std_logic;
signal Signal_58 : unsigned( 0 downto 0 );
signal Signal_58_ev : std_logic;
signal Signal_63 : unsigned( 3 downto 0 );
signal Signal_63_ev : std_logic;
signal Signal_64 : unsigned( 0 downto 0 );
signal Signal_64_ev : std_logic;
signal Signal_65 : unsigned( 3 downto 0 );
signal Signal_65_ev : std_logic;
signal Signal_66 : unsigned( 0 downto 0 );
signal Signal_66_ev : std_logic;

begin
architecture_instance_19 : component_4

port map(
port_iValue => Signal_44,
port_iPoints => Signal_51,
port_oHex0 => Signal_55,
port_oPoint0 => Signal_56,
port_oHex1 => Signal_57,
port_oPoint1 => Signal_58,
start => start,
clk => clk );

architecture_instance_20 : component_2

port map(
port_iValue => Signal_55,
port_iPoint => Signal_56,
port_oHex => Signal_46,
start => start,
clk => clk );

architecture_instance_21 : component_2

port map(
port_iValue => Signal_57,
port_iPoint => Signal_58,
port_oHex => Signal_47,
start => start,
clk => clk );

architecture_instance_22 : component_4

port map(
port_iValue => Signal_45,
port_iPoints => Signal_52,
port_oHex0 => Signal_63,
port_oPoint0 => Signal_64,
port_oHex1 => Signal_65,
port_oPoint1 => Signal_66,
start => start,
clk => clk );

architecture_instance_23 : component_2

port map(
port_iValue => Signal_63,
port_iPoint => Signal_64,
port_oHex => Signal_48,
start => start,
clk => clk );

architecture_instance_24 : component_2

port map(
port_iValue => Signal_65,
port_iPoint => Signal_66,
port_oHex => Signal_49,
start => start,
clk => clk );

architecture_instance_17 : component_11

port map(
port_iKeys => Signal_42,
port_iKeys_ev => Signal_42_ev,
port_iSwitches => Signal_43,
port_oOpr => Signal_50,
port_oOpr_ev => Signal_50_ev,
port_oLoadValue => Signal_45,
start => start,
clk => clk );

architecture_instance_18 : component_12

port map(
port_iOpr => Signal_50,
port_iOpr_ev => Signal_50_ev,
port_iLoadValue => Signal_45,
port_oValue => Signal_44,
port_oValue_ev => Signal_44_ev,
start => start,
clk => clk );

Signal_42 <= toTopUnsigned( port_Keys );
Signal_42_ev <= port_Keys_ev;
Signal_43 <= toTopUnsigned( port_Switches );
port_Leds <= toTopBv( Signal_43 );
port_Hex0 <= toTopBv( Signal_46 );
port_Hex1 <= toTopBv( Signal_47 );
port_Hex4 <= toTopBv( Signal_48 );
port_Hex5 <= toTopBv( Signal_49 );

end schematic;

