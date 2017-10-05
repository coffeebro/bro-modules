#This is needed to use our custom Notice type
@load rcss-scripts/custom-notices

#This event occurs when Bro starts
event bro_init() {

  #Create a Notice in the Notice log of type RCSS_Bro_Start
  NOTICE([$note=CustomNotices::RCSS_Bro_Start,
  $msg = "Bro engine started!"]);
}
