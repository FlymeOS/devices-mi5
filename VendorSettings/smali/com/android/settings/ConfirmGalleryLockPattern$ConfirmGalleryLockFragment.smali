.class public Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmGalleryLockPattern.java"


# static fields
.field private static fb:J


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private eX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 61
    return-void
.end method

.method private aF()V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->eX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x0

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabledAsUser(ZI)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 6

    .prologue
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 119
    sget-wide v2, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fb:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    sget-wide v2, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fb:J

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 120
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fb:J

    .line 122
    :cond_1
    sget-wide v0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fb:J

    return-wide v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->aF()V

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 157
    return-void
.end method

.method protected aG()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExistsAsUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->aF()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_0
    return-void
.end method

.method protected aH()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseGalleryLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected aI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "private_gallery_lock_enabled"

    return-object v0
.end method

.method protected aJ()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f0c0f2b

    return v0
.end method

.method protected aK()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_gallery_lock_pattern_visible_pattern"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aL()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected b(J)V
    .locals 1

    .prologue
    .line 127
    sput-wide p1, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fb:J

    .line 128
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 129
    return-void
.end method

.method protected b(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPatternAsUser(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method protected c(J)V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected f(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->f(Landroid/content/Intent;)V

    .line 85
    const-string v0, "confirm_purpose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->eX:I

    .line 87
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 67
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    .line 68
    return-void
.end method
