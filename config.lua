Config = {
    --add your language
    DevMode             = false, -- leave false
    useAdminCommand     = true,
    commandAdmin        = "adminMenu",
    defaultlang         = "en_lang",
    Key                 = 0x3C3DD371, --PGDOWN open menu
    CanOpenMenuWhenDead = true,       -- if true any staff can open menu when dead, !WARNING! staff can abuse this to get revived
    useQWreports        = false,       -- disable this if you are not using qw reports
    VorpStable          = false,       -- if you are using vorp_stable then set to true if syn stable set false  when giving worses or wagons it will go directly to databse

    -- heal
    Heal                = {
        Players = function()
            --TriggerServerEvent("outsider_needs:Heal") -- trigger to server and from there heal player
            --TriggerEvent("vorpmetabolism:changeValue", "Thirst", 1000)
            --TriggerEvent("vorpmetabolism:changeValue", "Hunger", 1000) 
            TriggerEvent('fred_metabolism:consume', 100, 100, 100, 100, 0.0, 0.0, 0.0, 0.0, 0.0) -- fred metabolism
        end
    },
    ---------------------- NO CLIP ----------------------

    Controls            = {

        goUp = 0xF84FA74F,        -- Q
        goDown = 0x07CE1E61,      -- Z
        turnLeft = 0x7065027D,    -- A
        turnRight = 0xB4E465B4,   -- D
        goForward = 0x8FD015D8,   -- W
        goBackward = 0x8CF90A9D,  -- S I DONT FUCKING KNOW WHY S DONT WORK
        changeSpeed = 0x8FFC75D6, -- L-Shift
        camMode = 0x24978A28,     -- H
        Cancel = 0x4AF4D473

    },
    Speeds              = {
        -- You can add or edit existing speeds with relative label
        { label = 'Very Slow', speed = 0 },
        { label = 'Slow',      speed = 0.5 },
        { label = 'Normal',    speed = 2 },
        { label = 'Fast',      speed = 10 },
        { label = 'Very Fast', speed = 15 },
        { label = 'Max',       speed = 29 },
    },
    Offsets             = {
        y = 0.2,                -- Forward and backward movement speed multiplier
        z = 0.1,                -- Upward and downward movement speed multiplier
        h = 1,                  -- Rotation movement speed multiplier
    },
    FrozenPosition      = true, -- frozen on open menu vorp.staff.OpenMenu
    AllowedGroups       = {
        { group = { "admin" }, command = "vorp.staff.OpenMenu" },
        { group = { "admin" }, command = "vorp.staff.Admin" }, -- groups you want for these permissions
        { group = { "admin" }, command = "vorp.staff.Boosters" },
        { group = { "admin" }, command = "vorp.staff.Database" },
        { group = { "admin" }, command = "vorp.staff.Teleports" },
        { group = { "admin" }, command = "vorp.staff.Devtools" },
        { group = { "admin" }, command = "vorp.staff.PlayersList" },
        { group = { "admin" }, command = "vorp.staff.AdminActions" },
        { group = { "admin" }, command = "vorp.staff.OfflineActions" },
        { group = { "admin" }, command = "vorp.staff.PlayersListSubmenu" },
        { group = { "admin" }, command = "vorp.staff.OpenSimpleActions" },
        { group = { "admin" }, command = "vorp.staff.Spectate" },
        { group = { "admin" }, command = "vorp.staff.Frezee" },
        { group = { "admin" }, command = "vorp.staff.Revive" },
        { group = { "admin" }, command = "vorp.staff.Heal" },
        { group = { "admin" }, command = "vorp.staff.GoTo" },
        { group = { "admin" }, command = "vorp.staff.Bring" },
        { group = { "admin" }, command = "vorp.staff.Warn" },
        { group = { "admin" }, command = "vorp.staff.UnWarn" },
        { group = { "admin" }, command = "vorp.staff.OpenAdvancedActions" },
        { group = { "admin" }, command = "vorp.staff.Kick" },
        { group = { "admin" }, command = "vorp.staff.Ban" },
        { group = { "admin" }, command = "vorp.staff.Unban" },
        { group = { "admin" }, command = "vorp.staff.Respawn" },
        { group = { "admin" }, command = "vorp.staff.Whitelist" },
        { group = { "admin" }, command = "vorp.staff.Unwhitelist" },
        { group = { "admin" }, command = "vorp.staff.Setjob" },
        { group = { "admin" }, command = "vorp.staff.Setgroup" },
        { group = { "admin" }, command = "vorp.staff.DeleteHorse" },
        { group = { "admin" }, command = "vorp.staff.DeleteWagon" },
        { group = { "admin" }, command = "vorp.staff.DeleteWagonsRadius" },
        { group = { "admin" }, command = "vorp.staff.GetCoords" },
        { group = { "admin" }, command = "vorp.staff.Announce" },
        { group = { "admin" }, command = "vorp.staff.Godmode" },
        { group = { "admin" }, command = "vorp.staff.InfiniteAmmo" },
        { group = { "admin" }, command = "vorp.staff.Noclip" },
        { group = { "admin" }, command = "vorp.staff.Golden" },
        { group = { "admin" }, command = "vorp.staff.SpawnWagon" },
        { group = { "admin" }, command = "vorp.staff.SpawHorse" },
        { group = { "admin" }, command = "vorp.staff.SelfHeal" },
        { group = { "admin" }, command = "vorp.staff.SelfRevive" },
        { group = { "admin" }, command = "vorp.staff.OpenDatabase" },
        { group = { "admin" }, command = "vorp.staff.OpenGiveMenu" },
        { group = { "admin" }, command = "vorp.staff.ShowInvGive" },
        { group = { "admin" }, command = "vorp.staff.Giveitems" },
        { group = { "admin" }, command = "vorp.staff.GiveWeapons" },
        { group = { "admin" }, command = "vorp.staff.GiveCurrency" },
        { group = { "admin" }, command = "vorp.staff.GiveHorse" },
        { group = { "admin" }, command = "vorp.staff.GiveWagons" },
        { group = { "admin" }, command = "vorp.staff.OpenRemoveMenu" },
        { group = { "admin" }, command = "vorp.staff.ShowInvRemove" },
        { group = { "admin" }, command = "vorp.staff.RemoveAllMoney " },
        { group = { "admin" }, command = "vorp.staff.RemoveAllGold" },
        { group = { "admin" }, command = "vorp.staff.RemoveAllItems" },
        { group = { "admin" }, command = "vorp.staff.RemoveAllWeapons" },
        { group = { "admin" }, command = "vorp.staff.WayPoint" },
        { group = { "admin" }, command = "vorp.staff.TpCoords" },
        { group = { "admin" }, command = "vorp.staff.AutoTpm" },
        { group = { "admin" }, command = "vorp.staff.TpPlayer" },
        { group = { "admin" }, command = "vorp.staff.BringPlayer" },
        { group = { "admin" }, command = "vorp.staff.ViewReports" },
        { group = { "admin" }, command = "vorp.staff.Invisibility" },
        { group = { "admin" }, command = "vorp.staff.SetPlayerOnFire" },
        { group = { "admin" }, command = "vorp.staff.LightningStrikePlayer" },
        { group = { "admin" }, command = "vorp.staff.TPToHeaven" },
        { group = { "admin" }, command = "vorp.staff.InvisPlayer" },
        { group = { "admin" }, command = "vorp.staff.KillPlayer" },
        { group = { "admin" }, command = "vorp.staff.RagdollPlayer" },
        { group = { "admin" }, command = "vorp.staff.DrainPlayerStam" },
        { group = { "admin" }, command = "vorp.staff.CuffPlayer" },
        { group = { "admin" }, command = "vorp.staff.PlayerTempHigh" },
        { group = { "admin" }, command = "vorp.staff.OpenTrollActions" },
    },
    -----------------------------------------------------
    -- Users scoreboard
    -- only one can be added
    -- choose what info should show to all users
    showUsersInfo       = "showAll", -- showAll --showJob --showGroup -- showID
    UseUsersMenu        = true,      --leave false if you dont need users menu
    EnablePlayerlist    = true,      -- enable scroeboard
    --------------------------------------------------------
    -- WEBHOOKS/LOGS
    AlertCooldown       = 60,                                  -- cooldown for request staff to request again (seconds)
    webhookColor        = 16711680,                            --EMBED COLOR RED
    name                = "Little Creek Surveillance", --NAME OF EMBED
    logo                = "https://cdn.discordapp.com/attachments/1040333297177333792/1102322446150934579/30x30.png", --HEAD LOGO
    footerLogo          = "https://cdn.discordapp.com/attachments/1040333297177333792/1102322446150934579/30x30.png", --FOOTER LOGO
    Avatar              = "https://cdn.discordapp.com/attachments/1040333297177333792/1102322446150934579/30x30.png", -- AVATAR LOGO
    ReportLogs          = {
        Reports = "https://discord.com/api/webhooks/1103457405343367268/TyB4559Ua9gpIEdmY1ZWJdE_NBZkaVWqj05UqSp3UJVubYL2Jcp68_VBf_Ew1WyAe5di", -- for reports
        RequestStaff = "https://discord.com/api/webhooks/1103457903794454638/LNy5dvL39pQyotuxSqTGbfkIXlbWXOxnIyiTRouUYrzTKodJoY9_pZQFZxA3G67_Qp5H", -- for request staff
        BugReport = "https://discord.com/api/webhooks/1103458069213622333/u7pFeBdubpDqUlIo5ich32l5CEh-F9fxoSVoydJGyhn8UNwnI10vXSXhC5-K5isEVhl4", -- for bug report
        RulesBroken = "https://discord.com/api/webhooks/1103458173622431785/WfutJl-VDtcoI-mxV0v9cGNoww6WL1Ogb2DyCANwAd7h4UPYFeDxNQ54uwxt6_Uo7VP0", -- for rules broken report
        Cheating = "https://discord.com/api/webhooks/1103458533648896051/DnBaRRwY47YAdSw9lANCPDmV53dSEqwGy8iM_kAhYMvrT7JFvk-9aMwL72e3-YTDUU3k" -- for cheating report
    },
    BoosterLogs         = {
        NoClip = "https://discord.com/api/webhooks/1103458736518987837/omXLS7ldXKyPB79wmAr4_TqW-otx6IuwjBZxq8kj2FEZrhk6cqBYAzIEV15Q9xkD4ZKd",--
        InfiniteAmmo = "https://discord.com/api/webhooks/1103458878198394890/HZ4kOG4SA0qdAXgDJwCaddAA721C9TLHnw3HEY4uYRYQyPWZvPUCnGNv2jVYAUxAmUum",
        GoldenCores = "https://discord.com/api/webhooks/1103459004841218138/FnHB8jPWmh6eFKMlhvJb-0nF4nU5PqH09YIvupQi_sHAgkw_tes1GjoHCk-XwDzVrvV3",
        GodMode = "https://discord.com/api/webhooks/1103459139738419260/ydo5_NJL_4CfXq8BOpCL38E-CcwOWizwk1MzBo1_5IF1uobxwzzvrnZvh2nJoTixtmR4",
        SelfHeal = "https://discord.com/api/webhooks/1103459234345132052/ekpGDDP7fjDumSX7PEGA-aBGi_m_d2QAFcqPUSp0LE4wtOvd8qztqr4d2zaByn9-LQ0A",
        SelfRevive = "https://discord.com/api/webhooks/1103459328662437969/1n_8gTX9-lZIIGjgmbxiJTklWZL6JF2ZU_O7LnZRZ_N-3ZVZbThPTfF-V0SlO6n72ZRn",
        SelfSpawnHorse = "https://discord.com/api/webhooks/1103459442500063292/Qf7SOsPdCejNBslXhtRTLhSL2QQnAE6AyLtWSOxbvHUhk7XyGGt3GzW5M3_tFL9lZBH4",
        SelfSpawnWagon = "https://discord.com/api/webhooks/1103459592496750602/Jn0Obo7E3b47nGCkZHUGRD1uHv8UZ46ZCMdHE8pR84hjHsUmkNmn0sS9FQHgxrpfWrEE",
    },
    AdminLogs           = {
         --simple actions
         Freezed = "https://discord.com/api/webhooks/1103460282182926366/sqrI0dqE9x_rXhZOC1ll9taqhyR8MUNaxcl25YDQmSSp2x9EHus1w6F3Zr06285QMNy7",
         Bring = "https://discord.com/api/webhooks/1103460397421436948/gSW5RjtRZuPWfQTl1Q6rnMSNxSNnydXaSpBtB1KjAoPKJANzX2kQ4RnU5R_HWamGwWBw",
         Goto = "https://discord.com/api/webhooks/1103460509379993791/FeJ9u7bvfGVrcwEVpR2jBZ_VeNZsJ1X_mufGTVJmV_uLrDdP4RUd-yFEJyoiUcKdSjlP",
         Revive = "https://discord.com/api/webhooks/1103460605555384432/b_aR4i2qWZ2gc0lSH12Zlmpb3UsZ1-8EK39fnZWo5iK5rBVcRPvWDoG7FxS_v_E28JcJ",
         Heal = "https://discord.com/api/webhooks/1103460745263448084/dByajtTJ1TRuEyII7t3f_FmhH-7xChlAWEVSKwFDvRGPGOI2fOul4qhkDmuakQKIW-Ih",
         Warned = "https://discord.com/api/webhooks/1103461044816465920/IAtBa1wJT9jE9Cpp62sbO4IrjXk8Na53h6u7EO0yH86attQxi7hzBYZfsjBOK2S-mHU_",
         Unwarned = "https://discord.com/api/webhooks/1103461173661286400/FKViaHU_KZ-U332KqRdsbIQH9QFGtdrex7nqjgBtjVjc2EnjgTJibsE-bLLUrWouRHU4",
         Spectate = "https://discord.com/api/webhooks/1103461298148216862/N7Te35aozenFk8uKSjJ7jfBnC-f7-3noMVkKdBnYKlgFFIwq17Yxw0WibF-VUWbZl4Pw",
         --advanced actions
         Respawn = "https://discord.com/api/webhooks/1103462000144683039/hVZvLSmqnI-6YiKpxYKeTnKJ6LDrhuLDXwYl5qXdFuQk4eZi2DfhUwibB6dc4rQNE4EO",
         Kick = "https://discord.com/api/webhooks/1103462131304775710/nJ-0hXjpMh1Og0sJKy46KIzcenCh5k7JuC7QiQaqBBJE69M5LR1t77i7-4vSKVdB0DB5",
         Ban = "https://discord.com/api/webhooks/1103462205460058233/ki1aQqL6fGiBUNWO6JyvlvN3JZpGtlk2xul5RzY24geHS26_5pkcsDHw5PZnPsvkTy92",
         Unban = "https://discord.com/api/webhooks/1103462288142368828/CvzxTVltGOk7CI0-cRXClBU6HnM90w6ndc9HlV2eS3GMAesuJIHRhGYr9AjB9oiOuF6f",
         Whitelist = "",
         Unwhitelist = "",
         Setgroup = "https://discord.com/api/webhooks/1103462410523779194/LS6am3ExM6iJyUBPgYQ2HEuvDQkh3izpG6XXbcuq_nikfVMRZgZ5BZSQ3i6c3BgdrWGc",
         Setjob = "https://discord.com/api/webhooks/1103462494019784786/TNJA-ifndRn2KS3alMdh16POdzyDUZPXd_2p63EcLtAoZDoihxlYlEQ0CU9BAtEp0YeK",
         Announce = "https://discord.com/api/webhooks/1103462585770180668/64gl5dEOsr2JmaAnoIXcP7mLArZkQubcejdHn6qqrdu3FeoNhPXxEVLTbIHJavMzi5M4" 
    },
    TeleportLogs        = {
        Tpm = "https://discord.com/api/webhooks/1106556578158620733/aik4BYheDlYSgxY-eJohDRPkrbsoogXmBkVVJacH0EDuG2TvXxf3zKaPU9z9c2AqD0XX",
        Tptocoords = "https://discord.com/api/webhooks/1103463106396557372/s7kBiElJsIajgXHvE5_SfS2c0WjhnOVuSwczSJBTv61kWoJw-7otAYJaWpXfCo8nXtM6",
        Tptoplayer = "https://discord.com/api/webhooks/1103463187694768280/6RYbDcxJQjYY1k-ttf0JWLKC3FywwQ4aoGU5h6Ja_tNWYaxfyGmixWyTlG8Chz6chjyW",
        Bringplayer = "https://discord.com/api/webhooks/1103463298072064010/fjJJdM_ci1vtLOjkeUfIoBuAtCD3qER3JZXLYf5J0gzw02a7jGlL9rnEI456eAY_Sg_F",
    },
    DatabaseLogs        = {
        Giveitem = "https://discord.com/api/webhooks/1103463409162403880/ToO-XPXtjHmT85jQuoN8EF8nomOkI0S3gP-Cn_1JFQXJYc35EZ7rbqfGmHwn9DkPyqms",
        Giveweapon = "https://discord.com/api/webhooks/1103463501462261920/SnpNEvFd_r0ZwpL69uGCWd4Jc7OvxflqRZBW4DoRI0iDhXfv2bS-br5rz_8aQRkIA9VJ",
        Givecurrency = "https://discord.com/api/webhooks/1103463593271382076/tAcHG58FXuifGTR_W0LVJpcSbqaR7KsGDpTjVPteQ4zWUtfPmwCzn3sBRBAuicOLXN20",
        Givehorse = "https://discord.com/api/webhooks/1103463679992791112/dprnjRnWmg_k8Ut2OdQP7DAo_DY9ffA0dsV82zo5iMsuR3ZEQPlTnXoNhrP4YC3MMdzL",
        Givewagon = "https://discord.com/api/webhooks/1103463763614638192/yS1obo5JLtPtsTJJlsMCEO2QbHqdIEb3M27CqKw7qom5H49nMax7qR271bm48AEa2wRc",
        Clearmoney = "https://discord.com/api/webhooks/1103463854203215902/xMV7PM3t5SR-axERBqX5GJnWLJ3NIaqzEvL_GmtjGKgiIKtlBp_qSJfjKeShssTW1wjZ",
        Cleargold = "https://discord.com/api/webhooks/1103463936940052560/ejLqHoj8Qs8Bwj1ZYIzszaXFlFvlDCjZtPmtvr4_al5e1N4gdCISFDSO7i3_yaEsQljZ",
        Clearitems = "https://discord.com/api/webhooks/1103464019219722240/sTqvKtsJnYuCEZLjZTEVrHoOL4Qj8x_FW99VjFDMwGLGO-G7o-aRFkFKOk5MtmtYCGJz",
        Clearweapons = "https://discord.com/api/webhooks/1103464095669297333/zVrvcx72beMUhhIEK7rGXp6lr2d-WlnTXnAyAOxVdEFY8X_5TC-hlIhal6Q0C31mNR90",
   }
}
