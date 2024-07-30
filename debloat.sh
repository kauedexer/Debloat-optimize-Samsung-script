#!/system/bin/bash

# @kayeviolet
perform_operation() {
 for pkg in "${packages[@]}"; do
  $1 "$pkg"
 done
}

# Disable
packages=(
 # process
 com.samsung.android.dsms
 com.samsung.klmsagent
 com.samsung.cmh
 com.samsung.android.sdk.ocr
 com.samsung.android.smartsuggestions
 com.samsung.android.provider.filterprovider
 com.samsung.android.service.tagservice
 # screen
 com.android.dreams.phototable
 com.samsung.adaptivebrightnessgo
 com.android.dreams.basic
 # cocktailbar
 com.samsung.android.app.cocktailbarservice
 com.samsung.android.service.peoplestripe
 # quick share
 com.samsung.android.mdx.kit
 com.samsung.android.aware.service
 com.google.android.ext.shared
 com.samsung.android.app.sharelive
 # Wi-Fi
 com.samsung.android.fast
 com.knox.vpn.proxyhandler
 # calls
 com.google.android.apps.carrier.carrierwifi
 com.samsung.android.emergency
 com.hiya.star
 com.android.providers.blockednumber
 # camera
 com.samsung.android.cameraxservice
 # e-sim
 com.sec.vsim.ericssonnsds.webapp
)
perform_operation "pm disable-user"

# Suspend
packages=(
 com.samsung.cmfa.AuthTouch
 com.samsung.android.sume.nn.service
 # google
 com.google.android.gsf
 com.google.android.ext.services
 # bixby
 com.samsung.android.bixbyvision.framework
 # samsung
 com.samsung.android.game.gos
 com.sec.android.provider.badge
 com.android.ons
 com.google.android.cellbroadcastservice
 com.samsung.android.knox.kpecore
 com.sec.location.nfwlocationprivacy
)
perform_operation "pm suspend"

# Clear
packages=(
 com.google.android.gms
 com.android.providers.media
 com.android.settings.intelligence
)
perform_operation "pm clear"

# Sys-whitelist
packages=(
# IMS
 -com.sec.imsservice
# cocktailbar
 -com.samsung.android.app.appsedge
 -com.samsung.android.app.cocktailbarservice
 -com.samsung.android.service.peoplestripe
# samsung
 -com.samsung.android.app.galaxyfinder
 -com.samsung.android.knox.containercore
 -com.samsung.android.aware.service
 -com.sec.android.app.samsungapps
 -com.samsung.android.smartsuggestions
 -com.android.providers.calendar
 -com.samsung.android.fast
 -com.samsung.android.game.gos
 -com.osp.app.signin
 -com.sec.android.daemonapp
 -com.samsung.android.app.contacts
# voice service
 -com.samsung.android.intellivoiceservice
# quick share
 -com.samsung.android.mdx.kit
)
perform_operation "dumpsys deviceidle sys-whitelist"

# Whitelist
packages=(
# google
 -com.google.android.gms
# IMS
 -com.sec.imsservice
# cocktailbar
 -com.samsung.android.app.appsedge
 -com.samsung.android.app.cocktailbarservice
 -com.samsung.android.service.peoplestripe
# samsung
 -com.samsung.android.app.galaxyfinder
 -com.samsung.android.knox.containercore
 -com.samsung.android.aware.service
 -com.sec.android.app.samsungapps
 -com.samsung.android.smartsuggestions
 -com.android.providers.calendar
 -com.samsung.android.fast
 -com.samsung.android.game.gos
 -com.osp.app.signin
 -com.sec.android.daemonapp
 -com.samsung.android.app.contacts
# quick share
 -com.samsung.android.mdx.kit
)
perform_operation "dumpsys deviceidle whitelist"

