.class public Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;
.super Ljava/lang/Object;
.source "PrivacyPasswordManager.java"


# static fields
.field private static aoq:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 45
    return-void
.end method

.method public static declared-synchronized bW(Landroid/content/Context;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->aoq:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->aoq:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->aoq:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public ba(Z)V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "fingerprint_apply_to_privacy_password"

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bk(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "privacy_add_account_md5"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->h([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tG()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method public tH()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "privacy_password_bind_xiaomi_account"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "privacy_add_account_md5"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->h([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "privacy_password_bind_xiaomi_account"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "privacy_add_account_md5"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tI()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "fingerprint_apply_to_privacy_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
