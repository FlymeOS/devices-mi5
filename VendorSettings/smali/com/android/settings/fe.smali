.class Lcom/android/vendorsettings/fe;
.super Ljava/lang/Object;
.source "MiuiSecurityFingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic sp:Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/vendorsettings/fe;->sp:Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    const-string v2, "add_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/fe;->sp:Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->a(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V

    .line 173
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/fe;->sp:Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-static {v2, v1, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->a(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
