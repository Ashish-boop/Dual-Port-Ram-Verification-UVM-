


class ram_wbase_seq extends uvm_sequence #(write_xtn);

  // Factory registration using `uvm_object_utils

  `uvm_object_utils(ram_wbase_seq)
  //------------------------------------------
  // METHODS
  //------------------------------------------

  // Standard UVM Methods:
  extern function new(string name = "ram_wbase_seq");
endclass
//-----------------  constructor new method  -------------------//
function ram_wbase_seq::new(string name = "ram_wbase_seq");
  super.new(name);
endfunction


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_single_addr_wr_xtns from ram_wbase_seq;
class ram_single_addr_wr_xtns extends ram_wbase_seq;


  // Factory registration using `uvm_object_utils
  `uvm_object_utils(ram_single_addr_wr_xtns)

  //------------------------------------------
  // METHODS
  //------------------------------i------------

  // Standard UVM Methods:
  extern function new(string name = "ram_single_addr_wr_xtns");
  extern task body();
endclass
//-----------------  constructor new method  -------------------//
function ram_single_addr_wr_xtns::new(string name = "ram_single_addr_wr_xtns");
  super.new(name);
endfunction


//-----------------  task body method  -------------------//

task ram_single_addr_wr_xtns::body();
  repeat (100) begin
    req = write_xtn::type_id::create("req");
    start_item(req);
    assert (req.randomize() with {

      address inside {[0 : 1023]};

      data <= 64'h0000_0000_0000_FFFF;


    });
    `uvm_info("RAM_WR_SEQUENCE", $sformatf("printing from sequence \n %s", req.sprint()), UVM_HIGH)
    finish_item(req);
  end
endtask


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_ten_wr_xtns from ram_wbase_seq;
class ram_ten_wr_xtns extends ram_wbase_seq;


  // Factory registration using `uvm_object_utils
  `uvm_object_utils(ram_ten_wr_xtns)

  //------------------------------------------
  // METHODS
  //------------------------------------------

  // Standard UVM Methods:
  extern function new(string name = "ram_ten_wr_xtns");
  extern task body();
endclass
//-----------------  constructor new method  -------------------//
function ram_ten_wr_xtns::new(string name = "ram_ten_wr_xtns");
  super.new(name);
endfunction


//-----------------  task body method  -------------------//

task ram_ten_wr_xtns::body();
  repeat (50) begin
    req = write_xtn::type_id::create("req");
    start_item(req);
    assert (req.randomize() with {

      address inside {[1024 : 2047]};
      data inside {[64'h0000_0000_0001_0000 : 64'h0000_0000_FFFF_FFFF]};

    });

    `uvm_info("RAM_WR_SEQUENCE", $sformatf("printing from sequence \n %s", req.sprint()), UVM_HIGH)
    finish_item(req);
  end
endtask



//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_odd_wr_xtns from ram_wbase_seq;
class ram_odd_wr_xtns extends ram_wbase_seq;


  // Factory registration using `uvm_object_utils
  `uvm_object_utils(ram_odd_wr_xtns)

  //------------------------------------------
  // METHODS
  //------------------------------------------

  // Standard UVM Methods:
  extern function new(string name = "ram_odd_wr_xtns");
  extern task body();
endclass
//-----------------  constructor new method  -------------------//
function ram_odd_wr_xtns::new(string name = "ram_odd_wr_xtns");
  super.new(name);
endfunction


//-----------------  task body method  -------------------//

task ram_odd_wr_xtns::body();
  repeat (50) begin
    req = write_xtn::type_id::create("req");
    start_item(req);
    assert (req.randomize() with {

      address inside {[2048 : 3071]};

      data inside {[64'h0001_0000_0000_0000 : 64'h7FFF_FFFF_FFFF_FFFF]};

    });


    `uvm_info("RAM_WR_SEQUENCE", $sformatf("printing from sequence \n %s", req.sprint()), UVM_HIGH)
    finish_item(req);
  end
endtask



//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_even_wr_xtns from ram_wbase_seq;
class ram_even_wr_xtns extends ram_wbase_seq;


  // Factory registration using `uvm_object_utils
  `uvm_object_utils(ram_even_wr_xtns)

  //------------------------------------------
  // METHODS
  //------------------------------------------

  // Standard UVM Methods:
  extern function new(string name = "ram_even_wr_xtns");
  extern task body();
endclass
//-----------------  constructor new method  -------------------//
function ram_even_wr_xtns::new(string name = "ram_even_wr_xtns");
  super.new(name);
endfunction


//-----------------  task body method  -------------------//

task ram_even_wr_xtns::body();
  repeat (100) begin
    req = write_xtn::type_id::create("req");
    start_item(req);
    assert (req.randomize() with {

      address inside {[3072 : 4095]};

      data inside {[64'h8000_0000_0000_0000 : 64'hFFFF_FFFF_FFFF_FFFF]};

    });

    `uvm_info("RAM_WR_SEQUENCE", $sformatf("printing from sequence \n %s", req.sprint()), UVM_HIGH)
    finish_item(req);
  end
endtask


