# Description:
#   Hubot will send a "mano" message
#   http://pensador.uol.com.br/frases_de_mano/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot enois [you] - Hubot send "mano" message
#
# Author:
#   github.com/vfonsecapv
#

response = [
  "Tamo junto parça",
  "A confiança é uma mulher ingrata q te beija e te abraça te rouba e te mata.",
  "Quando a caminhada fica dura, só os duros continuam caminhando.",
  "Como fazer duas vezes melhor se você está pelo menos cem vezes atrasado?",
  "As vezes o caminho da cura pode ser a doença, e o caminho do perdão as vezes é a sentença.",
  "O bagulho é loko!",
  "Cola na minha peixe",
  "Cê tá loko cachoeira!",
  "Nóis capota, mas não cai",
  "É nóis voando no albatroz!"
]

module.exports = (robot) ->
  robot.respond /enois/i, (msg) ->
    msg.send msg.random response
    
  enois = new RegExp "enois #{robot.name}", "i"
  robot.hear enois, (msg) ->
    msg.send msg.random response
