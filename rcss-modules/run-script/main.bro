#This facilitates the Exec usage
@load base/utils/exec
@load rcss-scripts/run-script/script-functions

event bro_init() {
  result = ScriptFunctions::run_script();
}
