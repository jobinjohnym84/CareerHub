pragma solidity >=0.4.22 <0.6.0;

contract TsEmployee{
   string head;
   struct Employee{
     
      string fname;
      string lname;
      string email;
   }
mapping (string => Employee) _Obj;
 
function addNodes(string memory _fname, string memory _lname , string memory _email)  public returns(uint){
     
    _Obj[_email].fname = _fname;
    _Obj[_email].lname = _lname;
    _Obj[_email].email = _email;
   
}

function getHead() public view returns(string memory){
    return head;
}

function getNodes(string memory _email) public view returns (string memory,string memory,string memory){

    return (_Obj[_email].fname, _Obj[_email].lname , _Obj[_email].email );
}

}
