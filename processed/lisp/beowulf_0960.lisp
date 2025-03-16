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
 :text "--Mais elle vous adore! Ah! je crois qu’il ne faudrait pas dire ça de
vous devant elle! On serait bien arrangé! A propos de tout, si on
voyait un tableau par exemple elle disait: «Ah! s’il était là, c’est
lui qui saurait vous dire si c’est authentique ou non. Il n’y a
personne comme lui pour ça.» Et à tout moment elle demandait:
«Qu’est-ce qu’il peut faire en ce moment? Si seulement il travaillait
un peu! C’est malheureux, un garçon si doué, qu’il soit si paresseux.
(Vous me pardonnez, n’est-ce pas?)» En ce moment je le vois, il pense
à nous, il se demande où nous sommes.» Elle a même eu un mot que j’ai
trouvé bien joli; M. Verdurin lui disait: «Mais comment pouvez-vous
voir ce qu’il fait en ce moment puisque vous êtes à huit cents lieues
de lui?» Alors Odette lui a répondu: «Rien n’est impossible à l’œil
d’une amie.» Non je vous jure, je ne vous dis pas cela pour vous
flatter, vous avez là une vraie amie comme on n’en a pas beaucoup. Je
vous dirai du reste que si vous ne le savez pas, vous êtes le seul.
Mme Verdurin me le disait encore le dernier jour (vous savez les
veilles de départ on cause mieux): «Je ne dis pas qu’Odette ne nous
aime pas, mais tout ce que nous lui disons ne pèserait pas lourd
auprès de ce que lui dirait M. Swann.» Oh! mon Dieu, voilà que le
conducteur m’arrête, en bavardant avec vous j’allais laisser passer la
rue Bonaparte... me rendriez-vous le service de me dire si mon
aigrette est droite?»"
 :tokens 270
 :processed-at "2025-03-16T02:18:14.810119"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "«Ah!" :label "ORG" :start 179 :end 183) (entity :text "(Vous" :label "ORG" :start 471 :end 476) (entity :text "Elle" :label "ORG" :start 580 :end 584) (entity :text "Verdurin" :label "ORG" :start 632 :end 640) (entity :text "«Mais" :label "ORG" :start 653 :end 658) (entity :text "Odette" :label "ORG" :start 764 :end 770) (entity :text "«Rien" :label "ORG" :start 786 :end 791) (entity :text "Verdurin" :label "ORG" :start 1024 :end 1032) (entity :text "Swann.»" :label "ORG" :start 1249 :end 1256) (entity :text "Dieu," :label "ORG" :start 1265 :end 1270) (entity :text "Bonaparte..." :label "ORG" :start 1359 :end 1371)
 )
 :sentences (list
  (sentence :text "--Mais elle vous adore! Ah! je crois qu’il ne faudrait pas dire ça de
vous devant elle! On serait bien arrangé! A propos de tout, si on
voyait un tableau par exemple elle disait: «Ah! s’il était là, c’est
lui qui saurait vous dire si c’est authentique ou non" :start 0 :end 258) (sentence :text "Il n’y a
personne comme lui pour ça" :start 259 :end 295) (sentence :text "» Et à tout moment elle demandait:
«Qu’est-ce qu’il peut faire en ce moment? Si seulement il travaillait
un peu! C’est malheureux, un garçon si doué, qu’il soit si paresseux" :start 296 :end 469) (sentence :text "(Vous me pardonnez, n’est-ce pas?)» En ce moment je le vois, il pense
à nous, il se demande où nous sommes" :start 470 :end 577) (sentence :text "» Elle a même eu un mot que j’ai
trouvé bien joli; M" :start 578 :end 630) (sentence :text "Verdurin lui disait: «Mais comment pouvez-vous
voir ce qu’il fait en ce moment puisque vous êtes à huit cents lieues
de lui?» Alors Odette lui a répondu: «Rien n’est impossible à l’œil
d’une amie" :start 631 :end 827) (sentence :text "» Non je vous jure, je ne vous dis pas cela pour vous
flatter, vous avez là une vraie amie comme on n’en a pas beaucoup" :start 828 :end 947) (sentence :text "Je
vous dirai du reste que si vous ne le savez pas, vous êtes le seul" :start 948 :end 1018) (sentence :text "Mme Verdurin me le disait encore le dernier jour (vous savez les
veilles de départ on cause mieux): «Je ne dis pas qu’Odette ne nous
aime pas, mais tout ce que nous lui disons ne pèserait pas lourd
auprès de ce que lui dirait M" :start 1019 :end 1247) (sentence :text "Swann" :start 1248 :end 1254) (sentence :text "» Oh! mon Dieu, voilà que le
conducteur m’arrête, en bavardant avec vous j’allais laisser passer la
rue Bonaparte" :start 1255 :end 1368) (sentence :text "me rendriez-vous le service de me dire si mon
aigrette est droite?»" :start 1371 :end 1439)
 ))