const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("FunctionSelector", function () {
    async function deploy_FunctionSelectorContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const FunctionSelectorModule = await ethers.getContractFactory("FunctionSelector");
        const FunctionSelectorContract = await FunctionSelectorModule.deploy();
        return {FunctionSelectorContract, owner, otherAccount};
    }

    describe("validationContract Test Script", function () {
        it("assert_test", async function () {
            const {FunctionSelectorContract, owner, otherAccount} = await loadFixture(deploy_FunctionSelectorContract);

            await FunctionSelectorContract.callSetValue(100);
        });
    });
});