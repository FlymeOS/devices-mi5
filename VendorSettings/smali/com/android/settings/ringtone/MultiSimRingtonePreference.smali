.class public Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;
.super Lmiui/preference/ValuePreference;
.source "MultiSimRingtonePreference.java"


# instance fields
.field private aoA:I

.field private final aox:I

.field private final aoy:I

.field private aoz:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v2, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aox:I

    .line 33
    iput v3, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoy:I

    .line 35
    new-instance v0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference$1;-><init>(Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference$2;-><init>(Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoz:Ljava/lang/Runnable;

    .line 55
    iput v2, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    .line 59
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->setShowRightArrow(Z)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tQ()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tP()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tQ()Landroid/util/Pair;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 119
    iget v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0a52

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 121
    :cond_0
    iget v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0d56

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 123
    :cond_1
    iget v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0d55

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tU()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private tR()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tS()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tT()Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tU()I
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0
.end method


# virtual methods
.method public cG(I)V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    if-eq v0, p1, :cond_0

    .line 72
    iput p1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    .line 73
    invoke-direct {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->tP()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoz:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Lmiui/preference/ValuePreference;->onBindView(Landroid/view/View;)V

    .line 65
    sget v0, Lmiui/R$id;->value_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 67
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    return-void
.end method

.method onSaveRingtone(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    invoke-static {v0, v1, p1}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 106
    return-void
.end method

.method tO()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget v1, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    sparse-switch v1, :sswitch_data_0

    .line 98
    :goto_0
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/ringtone/MultiSimRingtonePreference;->aoA:I

    invoke-static {v2, v3}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    return-object v0

    .line 84
    :sswitch_0
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 93
    :sswitch_1
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method
