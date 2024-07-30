const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("error_test", function () {
    async function deploy_error_test_Contract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const error_test_Module = await ethers.getContractFactory("error_test");
        const error_test_Contract = await error_test_Module.deploy(100);
        return {error_test_Contract, owner, otherAccount};
    }

    describe("error_test_Contract Test Script", function () {
        it("assert_test", async function () {
            const {error_test_Contract, owner, otherAccount} = await loadFixture(deploy_error_test_Contract);

            // await error_test_Contract.withdraw(10);
            // await error_test_Contract.withdraw(1000);

            // await error_test_Contract.withdraw_v2(10);
            // await error_test_Contract.withdraw_v2(1000);

            // await error_test_Contract.withdraw_v3(10);
            // await error_test_Contract.withdraw_v3(1000);
        });
    });
});