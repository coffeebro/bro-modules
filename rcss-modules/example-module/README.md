# example-module
This module is intended to provide a template from which additional modules can be created.  A module should contain, at a minimum, three files: __load__.bro, main.bro, and one or more Bro scripts.  Essentially, you'll create Bro scripts that provide the desired functionality for the module, implement the logic for that functionality in main.bro, and use __load__.bro to specify all the files Bro needs to carry out the logic in main.bro.

This module creates a custom Notice type, and creates an entry in the Notice log of the custom type when the Bro process starts.
