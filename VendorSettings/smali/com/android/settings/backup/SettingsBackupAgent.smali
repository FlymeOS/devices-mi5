.class public Lcom/android/settings/backup/SettingsBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "SettingsBackupAgent.java"


# instance fields
.field private Qe:Lcom/android/settings/backup/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method

.method private bb(I)V
    .locals 1

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 24
    :pswitch_0
    new-instance v0, Lcom/android/settings/backup/t;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/t;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    goto :goto_0

    .line 27
    :pswitch_1
    new-instance v0, Lcom/android/settings/backup/D;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/D;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    goto :goto_0

    .line 30
    :pswitch_2
    new-instance v0, Lcom/android/settings/backup/a;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/a;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getVersion(I)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingsBackupAgent;->bb(I)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    invoke-virtual {v0}, Lcom/android/settings/backup/g;->lC()I

    move-result v0

    return v0
.end method

.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/backup/g;->a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingsBackupAgent;->bb(I)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/backup/g;->a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    invoke-virtual {v0, p1}, Lcom/android/settings/backup/g;->a(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    invoke-virtual {v0, p1}, Lcom/android/settings/backup/g;->a(Lmiui/app/backup/BackupMeta;)I

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->Qe:Lcom/android/settings/backup/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/backup/g;->a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result v0

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
