#We name our module for use in main.bro
module CustomNotices;

#Export block contains everything that will need to be used by other Bro files

export {
  #We create a custom Notice type
  redef enum Notice::Type += { RCSS_Bro_Start };
}
