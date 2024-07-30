const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("FunctionsImpl", function () {
    async function deployFunctionsContract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const FunctionsModule = await ethers.getContractFactory("FunctionImpl");
        const FunctionsContract = await FunctionsModule.deploy();
        return {FunctionsContract, owner, otherAccount};
    }

    describe("Functions Test Script", function () {
        it("setNumber", async function () {
            const {FunctionsContract, owner, otherAccount} = await loadFixture(deployFunctionsContract);
            await FunctionsContract.setData(10)
            const number = await FunctionsContract.getData()
            console.log("number==", number)

            const number_v2 = await FunctionsContract.getDataImpl()
            console.log("number_v2==", number_v2)

            // 调用 foo(uint256)
            const foo_1 = await FunctionsContract["foo(uint256)"](10000);
            console.log("foo_1==", foo_1);

            // 调用 foo(string)
            const foo_2 = await FunctionsContract["foo(string)"]("Hello");
            console.log("foo_2==", foo_2);

            // 调用 foo(uint256, uint256)
            const foo_3 = await FunctionsContract["foo(uint256,uint256)"](1000, 2000);
            console.log("foo_3==", foo_3.toString());

        });
    });
});