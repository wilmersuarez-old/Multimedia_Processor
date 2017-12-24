# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/ALU_1.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/ALU_2.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/ID_EX_WB_REG.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/IF_ID_REG.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/program_counter_reg.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/instruction_buffer.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/decoder.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/control_unit.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/mux_2.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/register_file.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/li_shift.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/mux_3.vhd}
  {C:/Users/Wilmer Suarez/Desktop/Repos/Multimedia_Processor_ESE345/Multimedia_Unit_Project/Multimedia_Unit_Project.srcs/sources_1/new/Multimedia_Processor.vhd}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top Multimedia_Processor -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Multimedia_Processor.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Multimedia_Processor_utilization_synth.rpt -pb instruction_buffer_utilization_synth.pb"
