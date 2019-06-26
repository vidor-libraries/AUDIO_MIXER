# Copyright 2018 ARDUINO SA (http://www.arduino.cc/)
# This file is part of Vidor IP.
# Copyright (c) 2018
# Authors: Dario Pennisi
#
# This software is released under:
# The GNU General Public License, which covers the main part of
# Vidor IP
# The terms of this license can be found at:
# https://www.gnu.org/licenses/gpl-3.0.en.html
#
# You can be released from the requirements of the above licenses by purchasing
# a commercial license. Buying such a license is mandatory if you want to modify or
# otherwise use the software for commercial activities involving the Arduino
# software without disclosing the source code of your own applications. To purchase
# a commercial license, send an email to license@arduino.cc.

#
# request TCL package from ACDS 16.1
#
package require -exact qsys 16.1


#
# module NEOPIXEL
#
set_module_property DESCRIPTION ""
set_module_property NAME AUDIO_MIXER
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ipTronix
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Audio OUT driver"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
# set_module_property ELABORATION_CALLBACK            elaboration_callback


#
# file sets
#
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL AUDIO_MIXER
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file AUDIO_MIXER.v SYSTEM_VERILOG PATH AUDIO_MIXER.v TOP_LEVEL_FILE

#
# display items
#


#
# connection point avalon_slave
#
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clk
set_interface_property avalon_slave associatedReset reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 1
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave oCSR_READ_DATA readdata Output 32
add_interface_port avalon_slave iCSR_WRITE_DATA writedata Input 32
add_interface_port avalon_slave iCSR_ADDRESS address Input 3
add_interface_port avalon_slave iCSR_READ read Input 1
add_interface_port avalon_slave iCSR_WRITE write Input 1
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


#
# connection point clk
#
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk iCLOCK clk Input 1


#
# connection point reset
#
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset iRESET reset Input 1


#
# connection point audio_dst0
#
add_interface audio_dst0 conduit end
set_interface_property audio_dst0 associatedClock clk
set_interface_property audio_dst0 associatedReset ""
set_interface_property audio_dst0 ENABLED true
set_interface_property audio_dst0 EXPORT_OF ""
set_interface_property audio_dst0 PORT_NAME_MAP ""
set_interface_property audio_dst0 CMSIS_SVD_VARIABLES ""
set_interface_property audio_dst0 SVD_ADDRESS_GROUP ""

add_interface_port audio_dst0 iCLK0   clock         Input    1
add_interface_port audio_dst0 iDV0    data_valid    Input    1
add_interface_port audio_dst0 oREADY0 ready         Output   1
add_interface_port audio_dst0 iSOP0   start_packet  Input    1
add_interface_port audio_dst0 iEOP0   end_packet    Input    1
add_interface_port audio_dst0 iDATA0  data          Input   32

#
# connection point audio_dst1
#
add_interface audio_dst1 conduit end
set_interface_property audio_dst1 associatedClock clk
set_interface_property audio_dst1 associatedReset ""
set_interface_property audio_dst1 ENABLED true
set_interface_property audio_dst1 EXPORT_OF ""
set_interface_property audio_dst1 PORT_NAME_MAP ""
set_interface_property audio_dst1 CMSIS_SVD_VARIABLES ""
set_interface_property audio_dst1 SVD_ADDRESS_GROUP ""

add_interface_port audio_dst1 iCLK1   clock         Input    1
add_interface_port audio_dst1 iDV1    data_valid    Input    1
add_interface_port audio_dst1 oREADY1 ready         Output   1
add_interface_port audio_dst1 iSOP1   start_packet  Input    1
add_interface_port audio_dst1 iEOP1   end_packet    Input    1
add_interface_port audio_dst1 iDATA1  data          Input   32

#
# connection point audio_dst2
#
add_interface audio_dst2 conduit end
set_interface_property audio_dst2 associatedClock clk
set_interface_property audio_dst2 associatedReset ""
set_interface_property audio_dst2 ENABLED true
set_interface_property audio_dst2 EXPORT_OF ""
set_interface_property audio_dst2 PORT_NAME_MAP ""
set_interface_property audio_dst2 CMSIS_SVD_VARIABLES ""
set_interface_property audio_dst2 SVD_ADDRESS_GROUP ""

add_interface_port audio_dst2 iCLK2   clock         Input    1
add_interface_port audio_dst2 iDV2    data_valid    Input    1
add_interface_port audio_dst2 oREADY2 ready         Output   1
add_interface_port audio_dst2 iSOP2   start_packet  Input    1
add_interface_port audio_dst2 iEOP2   end_packet    Input    1
add_interface_port audio_dst2 iDATA2  data          Input   32

#
# connection point audio_dst3
#
add_interface audio_dst3 conduit end
set_interface_property audio_dst3 associatedClock clk
set_interface_property audio_dst3 associatedReset ""
set_interface_property audio_dst3 ENABLED true
set_interface_property audio_dst3 EXPORT_OF ""
set_interface_property audio_dst3 PORT_NAME_MAP ""
set_interface_property audio_dst3 CMSIS_SVD_VARIABLES ""
set_interface_property audio_dst3 SVD_ADDRESS_GROUP ""

add_interface_port audio_dst3 iCLK3   clock         Input    1
add_interface_port audio_dst3 iDV3    data_valid    Input    1
add_interface_port audio_dst3 oREADY3 ready         Output   1
add_interface_port audio_dst3 iSOP3   start_packet  Input    1
add_interface_port audio_dst3 iEOP3   end_packet    Input    1
add_interface_port audio_dst3 iDATA3  data          Input   32

#
# connection point audio_src
#
add_interface audio_src conduit end
set_interface_property audio_src associatedClock clk
set_interface_property audio_src associatedReset ""
set_interface_property audio_src ENABLED true
set_interface_property audio_src EXPORT_OF ""
set_interface_property audio_src PORT_NAME_MAP ""
set_interface_property audio_src CMSIS_SVD_VARIABLES ""
set_interface_property audio_src SVD_ADDRESS_GROUP ""

add_interface_port audio_src oCLK   clock         Output   1
add_interface_port audio_src oDV    data_valid    Output   1
add_interface_port audio_src iREADY ready         Input    1
add_interface_port audio_src oSOP   start_packet  Output   1
add_interface_port audio_src oEOP   end_packet    Output   1
add_interface_port audio_src oDATA  data          Output  32
