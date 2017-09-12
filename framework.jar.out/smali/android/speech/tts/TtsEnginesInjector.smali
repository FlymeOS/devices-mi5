.class Landroid/speech/tts/TtsEnginesInjector;
.super Ljava/lang/Object;
.source "TtsEnginesInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findFirstEngineSupportLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "ttsEngines"    # Landroid/speech/tts/TtsEngines;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v2

    .line 35
    .local v2, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 36
    .local v0, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v4, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 37
    .local v1, "engineDefaultLocale":Ljava/util/Locale;
    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    iget-object v4, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 42
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v1    # "engineDefaultLocale":Ljava/util/Locale;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "ttsEngines"    # Landroid/speech/tts/TtsEngines;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 16
    const-string v0, "com.iflytek.speechcloud"

    .line 18
    .local v0, "iflyTekSpeechEngine":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    :cond_0
    const-string v1, "com.iflytek.speechcloud"

    invoke-virtual {p0, v1}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    const-string v1, "com.iflytek.speechcloud"

    .line 25
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, p1}, Landroid/speech/tts/TtsEnginesInjector;->findFirstEngineSupportLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
