.class Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;
.super Ljava/lang/Object;
.source "UserSettings.java"


# instance fields
.field auE:Z

.field auF:Z

.field auG:Z

.field auH:Z

.field auI:Z

.field mEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1046
    iput-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auE:Z

    .line 1047
    iput-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auF:Z

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cl(Landroid/content/Context;)Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1053
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1054
    new-instance v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    invoke-direct {v4}, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;-><init>()V

    .line 1055
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    :cond_0
    iput-boolean v2, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    move-object v0, v4

    .line 1079
    :goto_0
    return-object v0

    .line 1060
    :cond_1
    const-string v1, "no_add_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    .line 1062
    iget-boolean v1, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    .line 1065
    :cond_2
    iput-boolean v2, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auE:Z

    .line 1067
    :cond_3
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1070
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1071
    :cond_4
    iput-boolean v2, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auF:Z

    .line 1073
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1074
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    .line 1076
    iget-boolean v0, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7

    :cond_6
    move v0, v3

    .line 1078
    :goto_1
    iget-boolean v1, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    if-nez v1, :cond_8

    if-nez v5, :cond_8

    if-eqz v0, :cond_8

    :goto_2
    iput-boolean v3, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auI:Z

    move-object v0, v4

    .line 1079
    goto :goto_0

    :cond_7
    move v0, v2

    .line 1076
    goto :goto_1

    :cond_8
    move v3, v2

    .line 1078
    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
