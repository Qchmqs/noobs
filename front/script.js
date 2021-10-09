fetchData = async () => {
  try {
    const { data } = await fetch('localhost:3000/hello')
    const helloElem = document.getElementById('hello')
    helloElem.innerHTML = data
  } catch {
    console.log('errors')
  }
}