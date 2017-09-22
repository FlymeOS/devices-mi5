.class public Lcom/android/vendorsettings/cloudbackup/SettingsCloudBackupService;
.super Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;
.source "SettingsCloudBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/android/vendorsettings/cloudbackup/f;

    invoke-direct {v0}, Lcom/android/vendorsettings/cloudbackup/f;-><init>()V

    return-object v0
.end method
