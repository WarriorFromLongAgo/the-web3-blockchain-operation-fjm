const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("MyContract", function () {
    async function deploy_MyContractContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const MyContractModule = await ethers.getContractFactory("MyContract");
        const MyContract = await MyContractModule.deploy();
        return {MyContract, owner, otherAccount};
    }

    describe("validationContract Test Script", function () {
        it("assert_test", async function () {
            const {MyContract, owner, otherAccount} = await loadFixture(deploy_MyContractContract);

            await MyContract.setValue(100);
            let res = await MyContract.getValue();
            console.log("res = ", res);

            let res2 = await MyContract.value_1(11);
            console.log("res2 = ", res2);
        });
    });

});