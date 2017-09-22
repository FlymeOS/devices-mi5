.class public Lcom/android/vendorsettings/MiuiSoundSettings;
.super Lcom/android/vendorsettings/SoundSettings;
.source "MiuiSoundSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private tA:Landroid/preference/CheckBoxPreference;

.field private tB:Landroid/preference/CheckBoxPreference;

.field private tC:Landroid/preference/CheckBoxPreference;

.field private tD:Ljava/util/ArrayList;

.field private final tE:Landroid/content/BroadcastReceiver;

.field private final tF:Landroid/os/Handler;

.field private final tG:Landroid/database/ContentObserver;

.field private tv:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

.field private tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

.field private tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

.field private ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

.field private tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tD:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Lcom/android/vendorsettings/ft;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/ft;-><init>(Lcom/android/vendorsettings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tE:Landroid/content/BroadcastReceiver;

    .line 356
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tF:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/android/vendorsettings/fu;

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tF:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/fu;-><init>(Lcom/android/vendorsettings/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tG:Landroid/database/ContentObserver;

    return-void
.end method

.method public static H(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, -0x1

    .line 314
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    sget v2, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 314
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static I(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 382
    const-string v0, "com.android.settings_reverb"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 384
    const-string v1, "enable"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "strength"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "density"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sharpness"

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mediaplayer"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    :cond_0
    return-object v0
.end method

.method private X(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 292
    if-ltz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    .line 207
    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->cA(I)V

    .line 208
    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->setIcon(I)V

    .line 209
    new-instance v1, Lcom/android/vendorsettings/sound/H;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/sound/H;-><init>(Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->f(Lcom/android/vendorsettings/sound/H;)V

    .line 211
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method private c(II)I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 435
    if-gez p2, :cond_1

    .line 436
    const/4 p2, 0x0

    .line 440
    :cond_0
    :goto_0
    return p2

    .line 437
    :cond_1
    if-le p2, v0, :cond_0

    move p2, v0

    .line 438
    goto :goto_0
.end method

.method private ga()Z
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 429
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tv:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected fY()V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tv:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tv:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method fZ()V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tA:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tA:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 379
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "ring_volume"

    const/4 v1, 0x2

    const v2, 0x7f020296

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Ljava/lang/String;II)V

    .line 134
    const-string v0, "alarm_volume"

    const/4 v1, 0x4

    const v2, 0x7f02002c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Ljava/lang/String;II)V

    .line 135
    const-string v0, "media_volume"

    const/4 v1, 0x3

    const v2, 0x7f0201f8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/MiuiSoundSettings;->a(Ljava/lang/String;II)V

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/MiuiSoundSettings;->H(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    const-string v0, "sms_received_sound"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 144
    const-string v0, "sms_delivered_sound"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 145
    const-string v0, "alarm_sound"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tv:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 146
    const-string v0, "calendar_sound"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 148
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    .line 163
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    const-string v0, "silent_mode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tA:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v0, "miui_vibrate_in_silent_key"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v0, "miui_vibrate_in_normal_key"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 168
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :cond_4
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 175
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_6
    const-string v1, "miui_vibrate_category"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_7

    .line 185
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_7
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    .line 188
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    .line 191
    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 192
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    .line 197
    :cond_9
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 198
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_b

    .line 200
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    iput-object v3, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    .line 203
    :cond_b
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/vendorsettings/SoundSettings;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    .line 267
    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->uC()Lcom/android/vendorsettings/sound/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/H;->stop()V

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 402
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->ga()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    .line 423
    :goto_0
    return v1

    .line 406
    :cond_0
    iget-object v5, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v5

    .line 407
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    :goto_1
    const/16 v3, 0x19

    if-eq p2, v3, :cond_1

    const/16 v3, 0x18

    if-ne p2, v3, :cond_5

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 417
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 418
    const/16 v0, 0x19

    if-ne p2, v0, :cond_4

    const/4 v0, -0x1

    .line 419
    :goto_2
    iget-object v4, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    add-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->c(II)I

    move-result v0

    const/high16 v3, 0x100000

    invoke-virtual {v4, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 410
    goto :goto_1

    .line 411
    :cond_3
    invoke-static {v4, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    .line 412
    goto :goto_1

    :cond_4
    move v0, v1

    .line 418
    goto :goto_2

    :cond_5
    move v1, v0

    .line 423
    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tE:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    invoke-super {p0}, Lcom/android/vendorsettings/SoundSettings;->onPause()V

    .line 258
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    .line 259
    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->uC()Lcom/android/vendorsettings/sound/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/H;->pause()V

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 320
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 322
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiSoundSettings;->X(I)V

    .line 324
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 337
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SoundSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 340
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 344
    :cond_1
    return v1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1, v3}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tz:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tx:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->ty:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tw:Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 237
    :cond_3
    invoke-super {p0}, Lcom/android/vendorsettings/SoundSettings;->onResume()V

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tE:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    const-string v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    const-string v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSoundSettings;->tD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    .line 248
    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->uC()Lcom/android/vendorsettings/sound/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/H;->resume()V

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSoundSettings;->fZ()V

    .line 251
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SoundSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 220
    return-void
.end method
