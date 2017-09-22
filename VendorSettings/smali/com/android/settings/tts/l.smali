.class public Lcom/android/settings/tts/l;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private asA:Landroid/speech/tts/TextToSpeech;

.field private asB:Landroid/speech/tts/TtsEngines;

.field private asR:Landroid/preference/ListPreference;

.field private asS:Landroid/preference/Preference;

.field private asT:Landroid/preference/Preference;

.field private asU:Landroid/content/Intent;

.field private asV:Landroid/content/Intent;

.field private asW:I

.field private final asX:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final asY:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/l;->asW:I

    .line 72
    new-instance v0, Lcom/android/settings/tts/m;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/m;-><init>(Lcom/android/settings/tts/l;)V

    iput-object v0, p0, Lcom/android/settings/tts/l;->asX:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 88
    new-instance v0, Lcom/android/settings/tts/o;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/o;-><init>(Lcom/android/settings/tts/l;)V

    iput-object v0, p0, Lcom/android/settings/tts/l;->asY:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method private B(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string v0, "TtsEngineSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/l;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/android/settings/tts/l;->asV:Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/android/settings/tts/l;->asV:Landroid/content/Intent;

    const-string v1, "availableVoices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/android/settings/tts/l;->asV:Landroid/content/Intent;

    const-string v2, "unavailableVoices"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/settings/tts/l;->asT:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    :goto_1
    if-nez v0, :cond_2

    .line 233
    const-string v0, "TtsEngineSettings"

    const-string v1, "TTS data check failed (available == null)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/l;->asT:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 237
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/tts/l;->e(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/tts/l;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private a(Ljava/util/Locale;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 344
    .line 345
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 347
    iget-object v3, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    :goto_2
    if-ne v1, v2, :cond_3

    .line 354
    const-string v0, "TtsEngineSettings"

    const-string v1, "updateLanguageTo called with unknown locale argument"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    :goto_3
    return-void

    .line 345
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 346
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    iput v1, p0, Lcom/android/settings/tts/l;->asW:I

    .line 360
    iget-object v0, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/l;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/tts/l;->asA:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/android/settings/tts/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uU()V

    return-void
.end method

.method private cY(I)V
    .locals 2

    .prologue
    .line 294
    if-gez p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    const v1, 0x7f0c07aa

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 290
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 248
    iget-object v0, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    move-object v2, v0

    .line 251
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    .line 253
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 254
    iget-object v6, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_2

    .line 256
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 262
    :cond_3
    new-instance v0, Lcom/android/settings/tts/p;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/p;-><init>(Lcom/android/settings/tts/l;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    iput v3, p0, Lcom/android/settings/tts/l;->asW:I

    .line 271
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 272
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Ljava/lang/CharSequence;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c07a9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 275
    const-string v0, ""

    aput-object v0, v7, v3

    .line 278
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 279
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    iput v3, p0, Lcom/android/settings/tts/l;->asW:I

    .line 282
    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    aput-object v1, v6, v3

    .line 283
    add-int/lit8 v1, v3, 0x1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    move v3, v1

    .line 284
    goto :goto_3

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 289
    iget v0, p0, Lcom/android/settings/tts/l;->asW:I

    invoke-direct {p0, v0}, Lcom/android/settings/tts/l;->cY(I)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private final uU()V
    .locals 4

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/16 v1, 0x7b9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/tts/l;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    const-string v1, "TtsEngineSettings"

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

.method private uV()V
    .locals 4

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    :try_start_0
    const-string v1, "TtsEngineSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing voice data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/l;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    const-string v1, "TtsEngineSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install TTS data, no acitivty found for "

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

.method private uW()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private uX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/android/settings/tts/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 202
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 203
    if-eqz p2, :cond_1

    .line 204
    invoke-direct {p0, p3}, Lcom/android/settings/tts/l;->B(Landroid/content/Intent;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v0, "TtsEngineSettings"

    const-string v1, "CheckVoiceData activity failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/l;->addPreferencesFromResource(I)V

    .line 116
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 119
    const-string v0, "tts_default_lang"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v0, "tts_engine_settings"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/l;->asS:Landroid/preference/Preference;

    .line 122
    iget-object v0, p0, Lcom/android/settings/tts/l;->asS:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    const-string v0, "tts_install_data"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/l;->asT:Landroid/preference/Preference;

    .line 124
    iget-object v0, p0, Lcom/android/settings/tts/l;->asT:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/tts/l;->asS:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c07c2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/l;->uX()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/l;->asU:Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/settings/tts/l;->asU:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/tts/l;->asS:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/l;->asT:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    if-nez p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "voices"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/tts/l;->asV:Landroid/content/Intent;

    .line 159
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/l;->asX:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings/tts/l;->uW()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/l;->asA:Landroid/speech/tts/TextToSpeech;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uU()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/l;->asY:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void

    .line 144
    :cond_1
    const-string v0, "locale_entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 146
    const-string v0, "locale_entry_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
    const-string v4, "locale_value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 151
    iget-object v5, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 152
    iget-object v5, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 153
    iget-object v5, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    array-length v0, v3

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 154
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/l;->asY:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/tts/l;->asA:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 174
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 335
    check-cast p2, Ljava/lang/String;

    .line 336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/l;->asB:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, p2}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/tts/l;->a(Ljava/util/Locale;)V

    .line 338
    const/4 v0, 0x1

    .line 340
    :goto_1
    return v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 321
    iget-object v1, p0, Lcom/android/settings/tts/l;->asT:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/android/settings/tts/l;->uV()V

    .line 329
    :goto_0
    return v0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/l;->asS:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/settings/tts/l;->asU:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/l;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    const-string v0, "locale_entries"

    iget-object v1, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 183
    const-string v0, "locale_entry_values"

    iget-object v1, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 185
    const-string v0, "locale_value"

    iget-object v1, p0, Lcom/android/settings/tts/l;->asR:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x5d

    return v0
.end method
