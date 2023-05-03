import "./App.css"
import { useEffect } from "react"
import Web3 from "web3"

function App() {

  useEffect(() => {
    const loadProvider = async () => {
      // with metamask we have an access to window.ehtereum to window.web3
      // metamask injects a global API to websites
      // this API allows websites to request users, accounts, read data to blockchain
      // sign messages and transactions

      console.log(window.web3)
      console.log(window.ehtereum)
    }

    loadProvider()
  }, [])
  
  return (  
    <>
      <div className="faucet-wrapper">
        <div className="faucet">
          <div className="balance-view is-size-2">
            Current Balance : <strong>10</strong> ETH
          </div>
          <button
           className="btn mr-2"
           onClick={async () => {
            const accounts = await window.ethereum.request({ method: "eth_requestAccounts"});
            console.log(accounts)
           }}
            
          >
            Enable Ehtereum
          </button>
          <button className="btn mr-2">Donate</button>
          <button className="btn">Withdraw</button>
        </div>
      </div>
    </>
  )
}

export default App
