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
 :text "Tout d’un coup mon père nous arrêtait et demandait à ma mère: «Où
sommes-nous?» Epuisée par la marche, mais fière de lui, elle lui
avouait tendrement qu’elle n’en savait absolument rien. Il haussait
les épaules et riait. Alors, comme s’il l’avait sortie de la poche de
son veston avec sa clef, il nous montrait debout devant nous la petite
porte de derrière de notre jardin qui était venue avec le coin de la
rue du Saint-Esprit nous attendre au bout de ces chemins inconnus. Ma
mère lui disait avec admiration: «Tu es extraordinaire!» Et à partir
de cet instant, je n’avais plus un seul pas à faire, le sol marchait
pour moi dans ce jardin où depuis si longtemps mes actes avaient cessé
d’être accompagnés d’attention volontaire: l’Habitude venait de me
prendre dans ses bras et me portait jusqu’à mon lit comme un petit
enfant."
 :tokens 145
 :processed-at "2025-03-16T02:18:14.055809"
 :entities (list
  (entity :text "Tout" :label "ORG" :start 0 :end 4) (entity :text "Epuisée" :label "ORG" :start 80 :end 87) (entity :text "Saint-Esprit" :label "ORG" :start 416 :end 428)
 )
 :sentences (list
  (sentence :text "Tout d’un coup mon père nous arrêtait et demandait à ma mère: «Où
sommes-nous?» Epuisée par la marche, mais fière de lui, elle lui
avouait tendrement qu’elle n’en savait absolument rien" :start 0 :end 185) (sentence :text "Il haussait
les épaules et riait" :start 186 :end 219) (sentence :text "Alors, comme s’il l’avait sortie de la poche de
son veston avec sa clef, il nous montrait debout devant nous la petite
porte de derrière de notre jardin qui était venue avec le coin de la
rue du Saint-Esprit nous attendre au bout de ces chemins inconnus" :start 220 :end 474) (sentence :text "Ma
mère lui disait avec admiration: «Tu es extraordinaire!» Et à partir
de cet instant, je n’avais plus un seul pas à faire, le sol marchait
pour moi dans ce jardin où depuis si longtemps mes actes avaient cessé
d’être accompagnés d’attention volontaire: l’Habitude venait de me
prendre dans ses bras et me portait jusqu’à mon lit comme un petit
enfant" :start 475 :end 828)
 ))