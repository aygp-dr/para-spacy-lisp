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
 :text "Mais au moment même, je ne pouvais apprécier la valeur de ces plaisirs
nouveaux. Ils n’étaient pas donnés par la fillette que j’aimais, au
moi qui l’aimait, mais par l’autre, par celle avec qui je jouais, à
cet autre moi qui ne possédait ni le souvenir de la vraie Gilberte, ni
le cœur indisponible qui seul aurait pu savoir le prix d’un bonheur,
parce que seul il l’avait désiré. Même après être rentré à la maison
je ne les goûtais pas, car, chaque jour, la nécessité qui me faisait
espérer que le lendemain j’aurais la contemplation exacte, calme,
heureuse de Gilberte, qu’elle m’avouerait enfin son amour, en
m’expliquant pour quelles raisons elle avait dû me le cacher
jusqu’ici, cette même nécessité me forçait à tenir le passé pour rien,
à ne jamais regarder que devant moi, à considérer les petits avantages
qu’elle m’avait donnés non pas en eux-mêmes et comme s’ils se
suffisaient, mais comme des échelons nouveaux où poser le pied, qui
allaient me permettre de faire un pas de plus en avant et d’atteindre
enfin le bonheur que je n’avais pas encore rencontré."
 :tokens 185
 :processed-at "2025-03-16T02:18:14.856154"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Gilberte," :label "ORG" :start 265 :end 274) (entity :text "Même" :label "ORG" :start 381 :end 385) (entity :text "Gilberte," :label "ORG" :start 563 :end 572)
 )
 :sentences (list
  (sentence :text "Mais au moment même, je ne pouvais apprécier la valeur de ces plaisirs
nouveaux" :start 0 :end 79) (sentence :text "Ils n’étaient pas donnés par la fillette que j’aimais, au
moi qui l’aimait, mais par l’autre, par celle avec qui je jouais, à
cet autre moi qui ne possédait ni le souvenir de la vraie Gilberte, ni
le cœur indisponible qui seul aurait pu savoir le prix d’un bonheur,
parce que seul il l’avait désiré" :start 80 :end 379) (sentence :text "Même après être rentré à la maison
je ne les goûtais pas, car, chaque jour, la nécessité qui me faisait
espérer que le lendemain j’aurais la contemplation exacte, calme,
heureuse de Gilberte, qu’elle m’avouerait enfin son amour, en
m’expliquant pour quelles raisons elle avait dû me le cacher
jusqu’ici, cette même nécessité me forçait à tenir le passé pour rien,
à ne jamais regarder que devant moi, à considérer les petits avantages
qu’elle m’avait donnés non pas en eux-mêmes et comme s’ils se
suffisaient, mais comme des échelons nouveaux où poser le pied, qui
allaient me permettre de faire un pas de plus en avant et d’atteindre
enfin le bonheur que je n’avais pas encore rencontré" :start 380 :end 1068)
 ))