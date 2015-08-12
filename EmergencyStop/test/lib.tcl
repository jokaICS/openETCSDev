#     Project: openETCS
#      Module: EmergencyStop / test
# Description: common utility procedures for internal tests of package EmergencyStop
source "../../test/common.tcl"

proc set_Msg15 {target nid_em d_emergencystop {q_scale 0}} {
  switch $q_scale {
    0 {set qs Q_SCALE_10_cm_scale}
    1 {set qs Q_SCALE_1_m_scale}
    2 {set qs Q_SCALE_10_m_scale}
  }
  set_InRadioMsg "$target" [list\
    nid_message 15\
    nid_em $nid_em\
    d_emergencystop $d_emergencystop\
    q_scale $qs]
}  

proc set_Msg16 {target nid_em} {
  set_InRadioMsg "$target" [list nid_message 16 nid_em $nid_em]
}  

proc set_Msg18 {target nid_em} {
  set_InRadioMsg "$target" [list nid_message 18 nid_em $nid_em]
}
