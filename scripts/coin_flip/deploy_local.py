from brownie import accounts, Guess, CoinFlip


def deploy():
    account = accounts[0]
    coinflip = CoinFlip.deploy({"from": account})
    guesser = Guess.deploy(coinflip.address, {"from": account})
    for i in range(10):
        guesser.guess()
    print(coinflip.consecutiveWins())


def main():
    deploy()
