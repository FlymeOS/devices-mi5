.class Lcom/android/settings/eT;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/16 v2, 0x69

    .line 113
    const-string v0, "change_password"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    check-cast p2, Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 116
    const-string v1, "facial"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const v0, 0x8000

    iget-object v1, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    .line 139
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_1
    const-string v1, "pattern"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    if-nez v0, :cond_2

    .line 121
    const/high16 v0, 0x10000

    iget-object v1, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v1, "numerical"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    if-nez v0, :cond_4

    .line 127
    const/high16 v0, 0x20000

    iget-object v1, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 131
    :cond_5
    const-string v1, "mixed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    if-nez v0, :cond_6

    .line 133
    const/high16 v0, 0x40000

    iget-object v1, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/android/settings/eT;->sk:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiSecurityChooseUnlock;->c(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0
.end method
