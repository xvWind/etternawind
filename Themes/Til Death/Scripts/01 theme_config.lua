local defaultConfig = {
	global = {
		DefaultScoreType = 4, -- refer to scripts/wife.lua for whatever scoring types are available
		fallbackscoreType = 1,
		TipType = 1, -- 1 = Hide,2=tips 3= random quotes phrases,
		SongBGEnabled = true,
		SongBGMouseEnabled = false, -- removing soon
		Particles = false, -- removing soon
		RateSort = true,
		HelpMenu = false,
		ScoreBoardNag = false,
		MeasureLines = false,
		ProgressBar = 1, -- 0 = bottom, 1 = top
		ShowVisualizer = true,
		InstantSearch = true, -- true = search per press, false = search on enter button
		IgnoreTabInput = 1, -- 1 = dont ignore, 2 = ignore only in search, 3 = always
		JudgmentTween = false,
		ComboTween = false,
		CenteredCombo = false,
		FadeNoteFieldInSyncMachine = true,
		ShowPlayerOptionsHint = true,
	},
	NPSDisplay = {
		DynamicWindow = false,
		MaxWindow = 2,
		MinWindow = 1 -- unused.
	},
	eval = {
		CurrentTimeEnabled = true,
		JudgmentBarEnabled = true,
		ScoreBoardEnabled = true,
		ScoreBoardMaxEntry = 10,
		SongBGType = 1 -- 1 = song bg, 2 = grade+common, 3 = grade only
	},
	color = {
		main = "#00AEEF"
	}
}

themeConfig = create_setting("themeConfig", "themeConfig.lua", defaultConfig, -1)
themeConfig:load()

function JudgementTweensEnabled()
	return themeConfig:get_data().global.JudgmentTween
end
function ComboTweensEnabled()
	return themeConfig:get_data().global.ComboTween
end
function CenteredComboEnabled()
	return themeConfig:get_data().global.CenteredCombo
end
