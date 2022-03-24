from brownie import accounts, A


def deploy():
    account = accounts.load("dev")
    a = A.deploy({"from": account})
    ethernaut_instance_address = "0x866E8aBd996DDfE1a47a6e94aF70B4A20B9fAe05"
    a.call(ethernaut_instance_address, account, {"from": account})


def main():
    deploy()
