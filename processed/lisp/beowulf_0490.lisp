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
 :text "À la grande surprise de Mme Verdurin, il ne lâcha jamais. Il allait
les rejoindre n’importe où, quelquefois dans les restaurants de
banlieue où on allait peu encore, car ce n’était pas la saison, plus
souvent au théâtre, que Mme Verdurin aimait beaucoup, et comme un
jour, chez elle, elle dit devant lui que pour les soirs de premières,
de galas, un coupe-file leur eût été fort utile, que cela les avait
beaucoup gênés de ne pas en avoir le jour de l’enterrement de
Gambetta, Swann qui ne parlait jamais de ses relations brillantes,
mais seulement de celles mal cotées qu’il eût jugé peu délicat de
cacher, et au nombre desquelles il avait pris dans le faubourg
Saint-Germain l’habitude de ranger les relations avec le monde
officiel, répondit:"
 :tokens 128
 :processed-at "2025-03-16T02:18:14.311107"
 :entities (list
  (entity :text "Verdurin," :label "ORG" :start 28 :end 37) (entity :text "Verdurin" :label "ORG" :start 229 :end 237) (entity :text "Gambetta," :label "ORG" :start 467 :end 476) (entity :text "Swann" :label "ORG" :start 477 :end 482) (entity :text "Saint-Germain" :label "ORG" :start 663 :end 676)
 )
 :sentences (list
  (sentence :text "À la grande surprise de Mme Verdurin, il ne lâcha jamais" :start 0 :end 56) (sentence :text "Il allait
les rejoindre n’importe où, quelquefois dans les restaurants de
banlieue où on allait peu encore, car ce n’était pas la saison, plus
souvent au théâtre, que Mme Verdurin aimait beaucoup, et comme un
jour, chez elle, elle dit devant lui que pour les soirs de premières,
de galas, un coupe-file leur eût été fort utile, que cela les avait
beaucoup gênés de ne pas en avoir le jour de l’enterrement de
Gambetta, Swann qui ne parlait jamais de ses relations brillantes,
mais seulement de celles mal cotées qu’il eût jugé peu délicat de
cacher, et au nombre desquelles il avait pris dans le faubourg
Saint-Germain l’habitude de ranger les relations avec le monde
officiel, répondit:" :start 57 :end 745)
 ))