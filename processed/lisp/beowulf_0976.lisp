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
 :text "Et hélas, il défendit aussi d’une façon absolue qu’on me laissât aller
au théâtre entendre la Berma; l’artiste sublime, à laquelle Bergotte
trouvait du génie, m’aurait en me faisant connaître quelque chose qui
était peut-être aussi important et aussi beau, consolé de n’avoir pas
été à Florence et à Venise, de n’aller pas à Balbec. On devait se
contenter de m’envoyer chaque jour aux Champs-Élysées, sous la
surveillance d’une personne qui m’empêcherait de me fatiguer et qui
fut Françoise, entrée à notre service après la mort de ma tante
Léonie. Aller aux Champs-Élysées me fut insupportable. Si seulement
Bergotte les eût décrits dans un de ses livres, sans doute j’aurais
désiré de les connaître, comme toutes les choses dont on avait
commencé par mettre le «double» dans mon imagination. Elle les
réchauffait, les faisait vivre, leur donnait une personnalité, et je
voulais les retrouver dans la réalité; mais dans ce jardin public rien
ne se rattachait à mes rêves."
 :tokens 159
 :processed-at "2025-03-16T02:18:14.835491"
 :entities (list
  (entity :text "Berma;" :label "ORG" :start 94 :end 100) (entity :text "Bergotte" :label "ORG" :start 131 :end 139) (entity :text "Florence" :label "ORG" :start 286 :end 294) (entity :text "Venise," :label "ORG" :start 300 :end 307) (entity :text "Balbec." :label "ORG" :start 325 :end 332) (entity :text "Champs-Élysées," :label "ORG" :start 385 :end 400) (entity :text "Françoise," :label "ORG" :start 481 :end 491) (entity :text "Léonie." :label "ORG" :start 541 :end 548) (entity :text "Champs-Élysées" :label "ORG" :start 559 :end 573) (entity :text "Bergotte" :label "ORG" :start 609 :end 617) (entity :text "Elle" :label "ORG" :start 794 :end 798)
 )
 :sentences (list
  (sentence :text "Et hélas, il défendit aussi d’une façon absolue qu’on me laissât aller
au théâtre entendre la Berma; l’artiste sublime, à laquelle Bergotte
trouvait du génie, m’aurait en me faisant connaître quelque chose qui
était peut-être aussi important et aussi beau, consolé de n’avoir pas
été à Florence et à Venise, de n’aller pas à Balbec" :start 0 :end 331) (sentence :text "On devait se
contenter de m’envoyer chaque jour aux Champs-Élysées, sous la
surveillance d’une personne qui m’empêcherait de me fatiguer et qui
fut Françoise, entrée à notre service après la mort de ma tante
Léonie" :start 332 :end 547) (sentence :text "Aller aux Champs-Élysées me fut insupportable" :start 548 :end 594) (sentence :text "Si seulement
Bergotte les eût décrits dans un de ses livres, sans doute j’aurais
désiré de les connaître, comme toutes les choses dont on avait
commencé par mettre le «double» dans mon imagination" :start 595 :end 792) (sentence :text "Elle les
réchauffait, les faisait vivre, leur donnait une personnalité, et je
voulais les retrouver dans la réalité; mais dans ce jardin public rien
ne se rattachait à mes rêves" :start 793 :end 971)
 ))