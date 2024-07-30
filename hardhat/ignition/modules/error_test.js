const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("error_test_Module", (m) => {
    const error_test_Module = m.contract("error_test");
    return {error_test_Module};
});