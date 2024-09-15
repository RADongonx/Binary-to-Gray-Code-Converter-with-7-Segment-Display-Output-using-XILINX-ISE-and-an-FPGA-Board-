
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name DOE -dir "C:/Xilinx/DOE/planAhead_run_1" -part xc3s500eft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Xilinx/DOE/BINARYTOGRAY.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Xilinx/DOE} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "BINARYTOGRAY.ucf"
add_files "BINARYTOGRAY.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
