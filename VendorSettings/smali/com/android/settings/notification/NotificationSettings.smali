.class public Lcom/android/vendorsettings/notification/NotificationSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field public static final ajC:Lcom/android/vendorsettings/search/a;

.field private static final ajl:[Ljava/lang/String;


# instance fields
.field private aiK:Landroid/content/pm/PackageManager;

.field private ajA:I

.field private final ajB:Ljava/lang/Runnable;

.field private final ajm:Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

.field private final ajn:Lcom/android/vendorsettings/notification/NotificationSettings$H;

.field private final ajo:Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;

.field private final ajp:Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;

.field private ajq:Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

.field private ajr:Landroid/preference/Preference;

.field private ajs:Landroid/preference/Preference;

.field private ajt:Landroid/preference/TwoStatePreference;

.field private aju:Landroid/preference/TwoStatePreference;

.field private ajv:Lcom/android/vendorsettings/DropDownPreference;

.field private ajw:Landroid/preference/Preference;

.field private ajx:Z

.field private ajy:I

.field private ajz:Landroid/content/ComponentName;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mVoiceCapable:Z

.field private sR:Landroid/os/UserManager;

.field private final tD:Ljava/util/ArrayList;

.field private uO:Landroid/os/Vibrator;

.field private yQ:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "media_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alarm_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notification_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "manage_zen_access"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zen_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajl:[Ljava/lang/String;

    .line 661
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/vendorsettings/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajC:Lcom/android/vendorsettings/search/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 98
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;Lcom/android/vendorsettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajm:Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 99
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$H;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;Lcom/android/vendorsettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajn:Lcom/android/vendorsettings/notification/NotificationSettings$H;

    .line 100
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajo:Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;

    .line 101
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;Lcom/android/vendorsettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajp:Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->tD:Ljava/util/ArrayList;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajA:I

    .line 323
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/notification/NotificationSettings$1;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajB:Ljava/lang/Runnable;

    .line 632
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/NotificationSettings;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajy:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/NotificationSettings;)Lcom/android/vendorsettings/notification/NotificationSettings$H;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajn:Lcom/android/vendorsettings/notification/NotificationSettings$H;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceCategory;)V
    .locals 1

    .prologue
    .line 311
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajr:Landroid/preference/Preference;

    .line 312
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajr:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajr:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajr:Landroid/preference/Preference;

    .line 316
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajs:Landroid/preference/Preference;

    .line 317
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajr:Landroid/preference/Preference;

    return-object v0
.end method

.method private b(Ljava/lang/String;II)Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    .line 219
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajm:Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;->a(Lcom/android/vendorsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;->cA(I)V

    .line 221
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->tD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v0
.end method

.method private b(Landroid/preference/PreferenceCategory;)V
    .locals 2

    .prologue
    .line 385
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    .line 386
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 387
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 396
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sm()V

    .line 397
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/vendorsettings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/NotificationSettings$2;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/preference/PreferenceCategory;)V
    .locals 2

    .prologue
    .line 417
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aju:Landroid/preference/TwoStatePreference;

    .line 418
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aju:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 419
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aju:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sn()V

    .line 427
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aju:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/vendorsettings/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/NotificationSettings$3;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajs:Landroid/preference/Preference;

    return-object v0
.end method

