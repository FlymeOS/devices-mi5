.class public Lcom/android/settings/notification/OtherSoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ajC:Lcom/android/settings/search/a;

.field private static final ajT:Lcom/android/settings/notification/SettingPref;

.field private static final ajU:Lcom/android/settings/notification/SettingPref;

.field private static final ajV:Lcom/android/settings/notification/SettingPref;

.field private static final ajW:Lcom/android/settings/notification/SettingPref;

.field private static final ajX:Lcom/android/settings/notification/SettingPref;

.field private static final ajY:Lcom/android/settings/notification/SettingPref;

.field private static final ajZ:Lcom/android/settings/notification/SettingPref;

.field private static final aka:Lcom/android/settings/notification/SettingPref;

.field private static final akb:[Lcom/android/settings/notification/SettingPref;


# instance fields
.field private final akc:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 70
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->ajT:Lcom/android/settings/notification/SettingPref;

    .line 78
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->ajU:Lcom/android/settings/notification/SettingPref;

    .line 81
    new-instance v3, Lcom/android/settings/notification/SettingPref;

    const-string v5, "charging_sounds"

    const-string v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->ajV:Lcom/android/settings/notification/SettingPref;

    .line 84
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->ajW:Lcom/android/settings/notification/SettingPref;

    .line 92
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->ajX:Lcom/android/settings/notification/SettingPref;

    .line 106
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$4;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->ajY:Lcom/android/settings/notification/SettingPref;

    .line 114
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->ajZ:Lcom/android/settings/notification/SettingPref;

    .line 135
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->aka:Lcom/android/settings/notification/SettingPref;

    .line 159
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->ajT:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->ajU:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->ajV:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->ajW:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->ajX:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->ajY:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->ajZ:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->aka:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->akb:[Lcom/android/settings/notification/SettingPref;

    .line 255
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->ajC:Lcom/android/settings/search/a;

    return-void

    .line 114
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 135
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 170
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->akc:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    .line 225
    return-void
.end method

.method static synthetic R(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->bL(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static bK(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static bL(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 219
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 220
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic bM(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->bK(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic su()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->akb:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f0c09a9

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-class v0, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 197
    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->akb:[Lcom/android/settings/notification/SettingPref;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 198
    invoke-virtual {v3, p0}, Lcom/android/settings/notification/SettingPref;->c(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->akc:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->aX(Z)V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->akc:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->aX(Z)V

    .line 206
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x49

    return v0
.end method
