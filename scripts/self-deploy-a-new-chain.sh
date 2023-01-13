# Start a chain
go install ./...

babyd init temp_chain --chain-id chain1-testnet

babyd keys add validator --keyring-backend test

----------------------------------------------

- name: validator
  type: local
  address: baby1qur4atfgvwlsekls88q6pva284apuq4xjzus89
  pubkey: '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A0tpFeMUgyiPNoAhfQumVNQwyuNilmIAqITSUh6oUhDk"}'
  mnemonic: ""


**Important** write this mnemonic phrase in a safe place.
It is the only way to recover your account if you ever forget your password.

outer pulp shrug close moon inner attend pass half trouble kitten kidney vapor invest erupt purpose hard amused fire verb long answer wide survey

----------------------------------------------

babyd add-genesis-account baby1qur4atfgvwlsekls88q6pva284apuq4xjzus89 10000000stake --keyring-backend test

babyd gentx validator 1000000stake --chain-id chain1-testnet --keyring-backend test

babyd collect-gentxs

babyd validate-genesis

babyd start

#Keyring backend
new: babyd keys add test-key

---------------------------------

override the existing name test-key [y/N]: y

- name: test-key
  type: local
  address: baby1d8cwmfpgupn9su3mpe0mg673zxnaj4t2930nu9
  pubkey: '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AlUEnvWnSp+xKtAAOvi4RcvbKpqM4Vq8tU1dztTB/Ur/"}'
  mnemonic: ""


**Important** write this mnemonic phrase in a safe place.
It is the only way to recover your account if you ever forget your password.

cattle oblige silver cinnamon debris rebel grief inner peasant delay junk fog flight ethics labor add satoshi deliver chest daughter caution enter there wheat

---------------------------------

recover: babyd keys add test-key --recover

delete: babyd keys delete test-key

list: babyd keys list

# Show keys
 * address: babyd keys show test-key -a
 * pubkey: babyd keys show test-key -p

# Query balance
babyd q bank balances baby1as68dq0l5ld5xnedlz2r33c0uywavh6w0sc49q --node tcp://127.0.0.1:26657

babyd q bank balances cosmos1as68dq0l5ld5xnedlz2r33c0uywavh6wuhs4pq --node tcp://0.0.0.0:50000
tcp 127.0.0.1:26657


