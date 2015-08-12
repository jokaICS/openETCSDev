#     Project: openETCS
#      Module: EmergencyStop / test
# Description: common utilities used for tests of TA_EmergencyStop/Manage_EmergencyStop
source lib.tcl

set eut TA_EmergencyStop::Manage_EmergencyStop

proc input {t_train {minSafeFront 0} {currentEOA 1000} {nid_engine 321}} {
  SSM::set "$::eut/t_train" $t_train
  SSM::set "$::eut/trainProps.nid_engine" $nid_engine
  SSM::set "$::eut/TrainPositionIn.minSafeFrontEndPosition" $minSafeFront
  SSM::set "$::eut/currentEOA" $currentEOA
}

proc checkOutput args {
  set lst [list]
  foreach arg $args { 
    set t [split $arg =]
    SSM::check "$::eut/[lindex $t 0]" [lindex $t 1] 
  }
} 

proc checkMsg147 {{present false} {t_train 0} {nid_em 0} {q_emergencystop 0}} {
  set h "$::eut/message147.header"
  SSM::check "$::eut/message147.present" $present
  SSM::check "$h.xNID_EM" $nid_em
  switch $q_emergencystop {
    0  {set qes Q_EMERGENCYSTOP_Conditional_Emergency_Stop_accepted_with_update_of_EOA}
    1  {set qes Q_EMERGENCYSTOP_Conditional_Emergency_Stop_accepted_with_no_update_of_EOA}
    2  {set qes Q_EMERGENCYSTOP_Unconditional_Emergency_Stop_accepted}
    3  {set qes Q_EMERGENCYSTOP_Emergency_stop}
  }
  SSM::check "$h.xQ_EMERGENCYSTOP" $qes
}

proc get_UES_OpVar {var} {
  SSM::get "EmergencyStop::Manage_EmergencyStop/EmergencyStop::ES_Process_Unconditional 1/$var"
}

proc nop {} {
  set_InMsg_None "$::eut/messageIn"
}


