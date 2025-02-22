Goal: 
* Learners should understand how to interact with Tendermint node
* Learners should be able to scaffold and start a chain

# Lesson 1: Scaffolding and starting a chain

## What is a chain? (from definition of Cosmos intro)

A blockchain can be described as a digital ledger maintained by a set of validators that __remains correct even if some of the validators (less than a third) are malicious (called as Byzantine behaviour) (1)__. Each party stores a copy of the ledger on their computer and updates it according to the rules defined by the protocol when they receive blocks of transactions. __The goal of blockchain technology is to make sure the ledger is correctly replicated (2)__, meaning that each honest party sees the same version of the ledger at any given moment.

The main benefit of blockchain technology is the ability for parties to share a ledger without having to rely on a central authority. Blockchains are decentralized. The first and most famous application of blockchain technology today is Bitcoin, a decentralized currency.

Now that we have a better understanding of what a blockchain is from a high-level perspective, let us look at the definition of blockchain with a more technical angle. A blockchain is a deterministic state machine replicated on full-nodes that retains consensus safety as long as less than a third of its maintainers are Byzantine. Let’s break this down.

A state machine is just a fancy word for a program that holds a state and modifies it when it receives inputs. There is a state, which can represent different things depending on the application (e.g. token balances for a cryptocurrency), and transactions, that modify the state (e.g. by subtracting balances from one account and adding them to another).
Deterministic means that if you replay the same transactions from the same genesis state, you will always end up with the same resultant state.
__Consensus safety (3)__ refers to the fact that every honest node on which the state machine is replicated should see the same state at the same time. When nodes receive blocks of transactions, they verify that it is valid, meaning that each transaction is valid and that the block itself was validated by more than two thirds of the maintainers, called validators. Safety will be guaranteed as long as less than a third of validators are Byzantine, i.e. malicious.
Layers of a blockchain: application, consensus, and networking
From an architecture standpoint, blockchains can be divided into three conceptual layers:

1. Cosmos     | Application: Responsible for updating the state given a set of transactions, i.e. processing transactions.
2. Tendermint | Networking: Responsible for the propagation of transactions and consensus-related messages.
3. Tendermint | Consensus: Enables nodes to agree on the current state of the system.

The state machine is the same as the application layer. It defines the state of the application and the state-transition functions. The other layers are responsible for replicating the state machine on all the nodes that connect to the network.

### Further details
1. Even if some of the validators (less than a third) are malicious (called as Byzantine behaviour): it is proven that a system cannot reach consensus if n < 3f (n is the number of total nodes, f is the number of faulty nodes) (Marshall C. Pease, Robert E. Shostak, and Leslie Lamport. Reaching agreement in the presence of faults. J. ACM, 27(2):228–234, 1980). In many real cases, a chain testnet is often halted due to its too small size and too huge voting power for 1, 2 nodes.

2. Consensus safety: consensus safety refers to 3 rules that all consensus engine must follow (FLP proof)
* Agreement: All correct nodes decide for the same value
* Termination: All correct nodes terminate in finite time
* Validity: The decision value (y) must be the input value (x) of a node
    * round 1, x → f(x) → y1
    * round 2, y1 → f(x) → y2

In the case of Tendermint, validity refers to All-Same Validity (If all correct nodes start with the same input v, the decision value must be v)

3. The goal of blockchain technology is to make sure the ledger is correctly replicated: In reality, there are several code in chain logic can produce randomness which fails validity rule. For example such as looping through map in golang.

### More on: https://v1.cosmos.network/intro

## Ignite CLI

https://docs.ignite.com/

Should only use Ignite CLI for scaffolding chain

## Guidelines
1. Download ignite CLI from: https://docs.ignite.com/#install-ignite-cli
2. Scaffold a new chain: "ignite scaffold chain"
3. install chain binary (a software that runs a node)
 * go install ./...
4. initialize a chain
 * chaind init temp_chain --chain-id chain-testnet
5. add a validator
 * chaind keys add validator --keyring-backend test
 * chaind add-genesis-account cosmos1mk6227uxq8cenrljee4xx4ycczzu32n6jy3962 10000000stake --keyring-backend test
 * chaind gentx validator 1000000stake --chain-id chain1-testnet --keyring-backend test
 * chaind collect-gentxs
 * chaind validate-genesis
6. start chain
 * chaind start

## Help videos
https://youtu.be/SD6uXUMvB3c
https://youtu.be/9a3Xq8VDW3Y

## Homework
1. Start a chain
2. Make it run
3. Post picture of your chain running. The result should be like so:

![result](images/1_1.png "result of a chain running")