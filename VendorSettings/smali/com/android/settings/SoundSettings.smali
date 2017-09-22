.class public Lcom/android/vendorsettings/SoundSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final Av:[Ljava/lang/String;


# instance fields
.field private AA:Landroid/preference/Preference;

.field private AB:Landroid/preference/CheckBoxPreference;

.field private AC:Lcom/android/vendorsettings/DefaultRingtonePreference;

.field private AD:Lcom/android/vendorsettings/DefaultRingtonePreference;

.field protected AE:Landroid/preference/ListPreference;

.field private AF:Ljava/lang/Runnable;

.field private AG:Landroid/preference/Preference;

.field private AH:Landroid/preference/CheckBoxPreference;

.field private AI:Landroid/content/Intent;

.field private AJ:Landroid/preference/CheckBoxPreference;

.field private Aw:Landroid/preference/CheckBoxPreference;

.field private Ax:Landroid/preference/CheckBoxPreference;

.field protected Ay:Landroid/preference/CheckBoxPreference;

.field protected Az:Landroid/preference/CheckBoxPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private nD:Lcom/android/vendorsettings/fG;

.field private nE:Z

.field private final nG:Lcom/android/vendorsettings/fH;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sms_received_sound"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sms_delivered_sound"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/SoundSettings;->Av:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 133
    new-instance v0, Lcom/android/vendorsettings/hL;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/hL;-><init>(Lcom/android/vendorsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/vendorsettings/hM;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/hM;-><init>(Lcom/android/vendorsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v0, Lcom/android/vendorsettings/hO;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/hO;-><init>(Lcom/android/vendorsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->nG:Lcom/android/vendorsettings/fH;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/SoundSettings;)Lcom/android/vendorsettings/DefaultRingtonePreference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AC:Lcom/android/vendorsettings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/SoundSettings;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/SoundSettings;->o(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/SoundSettings;)Lcom/android/vendorsettings/DefaultRingtonePreference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AD:Lcom/android/vendorsettings/DefaultRingtonePreference;

    return-object v0
.end method

.method private ec()Z
    .locals 2

    .prologue
    .line 338
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private ej()V
    .locals 3

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/vendorsettings/SoundSettings;->nE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :try_start_0
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    invoke-virtual {v1}, Lcom/android/vendorsettings/fG;->gn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    invoke-virtual {v1}, Lcom/android/vendorsettings/fG;->go()I

    move-result v1

    .line 384
    iget-object v2, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    invoke-virtual {v2}, Lcom/android/vendorsettings/fG;->gq()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 385
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    invoke-virtual {v2}, Lcom/android/vendorsettings/fG;->gp()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 387
    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 390
    :cond_2
    const v1, 0x7f0c0088

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 394
    :catch_1
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 396
    :catch_2
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 398
    :catch_3
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 400
    :catch_4
    move-exception v0

    .line 401
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 402
    :catch_5
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 404
    :catch_6
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private ia()V
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/android/vendorsettings/fG;->gm()Lcom/android/vendorsettings/fG;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    .line 328
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->nG:Lcom/android/vendorsettings/fH;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fG;->a(Lcom/android/vendorsettings/fH;)V

    .line 329
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fG;->O(Landroid/content/Context;)Z

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private ib()V
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->AF:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 486
    return-void
.end method

.method private ic()Z
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private id()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 581
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AH:Landroid/preference/CheckBoxPreference;

    .line 583
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 584
    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->AH:Landroid/preference/CheckBoxPreference;

    const-string v0, "dock_sounds_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 586
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    .line 587
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 594
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 584
    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_category"

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 590
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_audio"

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 591
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_sounds"

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 592
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private ie()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    const v1, 0x7f0c03b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 651
    const v1, 0x7f0c03b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 652
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private o(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 598
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 600
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 603
    :goto_0
    iput-object p1, p0, Lcom/android/vendorsettings/SoundSettings;->AI:Landroid/content/Intent;

    .line 605
    if-eqz v3, :cond_6

    .line 608
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_1
    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 638
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 600
    goto :goto_0

    .line 616
    :cond_2
    const/4 v0, 0x3

    if-ne v3, v0, :cond_5

    .line 617
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 618
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 619
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 621
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    :cond_3
    const-string v0, "dock_audio_media_enabled"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AJ:Landroid/preference/CheckBoxPreference;

    .line 626
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AJ:Landroid/preference/CheckBoxPreference;

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 631
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 635
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 609
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/net/Uri;I)V
    .locals 3

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/vendorsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 482
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method protected ay()I
    .locals 1

    .prologue
    .line 571
    const v0, 0x7f0c09b5

    return v0
.end method

.method protected fY()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-class v0, Lcom/android/vendorsettings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    .line 177
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 179
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 191
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 198
    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    const-string v0, "vibrate_when_ringing"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    :cond_0
    const-string v0, "dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 205
    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    const-string v0, "dtmf_tone"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    const-string v0, "sound_effects"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ax:Landroid/preference/CheckBoxPreference;

    .line 208
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ax:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Ax:Landroid/preference/CheckBoxPreference;

    const-string v0, "sound_effects_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    const-string v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Az:Landroid/preference/CheckBoxPreference;

    .line 212
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Az:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 213
    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Az:Landroid/preference/CheckBoxPreference;

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Az:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    const-string v0, "lock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AB:Landroid/preference/CheckBoxPreference;

    .line 218
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 219
    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->AB:Landroid/preference/CheckBoxPreference;

    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AC:Lcom/android/vendorsettings/DefaultRingtonePreference;

    .line 232
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AD:Lcom/android/vendorsettings/DefaultRingtonePreference;

    .line 234
    const-string v0, "haptic_feedback_level"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AE:Landroid/preference/ListPreference;

    .line 235
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 236
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/SoundSettings;->AE:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AE:Landroid/preference/ListPreference;

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 245
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->U(Ljava/lang/String;)V

    .line 261
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 263
    const/16 v4, 0x200

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 279
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 280
    sget-object v0, Lcom/android/vendorsettings/SoundSettings;->Av:[Ljava/lang/String;

    array-length v3, v0

    :goto_5
    if-ge v2, v3, :cond_b

    aget-object v4, v0, v2

    .line 281
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 282
    if-eqz v4, :cond_5

    .line 283
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    .line 198
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 205
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 209
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 213
    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 219
    goto/16 :goto_4

    .line 288
    :cond_b
    new-instance v0, Lcom/android/vendorsettings/hN;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/hN;-><init>(Lcom/android/vendorsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AF:Ljava/lang/Runnable;

    .line 307
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->id()V

    .line 309
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ia()V

    .line 312
    const-string v0, "dirac_control"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_c

    .line 314
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/player/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "support_headset"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 315
    invoke-static {}, Lcom/miui/player/a/a/b;->Fb()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 316
    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 322
    :cond_c
    :goto_6
    return-void

    .line 319
    :cond_d
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ie()Landroid/app/Dialog;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->nD:Lcom/android/vendorsettings/fG;

    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fG;->P(Landroid/content/Context;)V

    .line 442
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 443
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 433
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 555
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 556
    const-string v1, "emergency_tone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 559
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    const-string v1, "SoundSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Aw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 491
    goto :goto_0

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 494
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Ay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ax:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 498
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Ax:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 499
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 503
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Ax:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 501
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_3

    :cond_7
    move v1, v2

    .line 503
    goto :goto_4

    .line 506
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->Az:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 507
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->Az:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_5

    .line 510
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AB:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 511
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->AB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_6

    .line 514
    :cond_c
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AA:Landroid/preference/Preference;

    if-eq p2, v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 518
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AI:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AI:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 522
    :goto_7
    if-nez v0, :cond_e

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/SoundSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 518
    goto :goto_7

    .line 525
    :cond_e
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AI:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 527
    :goto_8
    if-eqz v0, :cond_10

    .line 528
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vendorsettings/SoundSettings;->AI:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 529
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 525
    goto :goto_8

    .line 533
    :cond_10
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AG:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 534
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 535
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_11

    :goto_9
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    invoke-super {p0, v0, v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_11
    move v1, v2

    .line 535
    goto :goto_9

    .line 541
    :cond_12
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AH:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 542
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->AH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_a

    .line 544
    :cond_14
    iget-object v0, p0, Lcom/android/vendorsettings/SoundSettings;->AJ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/vendorsettings/SoundSettings;->AJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_b
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_b
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 417
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 419
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ib()V

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/vendorsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/vendorsettings/SoundSettings;->ej()V

    .line 428
    :cond_0
    return-void
.end method
