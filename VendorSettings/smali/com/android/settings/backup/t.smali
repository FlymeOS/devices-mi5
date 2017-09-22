.class public Lcom/android/vendorsettings/backup/t;
.super Lcom/android/vendorsettings/backup/g;
.source "SettingsAgent.java"


# instance fields
.field private final PZ:I

.field private Qa:Lcom/android/vendorsettings/backup/v;

.field private Qb:Lcom/android/vendorsettings/backup/w;


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/g;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/t;->PZ:I

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v1, 0x2

    packed-switch v1, :pswitch_data_0

    .line 67
    const/4 v0, 0x4

    .line 70
    :goto_0
    return v0

    .line 58
    :pswitch_0
    new-instance v1, Lcom/android/vendorsettings/backup/v;

    invoke-direct {v1, p0, v3}, Lcom/android/vendorsettings/backup/v;-><init>(Lcom/android/vendorsettings/backup/t;Lcom/android/vendorsettings/backup/u;)V

    iput-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    .line 59
    iget-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    invoke-virtual {v1, p1}, Lcom/android/vendorsettings/backup/v;->a(Landroid/os/ParcelFileDescriptor;)I

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v1, "Backup:SettingsAgent"

    const-string v2, "full backup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lcom/android/vendorsettings/backup/w;

    invoke-direct {v1, p0, v3}, Lcom/android/vendorsettings/backup/w;-><init>(Lcom/android/vendorsettings/backup/t;Lcom/android/vendorsettings/backup/u;)V

    iput-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    .line 64
    iget-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    invoke-virtual {v1, p1}, Lcom/android/vendorsettings/backup/w;->a(Landroid/os/ParcelFileDescriptor;)I

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 75
    const/4 v0, 0x0

    .line 76
    const/4 v2, 0x2

    packed-switch v2, :pswitch_data_0

    .line 91
    const/4 v0, 0x4

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 78
    :pswitch_0
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    if-eqz v2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    invoke-virtual {v1, p1, p2}, Lcom/android/vendorsettings/backup/v;->a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    if-nez v2, :cond_0

    move v0, v1

    .line 89
    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lmiui/app/backup/BackupMeta;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 143
    const/4 v0, 0x0

    .line 144
    iget v2, p1, Lmiui/app/backup/BackupMeta;->version:I

    packed-switch v2, :pswitch_data_0

    .line 159
    const/4 v0, 0x4

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    if-eqz v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    invoke-virtual {v1}, Lcom/android/vendorsettings/backup/v;->mW()I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    if-nez v2, :cond_0

    move v0, v1

    .line 157
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    iget v1, p1, Lmiui/app/backup/BackupMeta;->version:I

    packed-switch v1, :pswitch_data_0

    .line 111
    const/4 v0, 0x4

    .line 114
    :goto_0
    return v0

    .line 102
    :pswitch_0
    new-instance v1, Lcom/android/vendorsettings/backup/v;

    invoke-direct {v1, p0, v3}, Lcom/android/vendorsettings/backup/v;-><init>(Lcom/android/vendorsettings/backup/t;Lcom/android/vendorsettings/backup/u;)V

    iput-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    .line 103
    iget-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    invoke-virtual {v1, p2}, Lcom/android/vendorsettings/backup/v;->b(Landroid/os/ParcelFileDescriptor;)I

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v1, "Backup:SettingsAgent"

    const-string v2, "restore data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Lcom/android/vendorsettings/backup/w;

    invoke-direct {v1, p0, v3}, Lcom/android/vendorsettings/backup/w;-><init>(Lcom/android/vendorsettings/backup/t;Lcom/android/vendorsettings/backup/u;)V

    iput-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    .line 108
    iget-object v1, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    invoke-virtual {v1, p2}, Lcom/android/vendorsettings/backup/w;->b(Landroid/os/ParcelFileDescriptor;)I

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 119
    const/4 v0, 0x0

    .line 120
    iget v2, p1, Lmiui/app/backup/BackupMeta;->version:I

    packed-switch v2, :pswitch_data_0

    .line 135
    const/4 v0, 0x4

    .line 138
    :goto_0
    return v0

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qa:Lcom/android/vendorsettings/backup/v;

    invoke-virtual {v2, p2, p3}, Lcom/android/vendorsettings/backup/v;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    .line 128
    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/android/vendorsettings/backup/t;->Qb:Lcom/android/vendorsettings/backup/w;

    if-eqz v2, :cond_1

    .line 129
    invoke-static {p3, p2}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 125
    goto :goto_1

    :cond_1
    move v0, v1

    .line 133
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lC()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method
