
//transaction definition for 4-bit adder
class adder_txn extends uvm_sequence_item;
   `uvm_object_utils(adder_txn)
  rand logic [3:0] a;
  rand logic [3:0] b;
  logic [4:0] sum;

  function new (string name = "adder_txn");
   super.new(name);
  endfunction 
//do_print function
//print transaction fields
    function void do_print (uvm_printer printer);
        super.do_print(printer);
        printer.print_field_int("a", a, 4);
        printer.print_field_int("b", b, 4);
        printer.print_field_int("sum", sum, 5);
    endfunction
//do_compare function
//compare two transactions
//return 1 if equal, 0 if not equal
    function bit do_compare (uvm_object rhs, uvm_comparer comparer);
        adder_txn rhs_;
        if (!$cast(rhs_, rhs)) begin
            `uvm_fatal("DO_COMPARE", "Cast failed")
        end
        if (a != rhs_.a) return 0;
        if (b != rhs_.b) return 0;
        if (sum != rhs_.sum) return 0;
        return 1;

endclass