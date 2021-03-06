/* This file provides functionality for tab reopening. */

var my_closed_buffers = new Array();

//save the URL of the current buffer before closing it
interactive("my-close-and-save-current-buffer",
	"close and save the current buffer for later restore",
	function(I) {
	    if(my_closed_buffers.length==10){
		    my_closed_buffers.shift(); // remove older item to save
		    // memory, just save maximum 10 buffers
		}
		my_closed_buffers.push(I.buffer.document.URL);
		kill_buffer(I.buffer); //kill the current buffer
	});

undefine_key(default_global_keymap, "q");
define_key(default_global_keymap, "q", "my-close-and-save-current-buffer");

interactive("my-open-closed-buffer",
  "open the last closed buffer", 
  function(I){
    // check if the array length > 0
    if(my_closed_buffers.length>0){
      // load the URL in new windows
      load_url_in_new_buffer(
        my_closed_buffers[my_closed_buffers.length - 1], I.window);
      // remove the first item in the array
      my_closed_buffers.pop();
    }
  });

define_key(default_global_keymap, "C-T", "my-open-closed-buffer")
