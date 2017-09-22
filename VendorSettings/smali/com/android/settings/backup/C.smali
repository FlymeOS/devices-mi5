.class Lcom/android/settings/backup/C;
.super Ljava/lang/Object;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic Ql:Lcom/android/settings/backup/ToggleBackupSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/backup/C;->Ql:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    check-cast p2, Ljava/lang/Boolean;

    .line 157
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/backup/C;->Ql:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-static {v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    .line 162
    :goto_0
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/C;->Ql:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-static {v0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V

    goto :goto_0
.end method
