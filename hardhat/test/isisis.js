const {
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {ethers} = require("hardhat");

describe("isisis", function () {
    async function deploy_isisis_Contract() {
        const [owner, otherAccount] = await ethers.getSigners();
        const isisis_Module = await ethers.getContractFactory("isisis3");
        const isisis_Contract = await isisis_Module.deploy(43);
        return {isisis_Contract, owner, otherAccount};
    }

    describe("isisis Test Script", function () {
        it("setNumber", async function () {
            const {isisis_Contract, owner, otherAccount} = await loadFixture(deploy_isisis_Contract);
            await isisis_Contract["setData3(uint,uint)"](1000, 2000);
            let res = await isisis_Contract.getData3()
            console.log("res==", res)
        });
    });

});