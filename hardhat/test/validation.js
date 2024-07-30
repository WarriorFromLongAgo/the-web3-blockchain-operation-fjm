const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("validation", function () {
    async function deploy_validationContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const validationModule = await ethers.getContractFactory("validation");
        const validationContract = await validationModule.deploy();
        return {validationContract, owner, otherAccount};
    }

    describe("validationContract Test Script", function () {
        it("assert_test", async function () {
            const {validationContract, owner, otherAccount} = await loadFixture(deploy_validationContract);

            // await validationContract.assert_test(100);
            await validationContract.require_test(-1);
        });
    });

});