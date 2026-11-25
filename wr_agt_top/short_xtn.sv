# code for short_xtn
# Extended class of write_xtn.sv
...
  //------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend short_xtn from write_xtn
class short_xtn extends write_xtn;

        // UVM Factory Registration Macro
        `uvm_object_utils(short_xtn)

        //------------------------------------------
        // CONSTRAINTS
        //------------------------------------------

         // Override Constraint for address such that it generates address to
         // access only the first 16 locations of the memory
        constraint b{address==10;}


        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Add constructor
        extern function new(string name = "short_xtn");
        endclass

//-----------------  constructor new method  -------------------//
//Add code for new()
function short_xtn::new(string name = "short_xtn");
        super.new(name);
endfunction:new
...