.method private d(Landroid/preference/PreferenceCategory;)V
    .locals 6

    .prologue
    const v5, 0x7f0c0a5b

    const v4, 0x7f0c0a5a

    const v3, 0x7f0c0a59

    .line 454
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DropDownPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    .line 455
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    if-nez v0, :cond_0

    .line 456
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->so()Z

    move-result v0

    .line 461
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sp()Z

    move-result v1

    .line 462
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/vendorsettings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 466
    :cond_1
    iget-boolean v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajx:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/vendorsettings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/vendorsettings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 472
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sq()V

    .line 473
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/DropDownPreference;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 474
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/NotificationSettings$4;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DropDownPreference;->a(Lcom/android/vendorsettings/cO;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 277
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "NotificationSettings"

    const-string v2, "Error loading suppressor caption"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/vendorsettings/notification/NotificationSettings;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajy:I

    return v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private ib()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajB:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method static synthetic j(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sm()V

    return-void
.end method

.method static synthetic l(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sn()V

    return-void
.end method

.method static synthetic m(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sq()V

    return-void
.end method

.method static synthetic n(Lcom/android/vendorsettings/notification/NotificationSettings;)Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajm:Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic o(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sl()V

    return-void
.end method

.method private static p(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 344
    if-nez p0, :cond_1

    .line 345
    const-string v0, "NotificationSettings"

    const-string v1, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 349
    const v0, 0x10403a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 351
    if-nez v1, :cond_2

    .line 352
    const v0, 0x10403a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_2
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 364
    :cond_3
    :goto_1
    if-eqz v7, :cond_7

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 366
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v0, v6

    .line 374
    :goto_2
    if-eqz v7, :cond_0

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 360
    :cond_4
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 374
    if-eqz v7, :cond_6

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 374
    if-eqz v7, :cond_6

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move-object v0, v6

    goto/16 :goto_0

    :cond_7
    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic p(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sk()V

    return-void
.end method

.method static synthetic q(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/android/vendorsettings/notification/NotificationSettings;->p(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private sc()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private sd()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private si()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajq:Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajz:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080303

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;->cB(I)V

    .line 233
    return-void

    .line 228
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajA:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sj()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x1080304

    goto :goto_0

    :cond_2
    const v0, 0x1080302

    goto :goto_0
.end method

.method private sj()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->uO:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajA:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sk()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 242
    iget v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajA:I

    if-ne v1, v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iput v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajA:I

    .line 244
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->si()V

    goto :goto_0
.end method

.method private sl()V
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajz:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 250
    :cond_0
    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajz:Landroid/content/ComponentName;

    .line 251
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajq:Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    if-eqz v1, :cond_1

    .line 252
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v2, 0x1040592

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->f(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->si()V

    goto :goto_0
.end method

.method private sm()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 409
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajt:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private sn()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 440
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aju:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aju:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const-string v0, "NotificationSettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private so()Z
    .locals 2

    .prologue
    .line 499
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 501
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sp()Z
    .locals 2

    .prologue
    .line 506
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 508
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sq()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sc()Z

    move-result v1

    .line 517
    iget-boolean v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajx:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sd()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 518
    :goto_1
    if-nez v1, :cond_3

    const v0, 0x7f0c0a5b

    :goto_2
    iput v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajy:I

    .line 521
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajv:Lcom/android/vendorsettings/DropDownPreference;

    iget v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DropDownPreference;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 517
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 518
    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f0c0a59

    goto :goto_2

    :cond_4
    const v0, 0x7f0c0a5a

    goto :goto_2
.end method

.method private sr()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 537
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->yQ:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/NotificationAccessSettings;->bJ(Landroid/content/Context;)I

    move-result v0

    .line 539
    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->yQ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a6d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->yQ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11000b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private ss()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x1080303

    .line 137
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->aiK:Landroid/content/pm/PackageManager;

    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->sR:Landroid/os/UserManager;

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 142
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajx:Z

    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->uO:Landroid/os/Vibrator;

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->uO:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->uO:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->uO:Landroid/os/Vibrator;

    .line 150
    :cond_0
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 152
    const-string v0, "sound"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 153
    const-string v1, "media_volume"

    const/4 v2, 0x3

    const v3, 0x10802fd

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vendorsettings/notification/NotificationSettings;->b(Ljava/lang/String;II)Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    .line 155
    const-string v1, "alarm_volume"

    const/4 v2, 0x4

    const v3, 0x10802fb

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vendorsettings/notification/NotificationSettings;->b(Ljava/lang/String;II)Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    .line 157
    iget-boolean v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "ring_volume"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v4}, Lcom/android/vendorsettings/notification/NotificationSettings;->b(Ljava/lang/String;II)Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajq:Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    .line 161
    const-string v1, "notification_volume"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->a(Landroid/preference/PreferenceCategory;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->b(Landroid/preference/PreferenceCategory;)V

    .line 171
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 173
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->c(Landroid/preference/PreferenceCategory;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->d(Landroid/preference/PreferenceCategory;)V

    .line 176
    const-string v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->yQ:Landroid/preference/Preference;

    .line 177
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sr()V

    .line 178
    const-string v0, "manage_zen_access"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajw:Landroid/preference/Preference;

    .line 179
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->ss()V

    .line 180
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sk()V

    .line 181
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sl()V

    .line 182
    return-void

    .line 163
    :cond_1
    const-string v1, "notification_volume"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v4}, Lcom/android/vendorsettings/notification/NotificationSettings;->b(Ljava/lang/String;II)Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajq:Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    .line 166
    const-string v1, "ring_volume"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajm:Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajo:Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;->aX(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajp:Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;->aX(Z)V

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 186
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sr()V

    .line 188
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->ss()V

    .line 189
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->ib()V

    .line 190
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajo:Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$SettingsObserver;->aX(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->ajp:Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/NotificationSettings$Receiver;->aX(Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->si()V

    .line 193
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/NotificationSettings;->sl()V

    .line 194
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->tD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/notification/VolumeSeekBarPreference;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings;->sR:Landroid/os/UserManager;

    const-string v3, "no_adjust_volume"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    .line 199
    sget-object v5, Lcom/android/vendorsettings/notification/NotificationSettings;->ajl:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_1

    .line 202
    if-nez v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 202
    goto :goto_2

    .line 205
    :cond_3
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x47

    return v0
.end method
