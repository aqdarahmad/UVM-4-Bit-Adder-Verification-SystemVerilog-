class adder_seq extends uvm_sequence;

`uvm_object_utils(adder_seq)

 function new (string name = "adder_seq");
   super.new(name);
    endfunction
  //task body
  task body();
    adder_txn t;
    t=adder_txn::type_id::create("t");
    repeat(10) begin
      assert(t.randomize());
      start_item(t);
      finish_item(t);
    end
  endtask

  task print();
    `uvm_info("ADDER_SEQ", "Sequence completed", UVM_LOW)
  endtask

  
endclass