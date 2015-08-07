#     Project: openETCS
#      Module: EmergencyStop / test
# Description: common utility procedures for internal tests of package EmergencyStop
source "../../test/common.tcl"

proc set_Msg15 {target nid_em} {
  set_InRadioMsg "$target" [list nid_message 15 nid_em $nid_em]
}  

proc set_Msg16 {target nid_em} {
  set_InRadioMsg "$target" [list nid_message 16 nid_em $nid_em]
}  

proc set_Msg18 {target nid_em} {
  set_InRadioMsg "$target" [list nid_message 18 nid_em $nid_em]
}
