# code for Top Module
  ...
  module top;
        import uvm_pkg::*;

        // import the  ram_pkg
    import ram_pkg::*;




        // handle for write_xtn
        write_xtn wr_xtnh;
        // Add build method
        function void build();
                  // Create an instance of wr_xtnh using factory create()
                  wr_xtnh=write_xtn::type_id::create("wr_xtnh");
                  // Randomize and print the transactions
                  assert(wr_xtnh.randomize());
                  wr_xtnh.print();
        endfunction

        // Within initial

        initial
               begin
                        // Call build function 5 times (Without Overriding)
                repeat(5)
                                build();

                                //call factory overriding method
                                //Hint : Use factory.set_type_override_by_type Override
                                factory.set_type_override_by_type(write_xtn::get_type,short_xtn::get_type);
                                // Call build function 5 times
                repeat(5)
                        begin

                                                build();
                        end
             end

endmodule
...
