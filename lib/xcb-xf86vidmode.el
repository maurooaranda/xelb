;;; -*- lexical-binding: t -*-
;; This file was generated from `xf86vidmode.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:xf86vidmode:-extension-xname "XFree86-VidModeExtension")
(defconst xcb:xf86vidmode:-extension-name "XF86VidMode")
(defconst xcb:xf86vidmode:-major-version 2)
(defconst xcb:xf86vidmode:-minor-version 2)

(xcb:deftypealias 'xcb:xf86vidmode:SYNCRANGE 'xcb:CARD32)

(xcb:deftypealias 'xcb:xf86vidmode:DOTCLOCK 'xcb:CARD32)

(defconst xcb:xf86vidmode:ModeFlag:Positive_HSync 1)
(defconst xcb:xf86vidmode:ModeFlag:Negative_HSync 2)
(defconst xcb:xf86vidmode:ModeFlag:Positive_VSync 4)
(defconst xcb:xf86vidmode:ModeFlag:Negative_VSync 8)
(defconst xcb:xf86vidmode:ModeFlag:Interlace 16)
(defconst xcb:xf86vidmode:ModeFlag:Composite_Sync 32)
(defconst xcb:xf86vidmode:ModeFlag:Positive_CSync 64)
(defconst xcb:xf86vidmode:ModeFlag:Negative_CSync 128)
(defconst xcb:xf86vidmode:ModeFlag:HSkew 256)
(defconst xcb:xf86vidmode:ModeFlag:Broadcast 512)
(defconst xcb:xf86vidmode:ModeFlag:Pixmux 1024)
(defconst xcb:xf86vidmode:ModeFlag:Double_Clock 2048)
(defconst xcb:xf86vidmode:ModeFlag:Half_Clock 4096)

(defconst xcb:xf86vidmode:ClockFlag:Programable 1)

(defconst xcb:xf86vidmode:Permission:Read 1)
(defconst xcb:xf86vidmode:Permission:Write 2)

(defclass xcb:xf86vidmode:ModeInfo
  (xcb:-struct)
  ((dotclock :initarg :dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD32)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~0 :initform 4 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)))

(defclass xcb:xf86vidmode:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)))
(defclass xcb:xf86vidmode:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD16)
   (minor-version :initarg :minor-version :type xcb:CARD16)))

(defclass xcb:xf86vidmode:GetModeLine
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetModeLine~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (dotclock :initarg :dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~2 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)
   (private :initarg :private :type xcb:-ignore)
   (private~ :initform
	     '(name private type xcb:CARD8 size
		    (xcb:-fieldref 'privsize))
	     :type xcb:-list)))

(defclass xcb:xf86vidmode:ModModeLine
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)
   (private :initarg :private :type xcb:-ignore)
   (private~ :initform
	     '(name private type xcb:CARD8 size
		    (xcb:-fieldref 'privsize))
	     :type xcb:-list)))

(defclass xcb:xf86vidmode:SwitchMode
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (zoom :initarg :zoom :type xcb:CARD16)))

(defclass xcb:xf86vidmode:GetMonitor
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetMonitor~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (vendor-length :initarg :vendor-length :type xcb:CARD8)
   (model-length :initarg :model-length :type xcb:CARD8)
   (num-hsync :initarg :num-hsync :type xcb:CARD8)
   (num-vsync :initarg :num-vsync :type xcb:CARD8)
   (pad~1 :initform 20 :type xcb:-pad)
   (hsync :initarg :hsync :type xcb:-ignore)
   (hsync~ :initform
	   '(name hsync type xcb:xf86vidmode:SYNCRANGE size
		  (xcb:-fieldref 'num-hsync))
	   :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (vsync :initarg :vsync :type xcb:-ignore)
   (vsync~ :initform
	   '(name vsync type xcb:xf86vidmode:SYNCRANGE size
		  (xcb:-fieldref 'num-vsync))
	   :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (vendor :initarg :vendor :type xcb:-ignore)
   (vendor~ :initform
	    '(name vendor type xcb:char size
		   (xcb:-fieldref 'vendor-length))
	    :type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (alignment-pad :initarg :alignment-pad :type xcb:-ignore)
   (alignment-pad~ :initform
		   '(name alignment-pad type xcb:void size
			  (-
			   (logand
			    (+
			     (xcb:-fieldref 'vendor-length)
			     3)
			    (lognot
			     (parse-expression
			      (node-subnode node))))
			   (xcb:-fieldref 'vendor-length)))
		   :type xcb:-list)
   (pad~5 :initform 4 :type xcb:-pad-align)
   (model :initarg :model :type xcb:-ignore)
   (model~ :initform
	   '(name model type xcb:char size
		  (xcb:-fieldref 'model-length))
	   :type xcb:-list)))

(defclass xcb:xf86vidmode:LockModeSwitch
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (lock :initarg :lock :type xcb:CARD16)))

(defclass xcb:xf86vidmode:GetAllModeLines
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetAllModeLines~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (modecount :initarg :modecount :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (modeinfo :initarg :modeinfo :type xcb:-ignore)
   (modeinfo~ :initform
	      '(name modeinfo type xcb:xf86vidmode:ModeInfo size
		     (xcb:-fieldref 'modecount))
	      :type xcb:-list)))

(defclass xcb:xf86vidmode:AddModeLine
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (dotclock :initarg :dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)
   (after-dotclock :initarg :after-dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (after-hdisplay :initarg :after-hdisplay :type xcb:CARD16)
   (after-hsyncstart :initarg :after-hsyncstart :type xcb:CARD16)
   (after-hsyncend :initarg :after-hsyncend :type xcb:CARD16)
   (after-htotal :initarg :after-htotal :type xcb:CARD16)
   (after-hskew :initarg :after-hskew :type xcb:CARD16)
   (after-vdisplay :initarg :after-vdisplay :type xcb:CARD16)
   (after-vsyncstart :initarg :after-vsyncstart :type xcb:CARD16)
   (after-vsyncend :initarg :after-vsyncend :type xcb:CARD16)
   (after-vtotal :initarg :after-vtotal :type xcb:CARD16)
   (pad~2 :initform 2 :type xcb:-pad)
   (after-flags :initarg :after-flags :type xcb:CARD32)
   (pad~3 :initform 12 :type xcb:-pad)
   (private :initarg :private :type xcb:-ignore)
   (private~ :initform
	     '(name private type xcb:CARD8 size
		    (xcb:-fieldref 'privsize))
	     :type xcb:-list)))

(defclass xcb:xf86vidmode:DeleteModeLine
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (dotclock :initarg :dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)
   (private :initarg :private :type xcb:-ignore)
   (private~ :initform
	     '(name private type xcb:CARD8 size
		    (xcb:-fieldref 'privsize))
	     :type xcb:-list)))

(defclass xcb:xf86vidmode:ValidateModeLine
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (dotclock :initarg :dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)
   (private :initarg :private :type xcb:-ignore)
   (private~ :initform
	     '(name private type xcb:CARD8 size
		    (xcb:-fieldref 'privsize))
	     :type xcb:-list)))
(defclass xcb:xf86vidmode:ValidateModeLine~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (status :initarg :status :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:xf86vidmode:SwitchToMode
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (dotclock :initarg :dotclock :type xcb:xf86vidmode:DOTCLOCK)
   (hdisplay :initarg :hdisplay :type xcb:CARD16)
   (hsyncstart :initarg :hsyncstart :type xcb:CARD16)
   (hsyncend :initarg :hsyncend :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vdisplay :initarg :vdisplay :type xcb:CARD16)
   (vsyncstart :initarg :vsyncstart :type xcb:CARD16)
   (vsyncend :initarg :vsyncend :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (privsize :initarg :privsize :type xcb:CARD32)
   (private :initarg :private :type xcb:-ignore)
   (private~ :initform
	     '(name private type xcb:CARD8 size
		    (xcb:-fieldref 'privsize))
	     :type xcb:-list)))

(defclass xcb:xf86vidmode:GetViewPort
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetViewPort~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (x :initarg :x :type xcb:CARD32)
   (y :initarg :y :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)))

(defclass xcb:xf86vidmode:SetViewPort
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (x :initarg :x :type xcb:CARD32)
   (y :initarg :y :type xcb:CARD32)))

(defclass xcb:xf86vidmode:GetDotClocks
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetDotClocks~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (clocks :initarg :clocks :type xcb:CARD32)
   (maxclocks :initarg :maxclocks :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (clock :initarg :clock :type xcb:-ignore)
   (clock~ :initform
	   '(name clock type xcb:CARD32 size
		  (*
		   (- 1
		      (logand
		       (xcb:-fieldref 'flags)
		       1))
		   (xcb:-fieldref 'clocks)))
	   :type xcb:-list)))

(defclass xcb:xf86vidmode:SetClientVersion
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (major :initarg :major :type xcb:CARD16)
   (minor :initarg :minor :type xcb:CARD16)))

(defclass xcb:xf86vidmode:SetGamma
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (red :initarg :red :type xcb:CARD32)
   (green :initarg :green :type xcb:CARD32)
   (blue :initarg :blue :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)))

(defclass xcb:xf86vidmode:GetGamma
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 26 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetGamma~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (red :initarg :red :type xcb:CARD32)
   (green :initarg :green :type xcb:CARD32)
   (blue :initarg :blue :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)))

(defclass xcb:xf86vidmode:GetGammaRamp
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (size :initarg :size :type xcb:CARD16)))
(defclass xcb:xf86vidmode:GetGammaRamp~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (size :initarg :size :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (red :initarg :red :type xcb:-ignore)
   (red~ :initform
	 '(name red type xcb:CARD16 size
		(logand
		 (+
		  (xcb:-fieldref 'size)
		  1)
		 (lognot
		  (parse-expression
		   (node-subnode node)))))
	 :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (green :initarg :green :type xcb:-ignore)
   (green~ :initform
	   '(name green type xcb:CARD16 size
		  (logand
		   (+
		    (xcb:-fieldref 'size)
		    1)
		   (lognot
		    (parse-expression
		     (node-subnode node)))))
	   :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (blue :initarg :blue :type xcb:-ignore)
   (blue~ :initform
	  '(name blue type xcb:CARD16 size
		 (logand
		  (+
		   (xcb:-fieldref 'size)
		   1)
		  (lognot
		   (parse-expression
		    (node-subnode node)))))
	  :type xcb:-list)))

(defclass xcb:xf86vidmode:SetGammaRamp
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (size :initarg :size :type xcb:CARD16)
   (red :initarg :red :type xcb:-ignore)
   (red~ :initform
	 '(name red type xcb:CARD16 size
		(logand
		 (+
		  (xcb:-fieldref 'size)
		  1)
		 (lognot
		  (parse-expression
		   (node-subnode node)))))
	 :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (green :initarg :green :type xcb:-ignore)
   (green~ :initform
	   '(name green type xcb:CARD16 size
		  (logand
		   (+
		    (xcb:-fieldref 'size)
		    1)
		   (lognot
		    (parse-expression
		     (node-subnode node)))))
	   :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (blue :initarg :blue :type xcb:-ignore)
   (blue~ :initform
	  '(name blue type xcb:CARD16 size
		 (logand
		  (+
		   (xcb:-fieldref 'size)
		   1)
		  (lognot
		   (parse-expression
		    (node-subnode node)))))
	  :type xcb:-list)))

(defclass xcb:xf86vidmode:GetGammaRampSize
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetGammaRampSize~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (size :initarg :size :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)))

(defclass xcb:xf86vidmode:GetPermissions
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xf86vidmode:GetPermissions~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (permissions :initarg :permissions :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:xf86vidmode:BadClock
  (xcb:-error)
  nil)

(defclass xcb:xf86vidmode:BadHTimings
  (xcb:-error)
  nil)

(defclass xcb:xf86vidmode:BadVTimings
  (xcb:-error)
  nil)

(defclass xcb:xf86vidmode:ModeUnsuitable
  (xcb:-error)
  nil)

(defclass xcb:xf86vidmode:ExtensionDisabled
  (xcb:-error)
  nil)

(defclass xcb:xf86vidmode:ClientNotLocal
  (xcb:-error)
  nil)

(defclass xcb:xf86vidmode:ZoomLocked
  (xcb:-error)
  nil)

(defconst xcb:xf86vidmode:error-number-class-alist
  '((0 . xcb:xf86vidmode:BadClock)
    (1 . xcb:xf86vidmode:BadHTimings)
    (2 . xcb:xf86vidmode:BadVTimings)
    (3 . xcb:xf86vidmode:ModeUnsuitable)
    (4 . xcb:xf86vidmode:ExtensionDisabled)
    (5 . xcb:xf86vidmode:ClientNotLocal)
    (6 . xcb:xf86vidmode:ZoomLocked))
  "(error-number . error-class) alist")



(provide 'xcb-xf86vidmode)
