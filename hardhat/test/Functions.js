const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("Functions", function () {
    async function deployFunctionsContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const FunctionsModule = await ethers.getContractFactory("Functions");
        const FunctionsContract = await FunctionsModule.deploy();
        return {FunctionsContract, owner, otherAccount};
    }

    describe("Functions Test Script", function () {
        it("setNumber", async function () {
            const {FunctionsContract, owner, otherAccount} = await loadFixture(deployFunctionsContract);
            await FunctionsContract.setData(10)
            const number = await FunctionsContract.getData()
            console.log("number==", number)
        });
    });


    describe("Functions Foo Data", function () {
        it("setNumber", async function () {
            const { functionEvent, owner, otherAccount } = await loadFixture(deployFunctionsContract);
            const data =  await functionEvent["foo(string)"]("The Web3 社区，github: https://github.com/the-web3, websit: https://thewebthree.xyz/;如果你要报名学习我们课程，请加微信：17720087838")
            console.log("data==", data)
            const data1 =  await functionEvent["foo(uint256)"](3000)
            console.log("data1==", data1)
        });
    });
});