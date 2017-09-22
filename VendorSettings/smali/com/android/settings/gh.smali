.class Lcom/android/vendorsettings/gh;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic vV:Lcom/android/vendorsettings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/vendorsettings/gh;->vV:Lcom/android/vendorsettings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 151
    iget-object v3, p0, Lcom/android/vendorsettings/gh;->vV:Lcom/android/vendorsettings/PrivacySettings;

    invoke-static {v3}, Lcom/android/vendorsettings/PrivacySettings;->a(Lcom/android/vendorsettings/PrivacySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/android/vendorsettings/gh;->vV:Lcom/android/vendorsettings/PrivacySettings;

    invoke-static {v3}, Lcom/android/vendorsettings/PrivacySettings;->b(Lcom/android/vendorsettings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v3

    .line 156
    iget-object v3, p0, Lcom/android/vendorsettings/gh;->vV:Lcom/android/vendorsettings/PrivacySettings;

    invoke-static {v3}, Lcom/android/vendorsettings/PrivacySettings;->a(Lcom/android/vendorsettings/PrivacySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
