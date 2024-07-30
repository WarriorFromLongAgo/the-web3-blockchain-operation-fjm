const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("IfElse", function () {
    async function deployIfElseContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const IfElseModule = await ethers.getContractFactory("IfElse");
        const ifElseContract = await IfElseModule.deploy();
        return {ifElseContract, owner, otherAccount};
    }

    describe("IfElse Test Script", function () {
        it("setNumber", async function () {
            const {ifElseContract, owner, otherAccount} = await loadFixture(deployIfElseContract);
            await ifElseContract.setNumber(10)
            const number = await ifElseContract.number()
            console.log("number==", number)
        });
    });

});