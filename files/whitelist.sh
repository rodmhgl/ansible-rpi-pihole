# https://discourse.pi-hole.net/t/commonly-whitelisted-domains/212

# Google Maps and other Google services
pihole -w clients4.google.com
pihole -w clients2.google.com

# Youtube History
pihole -w s.youtube.com
pihole -w video-stats.l.google.com

# Google Play
pihole -w android.clients.google.com

# Google Fonts
pihole -w gstaticadssl.l.google.com

# Google Mail
pihole -w googleapis.l.google.com

# Google Chrome (Ubuntu Update)
pihole -w dl.google.com

# Android TV
pihole -w redirector.gvt1.com

# Microsoft - Validate internet connectivity
pihole -w www.msftncsi.com

# Microsoft web pages
pihole -w outlook.office365.com
pihole -w products.office.com
pihole -w c.s-microsoft.com
pihole -w i.s-microsoft.com
pihole -w login.live.com
pihole -w login.microsoftonline.com

# Microsoft - Bitlocker Key Recovery
pihole -w g.live.com

# Microsoft Store (Windows Store)
pihole -w dl.delivery.mp.microsoft.com
pihole -w geo-prod.do.dsp.mp.microsoft.com
pihole -w displaycatalog.mp.microsoft.com

# Windows 10 Update
pihole -w sls.update.microsoft.com.akadns.net
pihole -w fe3.delivery.dsp.mp.microsoft.com.nsatc.net
pihole -w tlu.dl.delivery.mp.microsoft.com

# Microsoft Edge Browser Update
pihole -w msedge.api.cdp.microsoft.com

# Xbox Live
pihole -w clientconfig.passport.net

# Xbox Live Achievements
pihole -w v10.events.data.microsoft.com
pihole -w v20.events.data.microsoft.com

# Xbox Live Messaging
pihole -w client-s.gateway.messenger.live.com

# Store App on Series X/S
pihole -w arc.msn.com

# EA Play on XBOX
pihole -w activity.windows.com

# Xbox Live - full functionality
pihole -w xbox.ipv6.microsoft.com
pihole -w device.auth.xboxlive.com
pihole -w title.mgt.xboxlive.com
pihole -w xsts.auth.xboxlive.com
pihole -w title.auth.xboxlive.com
pihole -w ctldl.windowsupdate.com
pihole -w attestation.xboxlive.com
pihole -w xboxexperiencesprod.experimentation.xboxlive.com
pihole -w xflight.xboxlive.com
pihole -w cert.mgt.xboxlive.com
pihole -w xkms.xboxlive.com
pihole -w def-vef.xboxlive.com
pihole -w notify.xboxlive.com
pihole -w help.ui.xboxlive.com
pihole -w licensing.xboxlive.com
pihole -w eds.xboxlive.com
pihole -w www.xboxlive.com
pihole -w v10.vortex-win.data.microsoft.com
pihole -w settings-win.data.microsoft.com

# Skype
pihole -w s.gateway.messenger.live.com
pihole -w ui.skype.com
pihole -w pricelist.skype.com
pihole -w apps.skype.com
pihole -w m.hotmail.com
pihole -w sa.symcb.com
pihole -w s1.symcb.com
pihole -w s2.symcb.com
pihole -w s3.symcb.com
pihole -w s4.symcb.com
pihole -w s5.symcb.com

# Microsoft Office
pihole -w officeclient.microsoft.com

# Bing Maps
pihole -w dev.virtualearth.net
pihole -w ecn.dev.virtualearth.net
pihole -w t0.ssl.ak.dynamic.tiles.virtualearth.net
pihole -w t0.ssl.ak.tiles.virtualearth.net

# Apple Music
pihole -w itunes.apple.com
pihole -w s.mzstatic.com

# Apple ID
pihole -w appleid.apple.com

# Captive-portal Tests - Android / Chrome
pihole -w connectivitycheck.android.com
pihole -w clients3.google.com
pihole -w connectivitycheck.gstatic.com

# Captive-portal Tests - Microsoft
pihole -w msftncsi.com
pihole -w ipv6.msftncsi.com

# Captive-portal Tests - Apple
pihole -w captive.apple.com
pihole -w gsp1.apple.com
pihole -w www.apple.com
pihole -w www.appleiphonecell.com

# Spotify
pihole -w spclient.wg.spotify.com
pihole -w apresolve.spotify.com
pihole -w api-tv.spotify.com

# Target's Weekly Ads
pihole -w weeklyad.target.com
pihole -w m.weeklyad.target.com
pihole -w weeklyad.target.com.edgesuite.net

# Image placeholders often used during web design
pihole -w placehold.it
pihole -w placeholdit.imgix.net

# Dropbox
pihole -w dl.dropboxusercontent.com
pihole -w ns1.dropbox.com
pihole -w ns2.dropbox.com

# Times / NyDailyNews Videos
pihole -w delivery.vidible.tv
pihole -w img.vidible.tv
pihole -w videos.vidible.tv
pihole -w edge.api.brightcove.com
pihole -w cdn.vidible.tv

# Lowe's Checkout
pihole -w assets.adobedtm.com

# Home Depot's Checkout
pihole -w nexus.ensighten.com

# Redhat Online Learning
pihole -w 79423.analytics.edgekey.net