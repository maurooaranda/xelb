;;; -*- lexical-binding: t -*-
;; This file was generated from `xselinux.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:xselinux:-extension-xname "SELinux")
(defconst xcb:xselinux:-extension-name "SELinux")
(defconst xcb:xselinux:-major-version 1)
(defconst xcb:xselinux:-minor-version 0)

(require 'xcb-xproto)

(defclass xcb:xselinux:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (client-major :initarg :client-major :type xcb:CARD8)
   (client-minor :initarg :client-minor :type xcb:CARD8)))
(defclass xcb:xselinux:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (server-major :initarg :server-major :type xcb:CARD16)
   (server-minor :initarg :server-minor :type xcb:CARD16)))

(defclass xcb:xselinux:SetDeviceCreateContext
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetDeviceCreateContext
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)))
(defclass xcb:xselinux:GetDeviceCreateContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:SetDeviceContext
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (device :initarg :device :type xcb:CARD32)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetDeviceContext
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (device :initarg :device :type xcb:CARD32)))
(defclass xcb:xselinux:GetDeviceContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:SetWindowCreateContext
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetWindowCreateContext
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)))
(defclass xcb:xselinux:GetWindowCreateContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetWindowContext
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xselinux:GetWindowContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:ListItem
  (xcb:-struct)
  ((name :initarg :name :type xcb:ATOM)
   (object-context-len :initarg :object-context-len :type xcb:CARD32)
   (data-context-len :initarg :data-context-len :type xcb:CARD32)
   (object-context :initarg :object-context :type xcb:-ignore)
   (object-context~ :initform
		    '(name object-context type xcb:char size
			   (xcb:-fieldref 'object-context-len))
		    :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (data-context :initarg :data-context :type xcb:-ignore)
   (data-context~ :initform
		  '(name data-context type xcb:char size
			 (xcb:-fieldref 'data-context-len))
		  :type xcb:-list)))

(defclass xcb:xselinux:SetPropertyCreateContext
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetPropertyCreateContext
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)))
(defclass xcb:xselinux:GetPropertyCreateContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:SetPropertyUseContext
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetPropertyUseContext
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)))
(defclass xcb:xselinux:GetPropertyUseContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetPropertyContext
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (property :initarg :property :type xcb:ATOM)))
(defclass xcb:xselinux:GetPropertyContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetPropertyDataContext
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (property :initarg :property :type xcb:ATOM)))
(defclass xcb:xselinux:GetPropertyDataContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:ListProperties
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xselinux:ListProperties~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (properties-len :initarg :properties-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (properties :initarg :properties :type xcb:-ignore)
   (properties~ :initform
		'(name properties type xcb:xselinux:ListItem size
		       (xcb:-fieldref 'properties-len))
		:type xcb:-list)))

(defclass xcb:xselinux:SetSelectionCreateContext
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetSelectionCreateContext
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)))
(defclass xcb:xselinux:GetSelectionCreateContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:SetSelectionUseContext
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (context-len :initarg :context-len :type xcb:CARD32)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetSelectionUseContext
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)))
(defclass xcb:xselinux:GetSelectionUseContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetSelectionContext
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (selection :initarg :selection :type xcb:ATOM)))
(defclass xcb:xselinux:GetSelectionContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:GetSelectionDataContext
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (selection :initarg :selection :type xcb:ATOM)))
(defclass xcb:xselinux:GetSelectionDataContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))

(defclass xcb:xselinux:ListSelections
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)))
(defclass xcb:xselinux:ListSelections~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (selections-len :initarg :selections-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (selections :initarg :selections :type xcb:-ignore)
   (selections~ :initform
		'(name selections type xcb:xselinux:ListItem size
		       (xcb:-fieldref 'selections-len))
		:type xcb:-list)))

(defclass xcb:xselinux:GetClientContext
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (resource :initarg :resource :type xcb:CARD32)))
(defclass xcb:xselinux:GetClientContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-len :initarg :context-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (context :initarg :context :type xcb:-ignore)
   (context~ :initform
	     '(name context type xcb:char size
		    (xcb:-fieldref 'context-len))
	     :type xcb:-list)))



(provide 'xcb-xselinux)
