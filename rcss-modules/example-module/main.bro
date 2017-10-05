#This is needed to use our custom Notice type
@load rcss-scripts/custom-notices

#This facilitates the Exec usage, should be moved to its own example later
@load base/utils/exec

#This event occurs when Bro starts
event bro_init() {

  #Create a Notice in the Notice log of type RCSS_Bro_Start
  NOTICE([$note=CustomNotices::RCSS_Bro_Start,
  $msg = "Bro engine started!"]);

  #Execute a script locally and pass a Bro script variable to the local script as a command line argument
  #Should be moved to its own example later
  local result = "w000t";
  Exec::run([$cmd="/tmp/poc.sh "+result]);
}
