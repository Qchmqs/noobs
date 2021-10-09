fetchData = async () => {
    // call the server
    const response = await fetch('http://localhost:3000/hello')
    // extract the message from the response
    const { message } = await response.json()
    // grab the DOM element
    const helloElem = document.getElementById('hello')
    // put the response in the elem
    helloElem.innerHTML = message
}