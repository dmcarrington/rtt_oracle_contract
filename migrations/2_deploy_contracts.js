var WeatherOracle = artifacts.require("../contracts/DelayOracle.sol");

module.exports = function(deployer, network) {
  deployer.deploy(WeatherOracle, process.env.ORACLE_ADDRESS);
};
