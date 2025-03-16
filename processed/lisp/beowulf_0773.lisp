;; spaCy-lisp: 1.0.0
;; info:
;;   title: Text Analysis Schema
;;   description: Schema for NLP analysis of paragraphs using spaCy
;;   version: 1.0.0
;; components:
;;   schemas:
;;     TextAnalysis:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Original text content
;;         tokens:
;;           type: integer
;;           description: Number of tokens in the text
;;         processed-at:
;;           type: string
;;           format: date-time
;;           description: Timestamp of processing
;;         entities:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Entity'
;;           description: Named entities found in text
;;         sentences:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Sentence'
;;           description: Sentences in the text
;;     Entity:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the entity
;;         label:
;;           type: string
;;           description: Entity type label
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position
;;     Sentence:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the sentence
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position

(text-analysis
 :text "Alors Swann la détestait. «Mais aussi, je suis trop bête, se
disait-il, je paie avec mon argent le plaisir des autres. Elle fera
tout de même bien de faire attention et de ne pas trop tirer sur la
corde, car je pourrais bien ne plus rien donner du tout. En tous cas,
renonçons provisoirement aux gentillesses supplémentaires! Penser que
pas plus tard qu’hier, comme elle disait avoir envie d’assister à la
saison de Bayreuth, j’ai eu la bêtise de lui proposer de louer un des
jolis châteaux du roi de Bavière pour nous deux dans les environs. Et
d’ailleurs elle n’a pas paru plus ravie que cela, elle n’a encore dit
ni oui ni non; espérons qu’elle refusera, grand Dieu! Entendre du
Wagner pendant quinze jours avec elle qui s’en soucie comme un poisson
d’une pomme, ce serait gai!» Et sa haine, tout comme son amour, ayant
besoin de se manifester et d’agir, il se plaisait à pousser de plus en
plus loin ses imaginations mauvaises, parce que, grâce aux perfidies
qu’il prêtait à Odette, il la détestait davantage et pourrait si--ce
qu’il cherchait à se figurer--elles se trouvaient être vraies, avoir
une occasion de la punir et d’assouvir sur elle sa rage grandissante.
Il alla ainsi jusqu’à supposer qu’il allait recevoir une lettre d’elle
où elle lui demanderait de l’argent pour louer ce château près de
Bayreuth, mais en le prévenant qu’il n’y pourrait pas venir, parce
qu’elle avait promis à Forcheville et aux Verdurin de les inviter. Ah!
comme il eût aimé qu’elle pût avoir cette audace. Quelle joie il
aurait à refuser, à rédiger la réponse vengeresse dont il se
complaisait à choisir, à énoncer tout haut les termes, comme s’il
avait reçu la lettre en réalité."
 :tokens 290
 :processed-at "2025-03-16T02:18:14.600889"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 6 :end 11) (entity :text "«Mais" :label "ORG" :start 26 :end 31) (entity :text "Elle" :label "ORG" :start 119 :end 123) (entity :text "Penser" :label "ORG" :start 326 :end 332) (entity :text "Bayreuth," :label "ORG" :start 416 :end 425) (entity :text "Bavière" :label "ORG" :start 501 :end 508) (entity :text "Dieu!" :label "ORG" :start 664 :end 669) (entity :text "Entendre" :label "ORG" :start 670 :end 678) (entity :text "Wagner" :label "ORG" :start 682 :end 688) (entity :text "Odette," :label "ORG" :start 979 :end 986) (entity :text "Bayreuth," :label "ORG" :start 1308 :end 1317) (entity :text "Forcheville" :label "ORG" :start 1398 :end 1409) (entity :text "Verdurin" :label "ORG" :start 1417 :end 1425) (entity :text "Quelle" :label "ORG" :start 1496 :end 1502)
 )
 :sentences (list
  (sentence :text "Alors Swann la détestait" :start 0 :end 24) (sentence :text "«Mais aussi, je suis trop bête, se
disait-il, je paie avec mon argent le plaisir des autres" :start 25 :end 117) (sentence :text "Elle fera
tout de même bien de faire attention et de ne pas trop tirer sur la
corde, car je pourrais bien ne plus rien donner du tout" :start 118 :end 252) (sentence :text "En tous cas,
renonçons provisoirement aux gentillesses supplémentaires! Penser que
pas plus tard qu’hier, comme elle disait avoir envie d’assister à la
saison de Bayreuth, j’ai eu la bêtise de lui proposer de louer un des
jolis châteaux du roi de Bavière pour nous deux dans les environs" :start 253 :end 541) (sentence :text "Et
d’ailleurs elle n’a pas paru plus ravie que cela, elle n’a encore dit
ni oui ni non; espérons qu’elle refusera, grand Dieu! Entendre du
Wagner pendant quinze jours avec elle qui s’en soucie comme un poisson
d’une pomme, ce serait gai!» Et sa haine, tout comme son amour, ayant
besoin de se manifester et d’agir, il se plaisait à pousser de plus en
plus loin ses imaginations mauvaises, parce que, grâce aux perfidies
qu’il prêtait à Odette, il la détestait davantage et pourrait si--ce
qu’il cherchait à se figurer--elles se trouvaient être vraies, avoir
une occasion de la punir et d’assouvir sur elle sa rage grandissante" :start 542 :end 1169) (sentence :text "Il alla ainsi jusqu’à supposer qu’il allait recevoir une lettre d’elle
où elle lui demanderait de l’argent pour louer ce château près de
Bayreuth, mais en le prévenant qu’il n’y pourrait pas venir, parce
qu’elle avait promis à Forcheville et aux Verdurin de les inviter" :start 1170 :end 1440) (sentence :text "Ah!
comme il eût aimé qu’elle pût avoir cette audace" :start 1441 :end 1494) (sentence :text "Quelle joie il
aurait à refuser, à rédiger la réponse vengeresse dont il se
complaisait à choisir, à énoncer tout haut les termes, comme s’il
avait reçu la lettre en réalité" :start 1495 :end 1669)
 ))