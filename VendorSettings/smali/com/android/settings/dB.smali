.class public Lcom/android/settings/dB;
.super Ljava/lang/Object;
.source "KeyguardSettingsCompatHelper.java"


# direct methods
.method public static a(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/security/MiuiLockPatternUtils;II)J
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/settings/fy;->c(Landroid/app/Fragment;)V

    .line 175
    return-void
.end method

.method public static a(Landroid/security/KeyStore;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    const-string v0, "default_password"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->onUserPasswordChanged(Ljava/lang/String;)Z

    .line 183
    return-void
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;IZ)V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 106
    return-void
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;IIZ)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 110
    return-void
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;IZ)V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I)V

    .line 161
    return-void
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 50
    return-void
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;ZI)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 54
    return-void
.end method

.method public static a(Lcom/android/settings/LockPatternView;I)V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternView;->P(I)V

    .line 220
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/settings/cZ;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/cZ;->a(Ljava/lang/String;Lcom/android/settings/de;)V

    .line 224
    return-void
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "checkPassword"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z
    .locals 3

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "checkPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)[B
    .locals 4

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "VerifyPassword"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JI)[B
    .locals 4

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "verifyPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 178
    invoke-static {p0}, Lcom/android/settings/fy;->d(Landroid/app/Fragment;)V

    .line 179
    return-void
.end method

.method public static b(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 58
    return-void
.end method

.method public static b(Lcom/android/internal/widget/LockPatternUtils;ZI)V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 114
    return-void
.end method

.method public static c(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 102
    return-void
.end method

.method public static c(Lcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static d(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public static d(Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public static d(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 200
    return-void
.end method

.method public static e(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v0

    return v0
.end method

.method public static e(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static f(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v0

    return v0
.end method

.method public static f(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static g(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v0

    return v0
.end method

.method public static g(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    return v0
.end method

.method public static h(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v0

    return v0
.end method

.method public static h(Lcom/android/internal/widget/LockPatternUtils;I)J
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v0

    return v0
.end method

.method public static i(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public static j(Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v0

    return v0
.end method

.method public static k(Lcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v0

    return v0
.end method

.method public static v(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 227
    invoke-static {p0}, Lcom/android/settings/iC;->v(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
