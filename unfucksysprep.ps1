<#
Purpose:       Script to remove Windows Store apps which block sysprep
               Add any AppX uninstall commands to this list to target them for removal
Requirements:  1. Administrator access
               2. Windows 7 and up
Originally written by vocatus for reddit.com/r/TronScript.
Original version: https://github.com/bmrf/tron/blob/master/resources/stage_2_de-bloat/metro/metro_Microsoft_modern_apps_to_target_by_name.ps1


#>
$ErrorActionPreference = "SilentlyContinue"


########
# PREP #
########
$METRO_3RD_PARTY_MODERN_APPS_TO_TARGET_BY_NAME_SCRIPT_VERSION = "1.1.4"
$METRO_3RD_PARTY_MODERN_APPS_TO_TARGET_BY_NAME_SCRIPT_DATE = "2017-07-04"

# Build the removal function
Function Remove-App([String]$AppName){
	$PackageFullName = (Get-AppxPackage $AppName).PackageFullName
	$ProPackageFullName = (Get-AppxProvisionedPackage -online | where {$_.Displayname -like $AppName}).PackageName
	Remove-AppxPackage -package $PackageFullName | Out-Null
	Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName | Out-Null
}

###########
# EXECUTE #
###########
# Active identifiers
Remove-App "*06DAC6F6.StumbleUpon*"
Remove-App "*134D4F5B.Box*"
Remove-App "*1430GreenfieldTechnologie.PuzzleTouch*"
Remove-App "*26720RandomSaladGamesLLC.HeartsDeluxe*"
Remove-App "*26720RandomSaladGamesLLC.SimpleSolitaire*"
Remove-App "*29982CsabaHarmath.UnCompress*"
Remove-App "*2FE3CB00.PicsArt-PhotoStudio*"
Remove-App "*46928bounde.EclipseManager*"
Remove-App "*4AE8B7C2.Booking.comPartnerEdition*"
Remove-App "*4DF9E0F8.Netflix*"
Remove-App "*6Wunderkinder.Wunderlist*"
Remove-App "*7906AAC0.TOSHIBACanadaPartners*"
Remove-App "*7906AAC0.ToshibaCanadaWarrantyService*"
Remove-App "*7digitalLtd.7digitalMusicStore*"
Remove-App "*89006A2E.AutodeskSketchBook*"
Remove-App "*9E2F88E3.Twitter*"
Remove-App "*A278AB0D.MarchofEmpires*"
Remove-App "*A34E4AAB.YogaChef*"
Remove-App "*AD2F1837.HP*"
Remove-App "*ASUSCloudCorporation.MobileFileExplorer*"
Remove-App "*AccuWeather.AccuWeatherforWindows8*"
Remove-App "*AcerIncorporated.AcerExplorer*"
Remove-App "*AcerIncorporated.GatewayExplorer*"
Remove-App "*ActiproSoftwareLLC*"                        # Code Writer app
Remove-App "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
Remove-App "*AdobeSystemsIncorporated.AdobeRevel*"
Remove-App "*Amazon.com.Amazon*"
Remove-App "*AppUp.IntelAppUpCatalogueAppWorldwideEdition*"
Remove-App "*B9ECED6F.ASUSGIFTBOX*"
Remove-App "*BD9B8345.AlbumbySony*"
Remove-App "*BD9B8345.MusicbySony*"
Remove-App "*BD9B8345.Socialife*"
Remove-App "*BD9B8345.VAIOCare*"
Remove-App "*BD9B8345.VAIOMessageCenter*"
Remove-App "*BingNews*"
Remove-App "*ChaChaSearch.ChaChaPushNotification*"
Remove-App "*ClearChannelRadioDigital.iHeartRadio*"
Remove-App "*CrackleInc.Crackle*"
Remove-App "*CyberLinkCorp.ac.AcerCrystalEye*"
Remove-App "*CyberLinkCorp.ac.SocialJogger*"
Remove-App "*CyberLinkCorp.hs.YouCamforHP*"
Remove-App "*CyberLinkCorp.id.PowerDVDforLenovoIdea*"
Remove-App "*D52A8D61.FarmVille2CountryEscape*"
Remove-App "*D5EA27B7.Duolingo-LearnLanguagesforFree*"
Remove-App "*DB6EA5DB.CyberLinkMediaSuiteEssentials*"    # CyberLink...sigh
Remove-App "*DailymotionSA.Dailymotion*"
Remove-App "*DellInc.DellShop*"
Remove-App "*Drawboard.DrawboardPDF*"
Remove-App "*E046963F.LenovoCompanion*"
Remove-App "*E046963F.LenovoSupport*"
Remove-App "*E0469640.CameraMan*"
Remove-App "*E0469640.DeviceCollaboration*"
Remove-App "*E0469640.LenovoRecommends*"
Remove-App "*E0469640.YogaCameraMan*"
Remove-App "*E0469640.YogaPhoneCompanion*"
Remove-App "*E0469640.YogaPicks*"
Remove-App "*EncyclopaediaBritannica.EncyclopaediaBritannica*"
Remove-App "*Evernote.Evernote*"
Remove-App "*Evernote.Skitch*"
Remove-App "*F5080380.ASUSPhotoDirector*"
Remove-App "*F5080380.ASUSPowerDirector*"
Remove-App "*Facebook.Facebook*"                         # Facebook app
Remove-App "*FilmOnLiveTVFree.FilmOnLiveTVFree*"
Remove-App "*FingertappsInstruments*"
Remove-App "*FingertappsOrganizer*"
Remove-App "*Flipboard.Flipboard*"
Remove-App "*FreshPaint*"
Remove-App "*GAMELOFTSA.Asphalt8Airborne*"
Remove-App "*GAMELOFTSA.SharkDash*"
Remove-App "*GameGeneticsApps.FreeOnlineGamesforLenovo*"
Remove-App "*GettingStartedwithWindows8*"
Remove-App "*HPConnectedMusic*"
Remove-App "*HPConnectedPhotopoweredbySnapfish*"
Remove-App "*HPRegistration*"
Remove-App "*JigsWar*"
Remove-App "*KasperskyLab.KasperskyNow*"
Remove-App "*KeeperSecurityInc.Keeper*"
Remove-App "*KindleforWindows8*"
Remove-App "*king.com.BubbleWitch3Saga*"
Remove-App "*MAGIX.MusicMakerJam*"
Remove-App "*McAfee*"
Remove-App "*McAfeeInc.05.McAfeeSecurityAdvisorforASUS*"
Remove-App "*Minecraft*"
Remove-App "*MobileFileExplorer*"
Remove-App "*MusicMakerJam*"
Remove-App "*NAMCOBANDAIGamesInc.PAC-MANChampionshipEditionDXfo*"
Remove-App "*NAVER.LINEwin8*"
Remove-App "*PandoraMediaInc.29680B314EFC2*"
Remove-App "*PinballFx2*"
Remove-App "*Playtika.CaesarsSlotsFreeCasino*"
Remove-App "*PublicationsInternational.iCookbookSE*"
Remove-App "*RandomSaladGamesLLC.GinRummyProforHP*"
Remove-App "*ShazamEntertainmentLtd.Shazam*"
Remove-App "*SymantecCorporation.NortonStudio*"
Remove-App "*TelegraphMediaGroupLtd.TheTelegraphforLenovo*"
Remove-App "*TheNewYorkTimes.NYTCrossword*"
Remove-App "*ThumbmunkeysLtd.PhototasticCollage*"
Remove-App "*TripAdvisorLLC.TripAdvisorHotelsFlightsRestaurants*"
Remove-App "*TuneIn.TuneInRadio*"
Remove-App "*UptoElevenDigitalSolution.mysms-Textanywhere*"
Remove-App "*Weather.TheWeatherChannelforHP*"
Remove-App "*Weather.TheWeatherChannelforLenovo*"
Remove-App "*WildTangentGames*"
Remove-App "*YouSendIt.HighTailForLenovo*"
Remove-App "*ZinioLLC.Zinio*"
Remove-App "*eBayInc.eBay*"
Remove-App "*esobiIncorporated.newsXpressoMetro*"
Remove-App "*fingertappsASUS.FingertappsInstrumentsrecommendedb*"
Remove-App "*fingertappsASUS.JigsWarrecommendedbyASUS*"
Remove-App "*fingertappsasus.FingertappsOrganizerrecommendedbyA*"
Remove-App "*flaregamesGmbH.RoyalRevolt2*"
Remove-App "*king.com.CandyCrushSodaSaga*"
Remove-App "*sMedioforHP.sMedio360*"
Remove-App "*sMedioforToshiba.TOSHIBAMediaPlayerbysMedioTrueLin*"
Remove-App "*toolbar*"
Remove-App "*zuukaInc.iStoryTimeLibrary*"

# Inactive identifers
#Remove-App "*Netflix*"
