








在一个典型的 Hardhat 项目中，文件夹和文件的结构通常如下：

contracts：

这个文件夹包含所有的智能合约代码。通常使用 Solidity 编写。每个智能合约文件的扩展名通常为 .sol。
示例：contracts/MyToken.sol


scripts：

这个文件夹包含脚本文件，主要用于部署和交互智能合约。这些脚本通常用 JavaScript 或 TypeScript 编写。
示例：scripts/deploy.js

test：

这个文件夹包含用于测试智能合约的测试文件。可以使用 JavaScript 或 TypeScript 编写测试，测试框架通常是 Mocha 和 Chai。
示例：test/MyToken.test.js


artifacts：

这个文件夹由 Hardhat 自动生成，包含编译后的智能合约的 ABI（应用二进制接口）和字节码。
用户通常不需要手动修改此文件夹中的内容。

build-info：

这个文件夹包含编译过程中的详细信息，包括编译器版本、输入输出文件、编译选项等。这些信息对于调试和再现编译环境非常重要。
contracts：

这个文件夹包含每个编译后的智能合约的输出结果，通常以智能合约的源文件路径为子目录结构。
在每个智能合约文件夹下，会有以下文件：
合约名称.json：
这个 JSON 文件包含该智能合约的 ABI（应用二进制接口）、字节码、合约名称和其他相关信息。

cache：

这个文件夹也由 Hardhat 自动生成，用于存储编译过程中的临时文件，以加快后续的编译速度。
用户通常不需要手动修改此文件夹中的内容。

node_modules：

这个文件夹包含项目的所有依赖包，由 npm 或 yarn 安装和管理。
用户通常不需要手动修改此文件夹中的内容。


hardhat.config.js：

这是 Hardhat 的配置文件，包含项目的编译器版本、网络配置和其他插件配置。


