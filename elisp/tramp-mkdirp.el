(defun tramp-mkdirp (directory)
  "Create DIRECTORY and its parents recursively, working with both local and remote paths.
Works with TRAMP remote paths like /ssh:user@host:/path/to/dir"
  (interactive "DDirectory: ")
  (let ((dir (expand-file-name directory)))
    (unless (file-exists-p dir)
      (make-directory dir t))
    (message "Created directory: %s" dir)))

;; Integration with org-babel tangle
(defun org-babel-mkdirp-tangled-file ()
  "Make parent directories for all tangled files in the current buffer."
  (interactive)
  (org-babel-map-src-blocks nil
    (let* ((info (org-babel-get-src-block-info 'light))
           (tangle-file (cdr (assq :mkdirp yes :tangle (nth 2 info)))))
      (when (and tangle-file 
                (not (equal tangle-file "no"))
                (not (equal tangle-file "yes")))
        (let ((dir (file-name-directory (expand-file-name tangle-file))))
          (when dir (tramp-mkdirp dir)))))))

;; Add to org-babel tangle hook
(with-eval-after-load 'ob-tangle
  (add-hook 'org-babel-pre-tangle-hook 'org-babel-mkdirp-tangled-file))

(provide 'tramp-mkdirp)
