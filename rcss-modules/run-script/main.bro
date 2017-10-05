#This facilitates the Exec usage
@load base/utils/exec
@load rcss-modules/run-script/script-functions

event bro_init() {
  local result : int = ScriptFunctions::run_script();
}