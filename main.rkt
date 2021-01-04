#lang racket

(require file-watchers)

(module+ main
  (require racket/cmdline
           racket/system
           raco/command-name)

  (define cmd (make-parameter "world"))
  (define path*
    (command-line
    #:program (short-program+command-name)
    #:once-each
    [("-c" "--command") c "command to run" (cmd c)]
    #:args target-path*
    (if (empty? target-path*)
        (list (current-directory))
        (map string->path target-path*))))

  (let loop ()
    (thread-wait (watch path* (lambda (lst) (system (cmd)))))
    (loop)))
