#     Project: openETCS
#      Module: tests
# Description: Provides common utility procedures for Tcl-based test scripts

proc set_InMsg_None {target} {
  SSM::set "$target.valid" false
  SSM::set "$target.source" msrc_undefined
}

proc set_InRadioMsg {target header} {
  SSM::set "$target.valid" true
  SSM::set "$target.source" msrc_Euroradio
  foreach {prop val} "$header" { SSM::set "$target.Radio_Common_Header.$prop" "$val" } 
}

