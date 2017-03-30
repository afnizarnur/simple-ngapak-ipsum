ngapakIpsum = (len) ->
  words = ["Acan", "Atuh", "Bagen", "Bebeh", "Belok", "Blathak", "Bodol", "Cebrik", "Crumut", "Dingin", "Engka", "Enyong", "Inyong", "Ganu", "Gemiyen", "Gemrungsung", "Gigal", "Gili", "Iloken", "Jal", "Jengkok", "Jere", "Jikot", "Jlebud", "Jor", "temen", "Jungkat", "Kampil", "Kencot", "Kie", "Ko", "Lepek", "Mambrah-mambrah", "Mbok", "Men", "Merad", "Ndean", "Ngleges", "Ngode", "Nin", "Nyelang", "Pecicilan", "Pedhangan", "Pelo", "Pethet", "Pothet", "Pupur", "Puther", "Raba", "Rebyek", "Retung", "Risban", "Ruwag", "Selang", "Senthong", "Tetek"]

  wordCount = if len > words.length then words.length - 1 else len

  wrapper = []

  i = 0
  while i < wordCount
    word = Math.floor(Math.random() * words.length)
    wrapper[i] = words[word]
    i++

  return wrapper.join(' ')

document.getElementById('generate').addEventListener 'click', (->
  len = document.getElementById('length').value
  text = ngapakIpsum(len)
  document.getElementById('result').innerHTML = text
)
