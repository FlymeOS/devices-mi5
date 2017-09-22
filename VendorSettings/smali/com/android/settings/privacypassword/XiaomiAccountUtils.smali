.class public Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils;
.super Ljava/lang/Object;
.source "XiaomiAccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string v0, "com.xiaomi"

    .line 41
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    const-string v2, "passportapi"

    new-instance v6, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;

    invoke-direct {v6, p2, p0}, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;Landroid/app/Activity;)V

    move-object v4, p1

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 59
    return-void
.end method

.method public static cc(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.xiaomi"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 25
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 26
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 31
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static cd(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils;->cc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ce(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils;->cc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->h([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
