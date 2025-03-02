# generated from colcon_powershell/shell/template/prefix_chain.ps1.em

# This script extends the environment with the environment of other prefix
# paths which were sourced when this file was generated as well as all packages
# contained in this prefix path.

# function to source another script with conditional trace output
# first argument: the path of the script
function _colcon_prefix_chain_powershell_source_script {
  param (
    $_colcon_prefix_chain_powershell_source_script_param
  )
  # source script with conditional trace output
  if (Test-Path $_colcon_prefix_chain_powershell_source_script_param) {
    if ($env:COLCON_TRACE) {
      echo ". '$_colcon_prefix_chain_powershell_source_script_param'"
    }
    . "$_colcon_prefix_chain_powershell_source_script_param"
  } else {
    Write-Error "not found: '$_colcon_prefix_chain_powershell_source_script_param'"
  }
}

# source chained prefixes
_colcon_prefix_chain_powershell_source_script "/opt/ros/humble\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/ros2_robotic_arm_repo/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/proj_wrkspace/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/ros2_wrk_spc/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/AGV_Kalman_Filter_Robot/robo_car/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/ros2_projects/robot_car_V2/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/wrk_spc/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/robot_arm/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/bumperbot_wrkspc/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/robot_vehicle/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/shiva/Documents/mohan_turtlrbot/install\local_setup.ps1"

# source this prefix
$env:COLCON_CURRENT_PREFIX=(Split-Path $PSCommandPath -Parent)
_colcon_prefix_chain_powershell_source_script "$env:COLCON_CURRENT_PREFIX\local_setup.ps1"
