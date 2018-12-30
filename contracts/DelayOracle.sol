pragma solidity 0.4.24;


contract WeatherOracle {
  address public oracleAddress;

  constructor (address _oracleAddress) public {
    oracleAddress = _oracleAddress;
  }

  event DelayUpdate (
    string outboundDelay,
    string returnDelay
  );

  function updateDelay (
    string outboundDelay,
    string returnDelay
  )
  public
  {
    require(msg.sender == oracleAddress);


    emit DelayUpdate (
      outboundDelay,
      returnDelay
    );
  }
}
