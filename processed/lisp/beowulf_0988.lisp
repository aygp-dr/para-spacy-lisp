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
 :text "Une autre fois, toujours préoccupé du désir d’entendre la Berma dans
une pièce classique, je lui avais demandé si elle ne possédait pas une
brochure où Bergotte parlait de Racine, et qui ne se trouvait plus
dans le commerce. Elle m’avait prié de lui en rappeler le titre exact,
et le soir je lui avais adressé un petit télégramme en écrivant sur
l’enveloppe ce nom de Gilberte Swann que j’avais tant de fois tracé
sur mes cahiers. Le lendemain elle m’apporta dans un paquet noué de
faveurs mauves et scellé de cire blanche, la brochure qu’elle avait
fait chercher. «Vous voyez que c’est bien ce que vous m’avez demandé,
me dit-elle, tirant de son manchon le télégramme que je lui avais
envoyé.» Mais dans l’adresse de ce pneumatique,--qui, hier encore
n’était rien, n’était qu’un petit bleu que j’avais écrit, et qui
depuis qu’un télégraphiste l’avait remis au concierge de Gilberte et
qu’un domestique l’avait porté jusqu’à sa chambre, était devenu cette
chose sans prix, un des petits bleus qu’elle avait reçus ce
jour-là,--j’eus peine à reconnaître les lignes vaines et solitaires de
mon écriture sous les cercles imprimés qu’y avait apposés la poste,
sous les inscriptions qu’y avait ajoutées au crayon un des facteurs,
signes de réalisation effective, cachets du monde extérieur, violettes
ceintures symboliques de la vie, qui pour la première fois venaient
épouser, maintenir, relever, réjouir mon rêve."
 :tokens 230
 :processed-at "2025-03-16T02:18:14.854046"
 :entities (list
  (entity :text "Berma" :label "ORG" :start 58 :end 63) (entity :text "Bergotte" :label "ORG" :start 152 :end 160) (entity :text "Racine," :label "ORG" :start 172 :end 179) (entity :text "Elle" :label "ORG" :start 225 :end 229) (entity :text "Gilberte" :label "ORG" :start 368 :end 376) (entity :text "Swann" :label "ORG" :start 377 :end 382) (entity :text "«Vous" :label "ORG" :start 565 :end 570) (entity :text "Mais" :label "ORG" :start 695 :end 699) (entity :text "Gilberte" :label "ORG" :start 874 :end 882)
 )
 :sentences (list
  (sentence :text "Une autre fois, toujours préoccupé du désir d’entendre la Berma dans
une pièce classique, je lui avais demandé si elle ne possédait pas une
brochure où Bergotte parlait de Racine, et qui ne se trouvait plus
dans le commerce" :start 0 :end 223) (sentence :text "Elle m’avait prié de lui en rappeler le titre exact,
et le soir je lui avais adressé un petit télégramme en écrivant sur
l’enveloppe ce nom de Gilberte Swann que j’avais tant de fois tracé
sur mes cahiers" :start 224 :end 429) (sentence :text "Le lendemain elle m’apporta dans un paquet noué de
faveurs mauves et scellé de cire blanche, la brochure qu’elle avait
fait chercher" :start 430 :end 563) (sentence :text "«Vous voyez que c’est bien ce que vous m’avez demandé,
me dit-elle, tirant de son manchon le télégramme que je lui avais
envoyé" :start 564 :end 692) (sentence :text "» Mais dans l’adresse de ce pneumatique,--qui, hier encore
n’était rien, n’était qu’un petit bleu que j’avais écrit, et qui
depuis qu’un télégraphiste l’avait remis au concierge de Gilberte et
qu’un domestique l’avait porté jusqu’à sa chambre, était devenu cette
chose sans prix, un des petits bleus qu’elle avait reçus ce
jour-là,--j’eus peine à reconnaître les lignes vaines et solitaires de
mon écriture sous les cercles imprimés qu’y avait apposés la poste,
sous les inscriptions qu’y avait ajoutées au crayon un des facteurs,
signes de réalisation effective, cachets du monde extérieur, violettes
ceintures symboliques de la vie, qui pour la première fois venaient
épouser, maintenir, relever, réjouir mon rêve" :start 693 :end 1408)
 ))