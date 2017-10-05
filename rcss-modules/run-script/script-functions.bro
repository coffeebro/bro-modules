#We name our module for use in main.bro
module ScriptFunctions;

#Export block contains everything that will need to be used by other Bro files

export {
  global run_script: function(): count;
}

function run_script(): count {
  #Execute a script on the local server and pass a Bro script variable to the script as a command line argument
  local result = "w000t";
  Exec::run([$cmd="/tmp/poc.sh "+result]);

  #Verify that the script fired off
  #Could be done by checking execution times, investigating expected output, etc...

  #Some sort of if statement to determine whether the function completed successfully, and an appropriate return value
  #In this case, we use a dummy statement; this will always evaluate to true
  if ( 1 == 1) {
    return 0;
  }
  else {
    return -1;
  }
}
