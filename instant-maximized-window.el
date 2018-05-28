;;; instant-maximized-window.el --- maximize a window instantly without removing other windows

;; Copyright (C) 2018 Taiju Aoki

;; Author: Taiju Aoki <aokitaiju0513@gmail.com>
;; Version: 0.1
;; URL: https://github.com/blue0513/instant-maximized-window

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Add the following to your Emacs init file:
;;
;; (require 'instant-maximized-window)
;;
;; You can maximized your focused window without removing other windows

;;; Code:

(defvar is-window-maximized nil)

;;;###autoload
(defun window-temp-maximize ()
  (interactive)
  (progn
    (if is-window-maximized
	(balance-windows)
      (maximize-window))
    (setq is-window-maximized
	  (not is-window-maximized))))

(provide 'instant-maximized-window)

;;; instant-maximized-window.el ends here
