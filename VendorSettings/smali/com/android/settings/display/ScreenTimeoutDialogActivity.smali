.class public Lcom/android/settings/display/ScreenTimeoutDialogActivity;
.super Landroid/app/Activity;
.source "ScreenTimeoutDialogActivity.java"


# instance fields
.field private ZR:[Ljava/lang/CharSequence;

.field private ZS:[Ljava/lang/CharSequence;

.field private ZT:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private fO()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 47
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    move-wide v2, v0

    .line 48
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 69
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v2, v4

    .line 47
    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZR:[Ljava/lang/CharSequence;

    .line 52
    iget-object v4, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v0, 0x0

    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_4

    .line 56
    aget-object v7, v4, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 57
    cmp-long v7, v8, v2

    if-gtz v7, :cond_3

    .line 58
    aget-object v7, v1, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v4

    if-eq v0, v1, :cond_0

    .line 63
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZR:[Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    .line 65
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZT:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 66
    iput-wide v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZT:J

    goto :goto_1
.end method

.method private pO()V
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZT:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    const v2, 0x7f0c03d3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 75
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZR:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/display/M;

    invoke-direct {v3, p0}, Lcom/android/settings/display/M;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settings/display/N;

    invoke-direct {v2, p0}, Lcom/android/settings/display/N;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    new-instance v0, Lcom/android/settings/display/O;

    invoke-direct {v0, p0}, Lcom/android/settings/display/O;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 107
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 110
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :goto_1
    return v0

    .line 111
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZR:[Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZS:[Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->ZT:J

    .line 34
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->fO()V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->pO()V

    .line 36
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->setVisible(Z)V

    .line 42
    return-void
.end method
