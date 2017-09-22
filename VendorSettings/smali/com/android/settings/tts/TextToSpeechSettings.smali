.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/k;


# instance fields
.field private asA:Landroid/speech/tts/TextToSpeech;

.field private asB:Landroid/speech/tts/TtsEngines;

.field private asC:Ljava/lang/String;

.field private asD:Ljava/util/Locale;

.field private asE:Ljava/util/List;

.field private final asF:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final asG:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private ass:Landroid/preference/PreferenceCategory;

.field private ast:Landroid/preference/ListPreference;

.field private asu:Landroid/preference/Preference;

.field private asv:Landroid/preference/Preference;

.field private asw:I

.field private asx:Ljava/lang/String;

.field private asy:Landroid/widget/Checkable;

.field private asz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I

    .line 107
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    .line 108
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asB:Landroid/speech/tts/TtsEngines;

    .line 110
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asC:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/android/settings/tts/a;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/a;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asF:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 141
    new-instance v0, Lcom/android/settings/tts/b;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/b;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asG:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/TextToSpeechSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->bO(Ljava/lang/String;)V

    return-void
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uN()Ljava/lang/String;

    move-result-object v0

    .line 433
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 434
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 435
    const-string v0, "sampleText"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asC:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asC:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 444
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_1
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Did not have a sample string for the requested language. Using default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bN(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    .line 530
    const v0, 0x7f0c07bc

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asz:Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asG:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    .line 554
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uI()V

    .line 555
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bO(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const/16 v1, 0x7b9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v1

    .line 592
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check TTS data, no activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bf(Z)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asu:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ast:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asv:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 503
    return-void
.end method

.method private cW(I)V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    .line 507
    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asv:Landroid/preference/Preference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    return-void
.end method

.method private uI()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/c;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/c;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0
.end method

.method private uJ()V
    .locals 5

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    :try_start_0
    const-string v1, "tts_default_rate"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ast:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ast:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asx:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/hn;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 250
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ass:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 252
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asB:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 254
    new-instance v3, Lcom/android/settings/tts/e;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1, p0, v0}, Lcom/android/settings/tts/e;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/k;Lcom/android/settings/hn;)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ass:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/tts/d;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/d;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method private uK()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 288
    if-nez v0, :cond_1

    .line 289
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get default language from engine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    .line 291
    const v0, 0x7f0c07bb

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    .line 298
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asB:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    .line 299
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asC:Ljava/lang/String;

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 304
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asC:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uM()V

    goto :goto_0
.end method

.method private uL()Z
    .locals 6

    .prologue
    const v5, 0x7f0c07bb

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asE:Ljava/util/List;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 340
    :goto_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v3

    .line 341
    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eqz v0, :cond_5

    .line 345
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    .line 346
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 335
    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    .line 336
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    goto/16 :goto_0

    .line 349
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uO()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    const v0, 0x7f0c07ba

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    .line 354
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    move v1, v2

    .line 355
    goto/16 :goto_0

    .line 352
    :cond_6
    const v0, 0x7f0c07b9

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move-object v3, v0

    goto :goto_1
.end method

.method private uM()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    const-string v2, "language"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "country"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "variant"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/16 v0, 0x7bf

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    const-string v0, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sample text, no activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uN()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 408
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 409
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    aget-object v0, v2, v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_1
    return-object v0

    .line 408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 418
    :cond_1
    const v0, 0x7f0c07b7

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private uO()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v1

    .line 423
    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "networkTts"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private uP()V
    .locals 4

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uO()Z

    move-result v0

    .line 452
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 454
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    const-string v1, "utteranceId"

    const-string v2, "Sample"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asC:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_1
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Network required for sample synthesis for requested language"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uQ()V

    goto :goto_0
.end method

.method private uQ()V
    .locals 4

    .prologue
    .line 514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07b6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 522
    return-void
.end method

.method private z(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    .line 602
    if-nez v2, :cond_1

    .line 603
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Voice data check complete, but no engine bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    if-nez p1, :cond_2

    .line 608
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_synth"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    const-string v0, "availableVoices"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asE:Ljava/util/List;

    .line 617
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asE:Ljava/util/List;

    if-nez v0, :cond_3

    .line 618
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Voice data check complete, but no available voices found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asE:Ljava/util/List;

    .line 622
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uM()V

    .line 626
    :cond_4
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ass:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 627
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ass:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 629
    instance-of v4, v0, Lcom/android/settings/tts/e;

    if-eqz v4, :cond_5

    .line 630
    check-cast v0, Lcom/android/settings/tts/e;

    .line 631
    invoke-virtual {v0}, Lcom/android/settings/tts/e;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    invoke-virtual {v0, p1}, Lcom/android/settings/tts/e;->A(Landroid/content/Intent;)V

    goto :goto_0

    .line 627
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/Checkable;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asy:Landroid/widget/Checkable;

    .line 652
    return-void
.end method

.method public bP(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asx:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asx:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bN(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public cV(I)V
    .locals 1

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uK()V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    goto :goto_0
.end method

.method public cX(I)V
    .locals 4

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bO(Ljava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asz:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 574
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asF:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asz:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    .line 576
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uI()V

    .line 578
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asz:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-class v0, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 392
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 393
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->b(ILandroid/content/Intent;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 395
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->z(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 165
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asu:Landroid/preference/Preference;

    .line 166
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asu:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asu:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ass:Landroid/preference/PreferenceCategory;

    .line 171
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->ast:Landroid/preference/ListPreference;

    .line 173
    const-string v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asv:Landroid/preference/Preference;

    .line 174
    const v0, 0x7f0c07bc

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cW(I)V

    .line 176
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asF:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    .line 177
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asB:Landroid/speech/tts/TtsEngines;

    .line 179
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uI()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uJ()V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    .line 225
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 466
    const-string v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asw:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asu:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uP()V

    .line 493
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asD:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bf(Z)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->uK()V

    goto :goto_0
.end method

.method public uR()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asy:Landroid/widget/Checkable;

    return-object v0
.end method

.method public uS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->asx:Ljava/lang/String;

    return-object v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0x5e

    return v0
.end method
