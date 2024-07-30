const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("forfor", function () {
    async function deploy_forforContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const forforModule = await ethers.getContractFactory("forfor");
        const forforContract = await forforModule.deploy();
        return {forforContract, owner, otherAccount};
    }

    describe("forforContract Test Script", function () {
        it("assert_test", async function () {
            const {forforContract, owner, otherAccount} = await loadFixture(deploy_forforContract);

            await forforContract.addNumbers(10);
            let number = await forforContract.getNumber();
            console.log("number==", number);
        });
    });

});