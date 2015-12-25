import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myTerminal = "urxvt"
myModMask = mod1Mask
myBorderWidth = 2

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/kexin/.xmobarrc"
    xmonad $ defaultConfig
        { terminal = myTerminal
        , modMask = myModMask
        , borderWidth = myBorderWidth
        , normalBorderColor  = "#cccccc"
        , focusedBorderColor = "#cd8b00"
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "gree" "" . shorten 50
            }
        }
