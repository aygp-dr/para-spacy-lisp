;;; spacy-mode.el --- Process text with spaCy via websocket

;;; Commentary:
;; This mode connects to a spaCy-powered websocket server and sends
;; text for NLP analysis.

;;; Code:
(require 'websocket)
(require 'json)

(defgroup spacy nil
  "Process text with spaCy."
  :group 'text)

(defcustom spacy-server-url "ws://localhost:8765"
  "URL for the spaCy websocket server."
  :type 'string
  :group 'spacy)

(defvar spacy-websocket nil
  "Websocket connection to the server.")

(defvar spacy-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c C-a") 'spacy-analyze-paragraph)
    (define-key map (kbd "C-c C-r") 'spacy-analyze-region)
    map)
  "Keymap for spaCy mode.")

(defun spacy-connect ()
  "Connect to the spaCy websocket server."
  (interactive)
  (when (and spacy-websocket 
             (websocket-openp spacy-websocket))
    (websocket-close spacy-websocket))
  
  (setq spacy-websocket
        (websocket-open
         spacy-server-url
         :on-open (lambda (ws) 
                    (message "Connected to spaCy server"))
         :on-message (lambda (ws frame)
                       (let* ((json-object-type 'plist)
                              (json-array-type 'list)
                              (data (json-read-from-string 
                                     (websocket-frame-text frame))))
                         (when (equal (plist-get data :type) "analysis")
                           (spacy-display-analysis data))))
         :on-close (lambda (ws) 
                     (message "Disconnected from spaCy server"))
         :on-error (lambda (ws type err) 
                     (message "Error: %s" err))))
  (message "Attempting to connect to %s..." spacy-server-url))

(defun spacy-disconnect ()
  "Disconnect from the spaCy websocket server."
  (interactive)
  (when (and spacy-websocket 
             (websocket-openp spacy-websocket))
    (websocket-close spacy-websocket)
    (setq spacy-websocket nil)
    (message "Disconnected from spaCy server")))

(defun spacy-analyze-text (text)
  "Send TEXT to the spaCy server for analysis."
  (if (and spacy-websocket 
           (websocket-openp spacy-websocket))
      (progn
        (message "Sending text for analysis (%d chars)..." (length text))
        (websocket-send-text 
         spacy-websocket
         (json-encode `(("type" . "analyze")
                        ("text" . ,text)))))
    (message "Not connected to server. Use M-x spacy-connect first")))

(defun spacy-analyze-paragraph ()
  "Send the current paragraph to the spaCy server."
  (interactive)
  (let ((para (thing-at-point 'paragraph t)))
    (if para
        (spacy-analyze-text para)
      (message "No paragraph at point"))))

(defun spacy-analyze-region (start end)
  "Send the region from START to END to the spaCy server."
  (interactive "r")
  (let ((text (buffer-substring-no-properties start end)))
    (spacy-analyze-text text)))

(defun spacy-display-analysis (data)
  "Display the spaCy analysis DATA in a buffer."
  (let ((buf (get-buffer-create "*spaCy Analysis*")))
    (with-current-buffer buf
      (let ((inhibit-read-only t))
        (erase-buffer)
        (insert "# spaCy Analysis Results\n\n")
        (insert (format "Analyzed %d tokens\n\n" (plist-get data :tokens)))
        
        ;; Display entities
        (let ((entities (plist-get data :entities)))
          (insert (format "## Named Entities (%d found)\n\n" (length entities)))
          (if entities
              (dolist (ent entities)
                (insert (format "- %s (%s)\n" 
                                (plist-get ent :text)
                                (plist-get ent :label))))
            (insert "No entities found\n")))
        
        ;; Display sentences
        (let ((sentences (plist-get data :sentences)))
          (insert (format "\n## Sentences (%d found)\n\n" (length sentences)))
          (if sentences
              (dolist (sent sentences)
                (insert (format "- %s\n" (plist-get sent :text))))
            (insert "No sentences found\n")))
        
        (goto-char (point-min))
        (markdown-mode)))
    
    ;; Display the buffer
    (display-buffer buf)))

;;;###autoload
(define-minor-mode spacy-mode
  "Toggle spaCy mode.
Interactively with no argument, this command toggles the mode.
A positive prefix argument enables the mode, any other prefix
argument disables it. From Lisp, argument omitted or nil enables
the mode, `toggle' toggles the state.

When spaCy mode is enabled, you can send text to a spaCy server
for NLP analysis."
  :init-value nil
  :lighter " spaCy"
  :keymap spacy-mode-map
  :global nil
  :group 'spacy
  
  (if spacy-mode
      (spacy-connect)
    (spacy-disconnect)))

(provide 'spacy-mode)
;;; spacy-mode.el ends here
