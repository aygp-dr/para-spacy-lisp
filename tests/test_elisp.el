;;; test_elisp.el --- Tests for spacy-mode.el

;;; Commentary:
;; Tests for spacy-mode using ERT (Emacs Regression Testing)

;;; Code:
(require 'ert)
(require 'spacy-mode)

(ert-deftest spacy-test-mode-enabled ()
  "Test that spacy-mode can be enabled."
  (with-temp-buffer
    (spacy-mode 1)
    (should spacy-mode)
    (should (equal " spaCy" (format-mode-line minor-mode-alist)))))

(ert-deftest spacy-test-mode-disabled ()
  "Test that spacy-mode can be disabled."
  (with-temp-buffer
    (spacy-mode 1)
    (spacy-mode -1)
    (should-not spacy-mode)))

(ert-deftest spacy-test-keymap ()
  "Test that the keymap has the expected bindings."
  (should (eq 'spacy-analyze-paragraph
              (lookup-key spacy-mode-map (kbd "C-c C-a"))))
  (should (eq 'spacy-analyze-region
              (lookup-key spacy-mode-map (kbd "C-c C-r")))))

(ert-deftest spacy-test-analyze-text ()
  "Test the analyze-text function with mock websocket."
  (let ((spacy-websocket t)
        (sent-text nil))
    ;; Mock the websocket functions for testing
    (cl-letf (((symbol-function 'websocket-openp) (lambda (_) t))
              ((symbol-function 'websocket-send-text) 
               (lambda (ws text) (setq sent-text text))))
      
      ;; Call the function
      (spacy-analyze-text "Test text")
      
      ;; Verify the text was "sent"
      (should sent-text)
      (should (string-match-p "Test text" sent-text))
      (should (string-match-p "analyze" sent-text)))))

(ert-deftest spacy-test-analyze-paragraph ()
  "Test the analyze-paragraph function."
  (let ((spacy-websocket t)
        (sent-text nil))
    ;; Mock the websocket and thing-at-point functions
    (cl-letf (((symbol-function 'websocket-openp) (lambda (_) t))
              ((symbol-function 'websocket-send-text) 
               (lambda (ws text) (setq sent-text text)))
              ((symbol-function 'thing-at-point)
               (lambda (thing &optional no-props) "This is a test paragraph.")))
      
      ;; Call the function
      (spacy-analyze-paragraph)
      
      ;; Verify the paragraph was "sent"
      (should sent-text)
      (should (string-match-p "This is a test paragraph" sent-text)))))

(provide 'test_elisp)
;;; test_elisp.el ends here