# Uninstall
packages=(
# parental
 com.samsung.android.app.parentalcare
 com.sec.enterprise.knox.cloudmdm.smdms
 com.sec.android.app.personalization
 com.samsung.sait.sohservice
 com.google.android.apps.accessibility.voiceaccess
 com.samsung.android.knox.zt.framework
 com.samsung.android.knox.app.networkfilter
 com.samsung.android.hdmapp
 com.samsung.ssu
 com.google.android.healthconnect.controller
 com.samsung.android.knox.mpos
 com.google.android.overlay.modules.documentsui
 com.google.android.overlay.gmsconfig.searchselector
 com.google.android.health.connect.backuprestore
 com.google.android.federatedcompute
 com.samsung.android.cmfa.framework
 com.rsupport.rs.activity.rsupport.aas2
 com.google.android.configupdater
 com.google.android.overlay.modules.ext.services
 android.autoinstalls.config.samsung
 com.samsung.android.cidmanager
 com.android.keychain
 com.sec.android.app.magnifier
 com.google.android.gms.supervision
 com.samsung.android.location
 com.android.traceur
 com.sec.android.widgetapp.webmanual
 com.sec.imslogger
 com.sec.enterprise.mdm.services.simpin
 com.skms.android.agent
 com.android.carrierdefaultapp
 com.android.internal.display.cutout.emulation.tall
 com.android.internal.display.cutout.emulation.waterfall
 com.google.mainline.adservices
 com.android.cts.priv.ctsshim
 com.android.cts.ctsshim
 com.android.printspooler
 com.android.calllogbackup
 com.android.wallpaperbackup
 com.android.proxyhandler
 com.android.smspush
 com.samsung.crane
 com.sec.imslogger
 com.dsi.ant.server
 com.dsi.ant.plugins.antplus
 com.dsi.ant.sample.acquirechannels
 com.dsi.ant.service.socket
 com.samsung.android.ardrawing
 com.samsung.android.arzone
 com.google.ar.core
 com.samsung.android.aremoji
 com.samsung.android.aremojieditor
 com.sec.android.mimage.avatarstickers
 com.sec.android.autodoodle.service
 com.samsung.android.livestickers
 com.samsung.android.app.camera.sticker.facearavatar.preload
 com.facebook.katana 
 com.facebook.appmanager
 com.facebook.system
 com.facebook.services
 com.google.android.partnersetup
 com.android.printspooler
 com.android.calllogbackup
 com.google.android.tts 
 com.google.android.feedback
 com.google.android.printservice.recommendation 
 com.google.android.googlequicksearchbox
 com.android.bips 
 com.android.providers.partnerbookmarks
 com.android.bookmarkprovider
 com.google.android.music
 com.google.android.videos
 com.google.android.projection.gearhead
 com.google.android.apps.tachyon
 com.google.android.apps.turbo
 com.google.android.setupwizard
 com.google.android.onetimeinitializer
 com.google.android.apps.restore
 com.google.audio.hearing.visualization.accessibility.scribe
 com.sec.android.app.factorykeystring
 com.sec.android.RilServiceModeApp
 com.sec.android.app.servicemodeapp
 com.sec.android.app.hwmoduletest
 com.sec.android.app.wlantest
 com.sec.factory.camera
 com.linkedin.android
 com.mygalaxy
 com.eterno
 com.opera.max.oem
 com.opera.max.preinstall
 com.aura.oobe.samsung
 com.samsung.logwriter
 com.samsung.android.easysetup
 com.samsung.storyservice
 com.samsung.android.airtel.stubapp
 com.samsung.android.spaymini
 com.sec.android.widgetapp.samsungapps
 com.sec.android.widgetapp.webmanual
 com.samsung.visionprovider
 com.samsung.android.mfi
 com.sec.android.app.chromecustomizations
 com.samsung.android.uds
 com.samsung.android.accessibility.talkback
 com.samsung.ims.smk
 com.android.stk
 com.android.stk2
 com.samsung.android.mcfds
 com.samsung.android.mcfserver
 com.sec.unifiedwfc
 com.sec.epdg
 com.sec.epdgtestapp
 com.qualcomm.embms
 com.qti.snapdragon.qdcm_ff
 com.samsung.android.app.simplesharing
 com.samsung.android.drivelink.stub 
 com.samsung.android.app.watchmanagerstub
 com.samsung.android.app.watchmanager
 com.samsung.android.samsungpassautofill 
 com.samsung.android.samsungpass
 com.samsung.android.app.sbrowseredge
 com.sec.android.soagent 
 com.samsung.android.allshare.service.fileshare 
 com.samsung.android.stickercenter
 com.samsung.android.visionarapps
 com.samsung.android.da.daagent  
 com.samsung.android.mobileservice
 com.samsung.android.fmm
 com.samsung.android.service.livedrawing
 com.samsung.android.app.spage 
 com.samsung.android.kidsinstaller
 com.sec.android.app.setupwizardlegalprovider
 com.samsung.android.authfw
 com.samsung.android.mateagent
 com.sec.android.preloadinstaller
 com.samsung.android.app.social
 com.sec.spp.push
 com.samsung.android.svoiceime
 com.samsung.android.app.tips 
 com.samsung.android.emojiupdater
 com.enhance.gameservice 
 com.monotype.android.font.foundation 
 com.sec.android.app.billing 
 com.samsung.android.beaconmanager
 com.samsung.android.app.omcagent 
 com.samsung.android.mdecservice
 com.samsung.android.allshare.service.mediashare 
 com.sec.android.app.DataCreate
 com.sec.android.app.parser
 com.sec.android.easyonehand
 com.sec.android.cover.ledcover 
 com.sec.location.nsflp2
 com.samsung.android.coldwalletservice 
 com.samsung.android.drivelink.stub 
 com.samsung.ucs.agent.ese 
 com.samsung.android.icecone
 com.samsung.android.forest
 com.samsung.android.fmm
 com.samsung.android.app.ledbackcover 
 com.samsung.android.mdx
 com.samsung.android.spayfw
 com.samsung.android.rubin.app
 com.samsung.android.aircommandmanager
 com.samsung.android.mdm
 com.samsung.android.securitylogagent
 com.sec.android.diagmonagent
 com.sec.android.app.desktoplauncher
 com.samsung.android.bbc.bbcagent
 com.samsung.android.visionarapps
 com.samsung.android.app.watchmanagerstub 
 com.sec.android.usermanual
 com.sec.android.app.sbrowser
 com.samsung.android.app.watchmanager
 com.samsung.sree
 com.sec.android.app.shealth
 com.samsung.android.voc
 com.samsung.android.spay
 com.samsung.android.oneconnect
 com.samsung.nasb.bts
 com.samsung.android.smartswitchassistant
 com.samsung.android.net.wifi.wifiguider
 com.samsung.android.container
 com.samsung.android.ipsgeofence
 com.samsung.aasaservice
 com.diotek.sec.lookup.dictionary
 com.android.providers.userdictionary
 com.samsung.gpuwatchapp
 com.samsung.SMT
 com.samsung.android.privateshare
 com.samsung.android.sm.devicesecurity
 com.samsung.android.visualars
 com.sec.android.easyMover
 com.sec.android.easyMover.Agent
 com.samsung.android.mobileservices
 com.samsung.android.vtcamerasettings
 com.samsung.android.sdk.handwriting
 com.samsung.android.app.camera.sticker.facearavatar.preload
 com.sec.android.widgetapp.easymodecontactswidget
 com.android.internal.systemui.onehanded.gestal
 vendor.qti.hardware.cacert.server
 com.samsung.android.mapsagent
 com.samsung.android.svcagent
 com.samsung.android.dqagent
 com.samsung.android.widget.pictureframe
 com.samsung.android.peripheral.framework
 com.sec.android.CcInfo
 android.auto_generated_rro_vendor__
 android.auto_generated_rro_product__
 com.sec.factory.cameralyzer
 com.samsung.safetyinformation
 com.samsung.android.coldwalletservice
 com.samsung.android.galaxy
 com.samsung.shop
 com.samsung.sree
 com.microsoft.office.officehubrow
 com.microsoft.skydrive
 com.touchtype.swiftkey
 com.microsoft.appmanager
 com.swiftkey.swiftkeyconfigurator
 com.netflix.partner.activation
 com.sec.android.iaft
 com.samsung.android.networkdiagnostic
 com.wsomacp
 com.samsung.android.app.mirrorlink
 com.samsung.android.smartcallprovider
 com.sec.app.RilErrorNotifier
 com.sec.usbsettings
 com.sec.phone
 com.sec.bcservice
 com.android.managedprovisioning
 com.android.companiondevicemanager
 com.google.android.nearby.halfsheet
 com.google.android.overlay.gmsconfig.asi
 com.google.android.overlay.gmsconfig.common
 com.google.android.overlay.gmsconfig.geotz
 com.google.android.overlay.gmsconfig.gsa
 com.google.android.overlay.modules.modulemetadata.forframework
 com.android.internal.display.cutout.emulation.hole
 com.android.internal.display.cutout.emulation.double
 com.android.wallpaper.livepicker
 com.samsung.android.networkstack.tethering.overlay
 com.google.android.overlay.modules.cellbroadcastservice
 com.google.android.overlay.modules.cellbroadcastreceiver
 com.google.android.networkstack.tethering.overlay
 com.google.android.overlay.modules.captiveportallogin.forframework
 com.google.android.ondevicepersonalization.services
 com.sem.factoryapp
 com.samsung.android.wifi.softap.resources
 com.google.android.adservices.api
 com.samsung.android.inputshare
 com.samsung.android.sdm.config
 com.google.android.gms.location.history
 com.android.hotwordenrollment.okgoogle
 com.android.hotwordenrollment.xgoogle
 com.google.android.overlay.gmsconfig.photos
 com.samsung.android.samsungpositioning
 com.sec.android.app.SecSetupWizard
 com.samsung.android.shortcutbackupservice
 com.samsung.android.knox.analytics.uploader
 com.samsung.sec.android.application.csc
 com.google.android.as
 com.samsung.android.server.wifi.mobilewips
)
perform_operation "pm uninstall -k --user 0"
